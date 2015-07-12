

## backup the SD card image
dd bs=4M if=/dev/sdb of=/home/pi/tmp/raspberryPi_backup.img

## write the image into SD scard
dd bs=4M if= /home/pi/Download/2015-05-05-raspbian-wheezy.img of=/dev/sdx
