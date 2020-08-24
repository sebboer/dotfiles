
## Utils

### split file in multiple parts

#### create archive
* `tar -czvf <filename>.tar.gz <filename>`
#### split file 
* `split -db <size K M G> <filename>.tar.gz "<filename>.tar.gz.part-"` or `split -dn<n parts> <filename>.tar.gz "<filename>.tar.gz.part"`
#### merge files
* `cat <filename>.tar.gz.part-* > <filename>`
#### unpack archive
* `tar -xzvf <filename>.tar.gz`

### Create SHA256 checksum
* `sha256sum <filename> > <filename>.sha256`
### verify integrity of merge file with sha256
* `cat <filename>.sha256 <filename> | sha256sum -c -`

## connect to android device as usb device
* Detect device `mtp-detect`
* Mount device `jmtpfs -o allow_other ~/mnt/pixel`
* Umount device `umount ~/mnt/pixel`

## Operating System

### pacman mirrors
* `sudo pacman-mirrors --country Germany,Austria,France --api --protocol https && sudo pacman -Syyu`

## Network

### Import ovpn file to NetworkManager
* `sudo nmcli connection import type openvpn file hsa.ovpn`

## Media (Images, Video)

### Convert SVG to PNG
* `inkscape -z -e test.png -w 512 -h 512 test.svg`

### Merge subtitle file into mkv container * `mkvmerge -o output.mkv input.mkv --language 0:ger --track-name 0:German --default-track '0:0' subtitle.srt`

# etc

### Bluetooth Connection
* `bluetoothctl`
* list controllers `list`
* select controller `select <ctrl>`
* connect device `connect [dev]` try multiple times
* ncpamixer => check audio profile

### Merge Calibre Dir
`rsync --progress -rt ~/CalibreLibrary/ basti@<server>:/path/to/calibrelibrary`
