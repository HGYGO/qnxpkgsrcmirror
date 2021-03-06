/*
 * Copyright (c) 1999-2003 by The XFree86 Project, Inc.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
 * THE COPYRIGHT HOLDER(S) OR AUTHOR(S) BE LIABLE FOR ANY CLAIM, DAMAGES OR
 * OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
 * ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
 * OTHER DEALINGS IN THE SOFTWARE.
 *
 * Except as contained in this notice, the name of the copyright holder(s)
 * and author(s) shall not be used in advertising or otherwise to promote
 * the sale, use or other dealings in this Software without prior written
 * authorization from the copyright holder(s) and author(s).
 */

#ifdef HAVE_XORG_CONFIG_H
#include <xorg-config.h>
#endif

#include <X11/X.h>
#include "xf86.h"
#include "xf86Priv.h"
#include "xf86_OSlib.h"
#include "xf86Xinput.h"
#include "xf86OSmouse.h"
#include "xisb.h"
#include "mipointer.h"

#include <sys/dcmd_input.h>

static int
SupportedInterfaces(void)
{
    return MSE_SERIAL | MSE_BUS | MSE_PS2 | MSE_XPS2 | MSE_AUTO;
}

/* Names of protocols that are handled internally here. */
static const char *internalNames[] = {
	"hid",
	NULL
};

static const char **
BuiltinNames(void)
{
    return internalNames;
}

static Bool
CheckProtocol(const char *protocol)
{
    int i;

    for (i = 0; internalNames[i]; i++)
	if (xf86NameCmp(protocol, internalNames[i]) == 0)
	    return TRUE;
    return FALSE;
}

static const char *
DefaultProtocol(void)
{
	return "hid";
}

static const char *
SetupAuto(InputInfoPtr pInfo, int *protoPara)
{
    xf86MsgVerb(X_INFO, 3, "%s: SetupAuto: protocol is %s\n",
		pInfo->name, "wsmouse");
    return "hid";
}

static void
hidReadInput(InputInfoPtr pInfo)
{
    MouseDevPtr pMse;
    struct _mouse_packet mpkt;
    int n; 
    int buttons;

    pMse = pInfo->private;
    buttons = pMse->lastButtons;
	n = read(pInfo->fd, &mpkt, sizeof(mpkt));
	if (n <= 0)
	  return;
			 
	/* right */
	if (mpkt.hdr.buttons & 1)
	  buttons |= 4;
	else
	  buttons &= ~4;
	
	/* middle */
	if (mpkt.hdr.buttons & 2)
	  buttons |= 2;
	else
	  buttons &= ~2;
	
	/* left */
	if (mpkt.hdr.buttons & 4)
	  buttons |= 1;
	else
	  buttons &= ~1;

	/* dy is in opposed direction */
	mpkt.dy = -mpkt.dy;
	
	pMse->PostEvent(pInfo, buttons, mpkt.dx, mpkt.dy, mpkt.dz, 0);
    return;
}

/* This function is called when the protocol is "hid". */
static Bool
hidPreInit(InputInfoPtr pInfo, const char *protocol, int flags)
{
    MouseDevPtr pMse = pInfo->private;
    char *devname;
	
    pMse->protocol = protocol;
    xf86Msg(X_CONFIG, "%s: Protocol: %s\n", pInfo->name, protocol);

    /* Collect the options, and process the common options. */
    xf86CollectInputOptions(pInfo, NULL, NULL);
    xf86ProcessCommonOptions(pInfo, pInfo->options);
	
    /* device name */
    devname = xf86CheckStrOption(pInfo->options, "device", NULL);
    if (!devname) {
	devname = "/dev/devi/mouse0";
    }
	
    if ((pInfo->fd = open(devname, O_RDONLY)) == -1) {
	xf86Msg(X_ERROR, "%s: cannot open '%s'\n", pInfo->name, devname);
	return FALSE;
    }
	
    /* Process common mouse options (like Emulate3Buttons, etc). */
    pMse->CommonOptions(pInfo);

    /* Setup the local procs. */
    pInfo->read_input = hidReadInput;
    pInfo->flags |= XI86_CONFIGURED;
	
    return TRUE;
}

static Bool
ntoMousePreInit(InputInfoPtr pInfo, const char *protocol, int flags)
{
    /* The protocol is guaranteed to be one of the internalNames[] */
    if (xf86NameCmp(protocol, "hid") == 0) {
		return hidPreInit(pInfo, protocol, flags);
    }
    return FALSE;
}    

_X_EXPORT OSMouseInfoPtr
xf86OSMouseInit(int flags)
{
    OSMouseInfoPtr p;

    p = xcalloc(sizeof(OSMouseInfoRec), 1);
    if (!p)
	return NULL;
    p->SupportedInterfaces = SupportedInterfaces;
    p->BuiltinNames = BuiltinNames;
    p->DefaultProtocol = DefaultProtocol;
    p->CheckProtocol = CheckProtocol;
    p->SetupAuto = SetupAuto;
//    p->SetMiscRes = SetSysMouseRes;
//    p->FindDevice = FindDevice;
    p->PreInit = ntoMousePreInit;
    return p;
}
