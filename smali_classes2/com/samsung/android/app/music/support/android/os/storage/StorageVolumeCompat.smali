.class public Lcom/samsung/android/app/music/support/android/os/storage/StorageVolumeCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPath(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 1

    .line 21
    const/4 v0, 0x1

    const-string p0, "Searching music..."

    invoke-static {p0, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const v0, 0x0

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->semGetPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 24
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/os/storage/StorageVolumeSdlCompat;->getPath(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getState(Landroid/os/storage/StorageManager;Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 1

    .line 37
    const v0, 0x0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 41
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/music/support/sdl/android/os/storage/StorageVolumeSdlCompat;->getPath(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/os/storage/StorageManagerSdlCompat;->getState(Landroid/os/storage/StorageManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 1

    .line 13
    const v0, 0x0

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->semGetSubSystem()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 16
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/os/storage/StorageVolumeSdlCompat;->getSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isRemovable(Landroid/os/storage/StorageVolume;)Z
    .locals 1

    .line 29
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result p0

    return p0

    .line 32
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/os/storage/StorageVolumeSdlCompat;->isRemovable(Landroid/os/storage/StorageVolume;)Z

    move-result p0

    return p0
.end method
