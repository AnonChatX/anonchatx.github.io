#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

echo "[1/5] Updating repo..."
git pull --ff-only

echo "[2/5] Installing dependencies..."
npm ci

echo "[3/5] Building site..."
npm run build

echo "[4/5] Deploying to nginx root..."
sudo rsync -a --delete ./dist/ /var/www/anonchatx/
echo "[4.1/5] Copying server extras..."
sudo cp -f ./server-extras/onion.html /var/www/anonchatx/onion.html

echo "[5/5] Fixing permissions..."
sudo chown -R www-data:www-data /var/www/anonchatx
sudo find /var/www/anonchatx -type d -exec chmod 755 {} \;
sudo find /var/www/anonchatx -type f -exec chmod 644 {} \;

echo "Done."
