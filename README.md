# ChromeOS-Scripts
Scripts for ChromeOS(in developer mode)

## How to download
1. Install [crew](https://github.com/skycocker/chromebrew):
```shell
curl -Ls git.io/vddgY | bash
```

2. Clone:
```shell
git clone https://github.com/NerdOfLinux/ChromeOS-Scripts.git
```

## How to use
Due to how permissions work on ChromeOS, you have a few options on how to run these scripts(these all assume you're in the correct folder):

1. This is the easiest way: use the `bash` command:
```shell
bash scriptname.sh
```

2. Move to `/usr/local/bin`:
```shell
cp scriptname.sh /usr/local/bin/scriptname.sh
scriptname.sh
```

3. Remount home dir:
```shell
sudo mount -o remount,rw ~/
chmod +x scriptname.sh
./scriptname.sh
```
