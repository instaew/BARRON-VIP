#!/system/bin/sh

# نسخ PUBG المدعومة
PKGS=(
  "com.tencent.ig"            # Global
  "com.tencent.igce"
  "com.pubg.krmobile"         # Korea
  "com.vng.pubgmobile"        # Vietnam
  "com.rekoo.pubgm"           # Taiwan
  "com.tencent.pubg"          # China
  "com.pubg.imobile"  # China HD
)

echo "🧑‍💻BARRON VIP👻"
unlock() {
  DIR="$1"
  if [ -d "$DIR" ]; then
    echo "[✔] unlocking: $DIR"
    chattr -i -R "$DIR" 2>/dev/null || true
    chmod -R 0777 "$DIR" 2>/dev/null || true
    chown -R 0:0 "$DIR" 2>/dev/null || true
    # محاولة إزالة الملفات الحساسة أو إعادة تسميتها إن رغبت
    # مثال: rm -rf "$DIR/somefile" 2>/dev/null || true
  else
    echo "[✘] unavailable: $DIR"
  fi
}

echo "🔓 Start unlocking files PUBG..."

for PKG in "${PKGS[@]}"; do
  unlock "/data/data/$PKG"
  unlock "/sdcard/Android/data/$PKG"
  unlock "/sdcard/Android/obb/$PKG"
done

echo "✅ unlocked Don."
echo "Telegram::@ew_s4"