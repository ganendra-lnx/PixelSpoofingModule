ui_print "╔════════════════════════════╗"
ui_print "║       PIXEL SPOOF PRO 🔥                 |
ui_print "║   Spoofing to Pixel 8Pro/7Pro               |
ui_print "╚════════════════════════════╝"
ui_print ""

API=$(getprop ro.build.version.sdk)
ui_print "→ Detected SDK: $API"

if [ "$API" -ge 34 ]; then
  MODEL="Pixel 8 Pro"
  DEVICE="husky"
  FINGERPRINT="google/husky/husky:14/AP1A.240305.019/12345678:user/release-keys"
elif [ "$API" -eq 33 ]; then
  MODEL="Pixel 7 Pro"
  DEVICE="cheetah"
  FINGERPRINT="google/cheetah/cheetah:13/TQ3A.230805.001/12345678:user/release-keys"
else
  MODEL="Pixel 6"
  DEVICE="oriole"
  FINGERPRINT="google/oriole/oriole:12/SP1A.210812.015/12345678:user/release-keys"
fi

ui_print "→ Applying spoof: $MODEL"

resetprop ro.product.model "$MODEL"
resetprop ro.product.brand "google"
resetprop ro.product.name "$DEVICE"
resetprop ro.product.device "$DEVICE"
resetprop ro.product.manufacturer "Google"
resetprop ro.build.product "$DEVICE"
resetprop ro.build.fingerprint "$FINGERPRINT"

ui_print ""
ui_print " Spoof applied successfully!"
ui_print " Reboot required!"