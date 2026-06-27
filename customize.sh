#!/system/bin/sh

ui_print "**********************************************"
ui_print "    ⚡ AXERON TURBO PERFORMANCE ENGINE ⚡     "
ui_print "**********************************************"

if [ "$AXERON" = "true" ]; then
    ui_print "- Environment verified: AxManager Server v$AXERONVER"
else
    abort "- Error: This module can only be installed via AxManager!"
fi

ui_print "- Target Device Architecture: $ARCH"
if [ "$IS64BIT" = "true" ]; then
    ui_print "- 64-bit device optimized profile selected."
fi

ui_print "- Configuring execution states..."
set_perm "$MODPATH/service.sh" 0 0 0755
set_perm "$MODPATH/action.sh" 0 0 0755

ui_print "----------------------------------------------"
ui_print "  Installation completed! Click REIGNITE /    "
ui_print "  HOT RESTART to trigger execution scripts.   "
ui_print "**********************************************"
