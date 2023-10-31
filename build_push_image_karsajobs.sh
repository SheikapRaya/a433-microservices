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
docker tag sheikap-docker/karsajobs:latest sheikap/karsajobs:latest
echo
echo "\e[1;3;31m Menyimpan Token GHCR \e[0m"
echo
sleep 2
export PASSWORD_DOCKER_HUB=dckr_pat_ikh89Rt8eMrgJjFlgg68ynK4r4o
echo
# Login ke GitHub GHCR
echo
echo "\e[1;3;31m Login ke GHCR \e[0m"
echo
sleep 2
echo $PASSWORD_DOCKER_HUB | docker login -u sheikap --password-stdin
echo
# Push image ke Github GHCR
echo "\e[1;3;36m Push image ke GHCR \e[0m"
echo
sleep 2
docker push sheikap/karsajobs:latest
echo
echo GOOD JOB
sleep 2
