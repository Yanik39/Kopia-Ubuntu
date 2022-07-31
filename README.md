# Kopia-Ubuntu
Ubuntu based Kopia

# Nginx reverse proxy
```
location / {
                grpc_pass grpcs://container_ip:51515;
}
```
# Fusermount
A volume should be mounted with property `:shared` to the `/tmp` folder of the kopia container.
```
-v /mnt/kopia:/tmp:shared
```
So KopiaUI mounts would be browsable at `/mnt/kopia/`

Please also check docker-compose.yml file.
