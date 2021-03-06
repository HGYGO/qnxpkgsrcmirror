/*	$NetBSD: main.c,v 1.22 2009/02/02 12:35:01 joerg Exp $	*/

#if HAVE_CONFIG_H
#include "config.h"
#endif
#include <nbcompat.h>
#if HAVE_SYS_CDEFS_H
#include <sys/cdefs.h>
#endif
__RCSID("$NetBSD: main.c,v 1.22 2009/02/02 12:35:01 joerg Exp $");

/*
 *
 * FreeBSD install - a package for the installation and maintainance
 * of non-core utilities.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * Jordan K. Hubbard
 * 18 July 1993
 *
 * This is the delete module.
 *
 */

#if HAVE_ERR_H
#include <err.h>
#endif
#include "lib.h"
#include "delete.h"

static char Options[] = "DdFfhK:NnOp:P:RrVv";

char   *Destdir = NULL;
char   *Pkgdb = NULL;
char   *Prefix = NULL;
char   *ProgramPath = NULL;
Boolean NoDeleteFiles = FALSE;
Boolean NoDeInstall = FALSE;
Boolean CleanDirs = FALSE;
Boolean File2Pkg = FALSE;
Boolean Recurse_up = FALSE;
Boolean Recurse_down = FALSE;
Boolean OnlyDeleteFromPkgDB = FALSE;
lpkg_head_t pkgs;

static void
usage(void)
{
	fprintf(stderr, "usage: pkg_delete [-DdFfNnORrVv] [-K pkg_dbdir] [-P destdir] [-p prefix] pkg-name ...\n");
	exit(1);
}

int
main(int argc, char **argv)
{
	lpkg_t *lpp;
	int	ex;
	int     ch;

	setprogname(argv[0]);

	ProgramPath = argv[0];

	while ((ch = getopt(argc, argv, Options)) != -1)
		switch (ch) {
		case 'D':
			NoDeInstall = TRUE;
			break;

		case 'd':
			CleanDirs = TRUE;
			break;

		case 'F':
			File2Pkg = TRUE;
			break;

		case 'f':
			Force += 1;
			break;

		case 'K':
			Pkgdb = xstrdup(optarg);
			break;

		case 'N':
			NoDeleteFiles = TRUE;
			NoDeInstall = TRUE;
			break;

		case 'n':
			Fake = TRUE;
			Verbose = TRUE;
			break;

		case 'O':
			OnlyDeleteFromPkgDB = TRUE;
			break;

		case 'P':
			Destdir = optarg;
			break;

		case 'p':
			Prefix = optarg;
			break;

		case 'R':
			Recurse_down = TRUE;
			break;

		case 'r':
			Recurse_up = TRUE;
			break;

		case 'V':
			show_version();
			/* NOTREACHED */

		case 'v':
			Verbose = TRUE;
			break;

		case 'h':
		case '?':
		default:
			usage();
			break;
		}

	argc -= optind;
	argv += optind;

	TAILQ_INIT(&pkgs);

	if (Pkgdb == NULL)
		Pkgdb = xstrdup(_pkgdb_getPKGDB_DIR());

	if (Destdir != NULL) {
		char *pkgdbdir;

		pkgdbdir = xasprintf("%s/%s", Destdir, Pkgdb);
		_pkgdb_setPKGDB_DIR(pkgdbdir);
		free(pkgdbdir);
	} else {
		_pkgdb_setPKGDB_DIR(Pkgdb);
	}

	/* Get all the remaining package names, if any */
	if (File2Pkg && !pkgdb_open(ReadOnly)) {
		err(EXIT_FAILURE, "cannot open pkgdb");
	}

	/* Get all the remaining package names, if any */
	for ( ; *argv ; argv++) {
		/* pkgdb: if -F flag given, don't add pkgnames to pkgs but
		 * rather resolve the given filenames to pkgnames using
		 * pkgdb_retrieve, then add these. */
		if (File2Pkg) {
			char   *s;

			if ((s = pkgdb_retrieve(*argv)) == NULL) {
				errx(EXIT_FAILURE, "No matching pkg for %s in pkgdb.", *argv);
			}
			lpp = alloc_lpkg(s);
			TAILQ_INSERT_TAIL(&pkgs, lpp, lp_link);
		} else if (ispkgpattern(*argv)) {
			switch (add_installed_pkgs_by_pattern(*argv, &pkgs)) {
			case 0:
				errx(EXIT_FAILURE, "No matching pkg for %s.", *argv);
			case -1:
				errx(EXIT_FAILURE, "error expanding '%s' ('%s' nonexistent?)", *argv, _pkgdb_getPKGDB_DIR());
			}
		} else {
			if (**argv == '/' && strncmp(*argv, Pkgdb, strlen(Pkgdb)) == 0) {
				*argv += strlen(Pkgdb) + 1;
				if ((*argv)[strlen(*argv) - 1] == '/') {
					(*argv)[strlen(*argv) - 1] = 0;
				}
			}
			lpp = alloc_lpkg(*argv);
			TAILQ_INSERT_TAIL(&pkgs, lpp, lp_link);
		}
	}

	if (File2Pkg) {
		pkgdb_close();
	}

	/* If no packages, yelp */
	if (TAILQ_FIRST(&pkgs) == NULL) {
		warnx("missing package name(s)");
		usage();
	}

	if (OnlyDeleteFromPkgDB) {
		/* Only delete the given packages' files from pkgdb, do not
		 * touch the pkg itself. Used by "make reinstall" in
		 * bsd.pkg.mk */
		char	cachename[MaxPathSize];

		if (!pkgdb_open(ReadWrite)) {
			err(EXIT_FAILURE, "cannot open %s", _pkgdb_getPKGDB_FILE(cachename, sizeof(cachename)));
		}
		ex = EXIT_SUCCESS;
		for (lpp = TAILQ_FIRST(&pkgs); lpp ; lpp = TAILQ_NEXT(lpp, lp_link)) {
			if (!pkgdb_remove_pkg(lpp->lp_name)) {
				ex = EXIT_FAILURE;
			}
		}
		pkgdb_close();
		return ex;
	}
	if ((ex = pkg_perform(&pkgs)) != 0) {
		if (Verbose) {
			warnx("%d package deletion(s) failed", ex);
		}
		return EXIT_FAILURE;
	}
	return EXIT_SUCCESS;
}
