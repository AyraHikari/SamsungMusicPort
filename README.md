# SamsungMusicPort
Samsung Music Port for all Non-Samsung ROM

# FAQ
- Some features is missing on latest version
> Keep old version until that feature implemented on new version

- It crashes on latest version
> Just [create new issue](https://github.com/AyraHikari/SamsungMusicPort/issues/new) with proper logs about this, maybe i forgot to patch these fix on new port version

- Why it did not work on (insert device)?
> This port mostly works on AOSP based ROM, MIUI/HyperOS, One UI, and mostly OEM ROMs. But some devices that hardly modded aosp or virtual that using their own implementation and framework may not work. Unfortunatelly, I don't have all devices to test with.

- When i click equalizer icon, it show old equalizer layout, i've uninstalled Samsung Music but it still there. Why?
> It's your ROM equalizer, this app has no built in equalizer

- **Why it required Phone permission???**
> You downloaded Melon version, which automatically connected to their own service. If you unconfortable with that permission, install *Spotify* version instead. Also check [Melon Stream](https://play.google.com/store/apps/details?id=com.iloen.melon) app description for more information about that permission.
> <img width="849" height="74" alt="439771335-a4153a99-cddd-47ac-91d3-2d04d9d35162" src="https://github.com/user-attachments/assets/ca985b7f-32cc-4088-8ff4-838cf1506c3f" />

- Is it your original work?
> This is port. Samsung music is made by Samsung. While i just do porting this app to another devices. Also yes, patch is 100% made by me (i did first ever port of samsung music, if you follow me on the telegram or xda for long time ago).

# Build
Make sure apktool and JDK are installed on your machine
- `apktool.jar b -f -o SamsungMusicPort -p SamsungFirmware --use-aapt2`
- `ApkSigner.jar sign -ks keystore --ks-pass pass:keystorepass --out SamsungMusic_build.apk SamsungMusicPort.apk`
- `zipalign -f -v 4 SamsungMusic_build.apk SamsungMusicPorted.apk`

# Download
## You can [download latest release here](https://www.pling.com/p/1537956/)
