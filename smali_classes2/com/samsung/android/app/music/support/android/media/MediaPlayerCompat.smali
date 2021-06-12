.class public Lcom/samsung/android/app/music/support/android/media/MediaPlayerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableOffload(Landroid/media/MediaPlayer;)Z
    .locals 2

    .line 19
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const v0, 0x80e8

    const/4 v1, 0x1

    .line 20
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPlayer;->semSetParameter(II)Z

    move-result p0

    return p0

    .line 22
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/MediaPlayerSdlCompat;->disableOffload(Landroid/media/MediaPlayer;)Z

    move-result p0

    return p0
.end method

.method public static setSkipSilence(Landroid/media/MediaPlayer;Z)Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const v0, 0x88ba

    .line 29
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaPlayer;->semSetParameter(II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setSoundAlive(Landroid/media/MediaPlayer;Landroid/os/Parcel;Landroid/os/Parcel;)I
    .locals 1

    .line 11
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->semSetSoundAlive(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result p0

    return p0

    .line 14
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/media/MediaPlayerSdlCompat;->setSoundAlive(Landroid/media/MediaPlayer;Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result p0

    return p0
.end method
