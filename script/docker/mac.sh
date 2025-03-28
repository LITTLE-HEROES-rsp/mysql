#!/bin/bash

set -e

arch=$(uname -m)
tmpfile="/tmp/Docker.dmg"

if [[ "$arch" == "arm64" ]]; then
  echo "✅ Apple Silicon Mac を検出しました。"
  url="https://desktop.docker.com/mac/main/arm64/Docker.dmg"
elif [[ "$arch" == "x86_64" ]]; then
  echo "✅ Intel Mac を検出しました。"
  url="https://desktop.docker.com/mac/main/x86_64/Docker.dmg"
else
  echo "❌ 未対応のアーキテクチャ: $arch"
  exit 1
fi

echo "⬇️ Docker Desktop をダウンロードしています..."
curl -L "$url" -o "$tmpfile"

echo "📦 マウントしてインストールします..."
hdiutil attach "$tmpfile" -nobrowse -quiet
cp -R "/Volumes/Docker/Docker.app" /Applications

echo "⏏️ アンマウントします..."
hdiutil detach "/Volumes/Docker" -quiet

echo "🧹 一時ファイルを削除します..."
rm -f "$tmpfile"

echo "✅ Docker Desktop のインストール完了！Launchpadから起動してログインしてください。"
