# Membuat Docker image
echo "Membuat Docker image"
echo
sleep 2
docker build -t item-app:v1 .
echo
# Melihat daftar image di lokal
echo "Melihat daftar image di lokal"
echo
sleep 2
docker images
echo
# Mengubah nama image agar sesuai dengan format GitHub Packages saran ke 4
echo "Mengubah nama image agar sesuai dengan format GitHub Packages saran ke 4"
sleep 2
docker tag item-app:v1 ghcr.io/sheikapraya/item-app:v1
echo
# menyimpan token GitHub
echo "Menyimpan Token GHCR"
sleep 2
export GITHUB_ACCESS_TOKEN="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"
echo
# Login ke GHCR
echo "Login ke GHCR"
echo
sleep 2
echo $GITHUB_ACCESS_TOKEN | docker login ghcr.io -u sheikapraya --password-stdin 
echo
# Push image ke Github GHCR
echo "Push image ke GHCR"
echo
sleep 2
docker push ghcr.io/sheikapraya/item-app:v1
echo
echo GOOD JOB
sleep 2
