AUTOMOUNT=true
SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=false
print_modname() {
  ui_print "********************************"
  ui_print "		Notch notification fix  "
  ui_print "		by Elon Cyborg			"
  ui_print "		paypal.me/eloncyborg	"
  ui_print "********************************"
}
on_install() {
  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}
set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
}
