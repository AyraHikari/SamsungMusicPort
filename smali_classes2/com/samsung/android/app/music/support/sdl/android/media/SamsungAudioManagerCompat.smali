.class public final Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;
.super Ljava/lang/Object;
.source "SamsungAudioManagerCompat.java"


# static fields
.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String;

.field private static final HAS_FINE_VOLUME_METHOD:Z

.field private static final HAS_SAMSUNG_AUDIO_MANGER:Z

.field private static final UNDEFINED:I

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String;


# instance fields
.field private final mSamsungAudioManager:Landroid/media/SamsungAudioManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x836

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    .line 2
    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 3
    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    .line 4
    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->hasSamsungAudioManger()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->HAS_SAMSUNG_AUDIO_MANGER:Z

    .line 6
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->hasFineVolumeMethod()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->HAS_FINE_VOLUME_METHOD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->HAS_SAMSUNG_AUDIO_MANGER:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/media/SamsungAudioManager;

    invoke-direct {v0, p1}, Landroid/media/SamsungAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    :goto_0
    return-void
.end method

.method public static getDeviceOut(I)I
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x8fd

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Landroid/media/SamsungAudioManager;->getDeviceOut(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static hasFineVolumeMethod()Z
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "android.media.SamsungAudioManager"

    const-string v3, "getFineMediaVolume"

    .line 1
    invoke-static {v2, v3, v1}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 2
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    const-string v5, "setFineMediaVolume"

    .line 3
    invoke-static {v2, v5, v4}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    move v0, v3

    :cond_0
    return v0
.end method

.method private static hasSamsungAudioManger()Z
    .locals 1

    const-string v0, "android.media.SamsungAudioManager"

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->hasClass(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportFineVolume()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->HAS_SAMSUNG_AUDIO_MANGER:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->HAS_FINE_VOLUME_METHOD:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getFineVolume(Landroid/media/AudioManager;I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    sget v2, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v3, 0x8fe

    if-lt v2, v3, :cond_0

    const/4 p1, 0x3

    .line 3
    invoke-virtual {v0, p1}, Landroid/media/SamsungAudioManager;->getFineVolume(I)I

    move-result p1

    return p1

    .line 4
    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->HAS_FINE_VOLUME_METHOD:Z

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    .line 6
    iget-object p2, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {p2}, Landroid/media/SamsungAudioManager;->getFineMediaVolume()I

    move-result p2

    mul-int/lit8 p1, p1, 0xa

    add-int/2addr p1, p2

    return p1

    :cond_1
    return v1
.end method

.method public getFineVolumeOffset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/media/SamsungAudioManager;->getFineMediaVolume()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSafeMediaVolumeDeviceOn()Z
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x837

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/SamsungAudioManager;->isSafeMediaVolumeDeviceOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSplitSoundOn()Z
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x837

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/SamsungAudioManager;->isSplitSoundOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setFineVolume(Landroid/media/AudioManager;III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    if-eqz v0, :cond_1

    .line 2
    sget v1, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v2, 0x8fe

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0, p2, p3, p4}, Landroid/media/SamsungAudioManager;->setFineVolume(III)V

    goto :goto_0

    .line 4
    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->HAS_FINE_VOLUME_METHOD:Z

    if-eqz v0, :cond_1

    .line 5
    div-int/lit8 v0, p3, 0xa

    .line 6
    rem-int/lit8 p3, p3, 0xa

    .line 7
    invoke-virtual {p1, p2, v0, p4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 8
    iget-object p1, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {p1, p3}, Landroid/media/SamsungAudioManager;->setFineMediaVolume(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFineVolumeOffset(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/media/SamsungAudioManager;->setFineMediaVolume(I)V

    :cond_0
    return-void
.end method
