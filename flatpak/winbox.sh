#!/bin/bash
export WINEDLLPATH=/app/dlls/lib32:/app/dlls/lib
export WINEPREFIX=/var/data/wine
export WINE="/app/bin/wine"
export WINE_C_DRIVE="${WINEPREFIX}/drive_c"
export WINBOX_DOWNLOAD_URL='https://download.mikrotik.com/winbox/3.37/winbox64.exe'
export WINBOX_RUN_CMD="${WINE_C_DRIVE}/winbox.exe"

if [ ! -f "${WINBOX_RUN_CMD}" ]; then
    wget -O "${WINBOX_RUN_CMD}" "${WINBOX_DOWNLOAD_URL}"
fi

"${WINE}" "${WINBOX_RUN_CMD}"
