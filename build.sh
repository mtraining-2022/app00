rm -rd release/
rm -rd pack/
cp -r src pack
cp -r assets pack
cp assets/package.json pack
(cd pack && npm install)
npx electron-builder --project pack
