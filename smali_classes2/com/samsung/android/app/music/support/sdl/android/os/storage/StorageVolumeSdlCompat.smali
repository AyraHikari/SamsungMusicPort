.class public Lcom/samsung/android/app/music/support/sdl/android/os/storage/StorageVolumeSdlCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPath(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 0

    .line 12
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 0

    .line 8
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isRemovable(Landroid/os/storage/StorageVolume;)Z
    .locals 0

    .line 16
    invoke-virtual {p0}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result p0

    return p0
.end method
