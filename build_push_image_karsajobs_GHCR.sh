# Build Docker image
sleep 1
echo
echo  "\e[1;5;32m Membuat Docker image \e[0m"
echo
sleep 2
docker build -t sheikap-docker/karsajobs:latest .
echo
echo  "\e[1;3;33m Mengubah nama image agar sesuai dengan format GitHub Packages \e[0m"
echo
sleep 2
docker tag sheikap-docker/karsajobs:latest ghcr.io/sheikapraya/karsajobs:latest
echo
echo "\e[1;3;31m Menyimpan Token GHCR \e[0m"
echo
sleep 2
export GITHUB_ACCESS_TOKEN="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"
echo
# Login ke GitHub GHCR
echo
echo "\e[1;3;31m Login ke GHCR \e[0m"
echo
sleep 2
echo $GITHUB_ACCESS_TOKEN | docker login ghcr.io -u SheikapRaya --password-stdin
echo
# Push image ke Github GHCR
echo "\e[1;3;36m Push image ke GHCR \e[0m"
echo
sleep 2
docker push ghcr.io/sheikapraya/karsajobs:latest
echo
echo GOOD JOB
sleep 2
