HOMEPAGE = "https://github.com/WebPlatformForEmbedded"
SECTION = "wpe"
SUMMARY = "WPE Framework TV Platform"
LICENSE = "CLOSED"

DEPENDS = "wpeframework broadcom-refsw"

SRC_URI = "git://git@github.com/WebPlatformForEmbedded/WPETVPlatformBCM.git;protocol=ssh;branch=master \
           file://0001-Remove-refsw-from-include-path.patch \
"

SRCREV = "83cd315a5373730abdeda7e4c06e2bd45ff6390e"

PV = "3.0+gitr${SRCPV}"
S = "${WORKDIR}/git"

TOOLCHAIN = "gcc"

inherit cmake pkgconfig

PACKAGECONFIG ??= ""
PACKAGECONFIG[debug]            = "-DCMAKE_BUILD_TYPE=Debug,-DCMAKE_BUILD_TYPE=Release,"

FILES_SOLIBSDEV = ""
FILES_${PN} += "${libdir}/wpeframework/plugins/*.so ${datadir}/WPEFramework/TVControl/*"
