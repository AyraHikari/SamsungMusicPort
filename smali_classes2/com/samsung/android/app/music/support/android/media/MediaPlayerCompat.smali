.class public Lcom/samsung/android/app/music/support/android/media/MediaPlayerCompat;
.super Ljava/lang/Object;
.source "MediaPlayerCompat.java"


# static fields
.field private static final MEDIA_PLAYER_INTERFACE_NAME:Ljava/lang/String; = "android.media.IMediaPlayer"

.field private static sSemSetSoundAlive:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableOffload(Landroid/media/MediaPlayer;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const v0, 0x80e8

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPlayer;->semSetParameter(II)Z

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/MediaPlayerSdlCompat;->disableOffload(Landroid/media/MediaPlayer;)Z

    move-result p0

    return p0
.end method

.method private static ensureSemSetSoundAlive()V
    .locals 4

    .line 1
    sget-object v0, Lcom/samsung/android/app/music/support/android/media/MediaPlayerCompat;->sSemSetSoundAlive:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    const-class v0, Landroid/media/MediaPlayer;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/os/Parcel;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/os/Parcel;

    aput-object v3, v1, v2

    const-string v2, "semSetSoundAlive"

    .line 3
    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/MediaPlayerCompat;->sSemSetSoundAlive:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static setPlaySpeed(Landroid/media/MediaPlayer;F)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.media.IMediaPlayer"

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4
    :try_start_0
    sget v2, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SOUNDALIVE_SET_SPEED:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 6
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/music/support/android/media/MediaPlayerCompat;->setSoundAlive(Landroid/media/MediaPlayer;Landroid/os/Parcel;Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 9
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 10
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 11
    throw p0
.end method

.method public static setSkipSilence(Landroid/media/MediaPlayer;Z)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const v0, 0x88ba

    .line 2
    invoke-virtual {p0, v0, p1}, Landroid/media/MediaPlayer;->semSetParameter(II)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setSoundAlive(Landroid/media/MediaPlayer;Landroid/os/Parcel;Landroid/os/Parcel;)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/samsung/android/app/music/support/android/media/MediaPlayerCompat;->ensureSemSetSoundAlive()V

    .line 3
    sget-object v0, Lcom/samsung/android/app/music/support/android/media/MediaPlayerCompat;->sSemSetSoundAlive:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/support/sdl/android/media/MediaPlayerSdlCompat;->setSoundAlive(Landroid/media/MediaPlayer;Landroid/os/Parcel;Landroid/os/Parcel;)I

    :goto_0
    return-void
.end method
