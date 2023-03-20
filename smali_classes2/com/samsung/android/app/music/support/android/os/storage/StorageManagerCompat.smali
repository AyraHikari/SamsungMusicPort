.class public Lcom/samsung/android/app/music/support/android/os/storage/StorageManagerCompat;
.super Ljava/lang/Object;
.source "StorageManagerCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStorageVolumes(Landroid/os/storage/StorageManager;)[Landroid/os/storage/StorageVolume;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getStorageVolumes()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Landroid/os/storage/StorageVolume;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/os/storage/StorageVolume;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/os/storage/StorageManagerSdlCompat;->getStorageVolumes(Landroid/os/storage/StorageManager;)[Landroid/os/storage/StorageVolume;

    move-result-object p0

    return-object p0
.end method
