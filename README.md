# Kopia-Ubuntu
Ubuntu based Kopia
Difference with original kopia container is this is based ubuntu and fuse3 is installed. So KopiaUI can mount snapshots and we can browse KopaUI mounted folders from host system.

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
