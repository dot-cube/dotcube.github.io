#! /bin/bash

CONFIG_FILE="config.toml"

# config.toml の書き換え
echo "[Log] Rewriting the 'config.toml'."
sed -i -e 's/noindex = false/noindex = true/' ${CONFIG_FILE}
sed -i -e 's/use_google_analitycs = false/use_google_analitycs = false/' ${CONFIG_FILE}
echo "[Log] Done."

# ビルド
echo ""
echo "[Log] Building preview page..."
hugo --gc --minify --cleanDestinationDir
echo "[Log] Done."

# config.toml を戻す
echo ""
echo "[Log] Restoring the '${CONFIG_FILE}'."
sed -i -e 's/noindex = true/noindex = false/' ${CONFIG_FILE}
sed -i -e 's/use_google_analitycs = false/use_google_analitycs = true/' ${CONFIG_FILE}
echo "[Log] Done."
