# SamsungMusicPort
Samsung Music Port for all Non-Samsung ROM

# Build
Make sure apktool and JDK are installed on your machine
- `apktool.jar b -f -o SamsungMusicPort -p SamsungFirmware --use-aapt2`
- `ApkSigner.jar sign -ks keystore --ks-pass pass:keystorepass --out SamsungMusic_build.apk SamsungMusicPort.apk`
- `zipalign -f -v 4 SamsungMusic_build.apk SamsungMusicPorted.apk`

# Download
## You can [download latest release here](https://www.pling.com/p/1537956/)
