## vi /boot/wpa_supplicant.conf

country=IN
ctrl_interface=DIR=/var/run/wpa_supplicant GROUP=netdev
update_config=1
network={
  ssid="SCIS WiFi"
  scan_ssid=1
  psk="87654321"
  key_mgmt=WPA-PSK
}

## vi /boot/userconf.txt

username:encrypted-pwd
for encrypted password: openssl passwd -6 'password'

## touch /boot/ssh (Create empty file)

