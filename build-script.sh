
echo "Building your site!"
bundle exec jekyll build

echo "Commiting your source to Git"
git add --all;
git commit -m "Update";
git push origin HEAD;

echo "Commiting your site to Git"
cp -r _site/* ../holosix.github.io
cd ../holosix.github.io
git add --all;
git commit -m "Update";
git push origin HEAD;

