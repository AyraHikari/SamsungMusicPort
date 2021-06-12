.class public Lcom/samsung/android/app/music/support/sdl/android/os/storage/StorageManagerSdlCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getState(Landroid/os/storage/StorageManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStorageVolumes(Landroid/os/storage/StorageManager;)[Landroid/os/storage/StorageVolume;
    .locals 0

    .line 9
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object p0

    return-object p0
.end method
