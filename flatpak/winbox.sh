#!/bin/bash
export WINEDLLPATH=/app/dlls/lib32:/app/dlls/lib
export WINEPREFIX=/var/data/wine
export WINE_C_DRIVE="${WINEPREFIX}/drive_c"
export WINBOX_RUN_CMD="/app/${WINE_C_DRIVE}/winbox64.exe"

env wine "${WINBOX_RUN_CMD}"
