# $FreeBSD$

PORTNAME=	geliunlock
PORTVERSION=	0.85
CATEGORIES=	sysutils

MAINTAINER=	clint@clintarmstrong.net
COMMENT=	Automatically unlocks geli partitions using keys on remote servers

LICENSE=	BSD2CLAUSE

USE_GITHUB=	yes
GH_ACCOUNT=	clinta
GH_COMMIT=	c8685a8
GH_PROJECT=	geliUnlocker
GH_TAGNAME=	${GH_COMMIT}

PLIST_FILES=	etc/rc.d/unlockgeli

.include <bsd.port.options.mk>

do-build: # nothing

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/unlockgeli \
	    ${STAGEDIR}${PREFIX}/etc/rc.d/unlockgeli

post-install: # nothing

.include <bsd.port.mk>
