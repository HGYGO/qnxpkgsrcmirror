/*	$NetBSD: lstFindFrom.c,v 1.1 2005/10/31 21:52:26 reed Exp $	*/

/*
 * Copyright (c) 1988, 1989, 1990, 1993
 *	The Regents of the University of California.  All rights reserved.
 *
 * This code is derived from software contributed to Berkeley by
 * Adam de Boor.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */

#ifndef MAKE_NATIVE
static char rcsid[] = "$NetBSD: lstFindFrom.c,v 1.1 2005/10/31 21:52:26 reed Exp $";
#else
#include <sys/cdefs.h>
#ifndef lint
#if 0
static char sccsid[] = "@(#)lstFindFrom.c	8.1 (Berkeley) 6/6/93";
#else
__RCSID("$NetBSD: lstFindFrom.c,v 1.1 2005/10/31 21:52:26 reed Exp $");
#endif
#endif /* not lint */
#endif

/*-
 * LstFindFrom.c --
 *	Find a node on a list from a given starting point. Used by Lst_Find.
 */

#include	"lstInt.h"

/*-
 *-----------------------------------------------------------------------
 * Lst_FindFrom --
 *	Search for a node starting and ending with the given one on the
 *	given list using the passed datum and comparison function to
 *	determine when it has been found.
 *
 * Results:
 *	The found node or NILLNODE
 *
 * Side Effects:
 *	None.
 *
 *-----------------------------------------------------------------------
 */
LstNode
Lst_FindFrom(Lst l, LstNode ln, ClientData d,
	     int (*cProc)(ClientData, ClientData))
{
    ListNode	tln;
    Boolean		found = FALSE;

    if (!LstValid (l) || LstIsEmpty (l) || !LstNodeValid (ln, l)) {
	return (NILLNODE);
    }

    tln = (ListNode)ln;

    do {
	if ((*cProc) (tln->datum, d) == 0) {
	    found = TRUE;
	    break;
	} else {
	    tln = tln->nextPtr;
	}
    } while (tln != (ListNode)ln && tln != NilListNode);

    if (found) {
	return ((LstNode)tln);
    } else {
	return (NILLNODE);
    }
}

