.class public final Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


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
.method static constructor <clinit>()V
    .locals 3

    .line 26
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x836

    if-ge v0, v1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "android.media.AudioManager"

    const-string v1, "VOLUME_CHANGED_ACTION"

    const-string v2, ""

    .line 33
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    const-string v0, "android.media.AudioManager"

    const-string v1, "EXTRA_VOLUME_STREAM_TYPE"

    const-string v2, ""

    .line 36
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

    const-string v0, "android.media.AudioManager"

    const-string v1, "EXTRA_VOLUME_STREAM_VALUE"

    const-string v2, ""

    .line 39
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    .line 27
    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 28
    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

    const-string v0, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    .line 29
    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String;

    .line 43
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->hasSamsungAudioManger()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->HAS_SAMSUNG_AUDIO_MANGER:Z

    .line 45
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->hasFineVolumeMethod()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->HAS_FINE_VOLUME_METHOD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-boolean v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->HAS_SAMSUNG_AUDIO_MANGER:Z

    if-eqz v0, :cond_0

    .line 51
    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 53
    :goto_0
    return-void
.end method

.method public static getDeviceOut(I)I
    .locals 2

    .line 58
    const/4 p0, 0x0

    return p0
.end method

.method private static hasFineVolumeMethod()Z
    .locals 7

    const-string v0, "android.media.SamsungAudioManager"

    const-string v1, "getFineMediaVolume"

    const/4 v2, 0x0

    .line 130
    new-array v3, v2, [Ljava/lang/Class;

    .line 131
    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "android.media.SamsungAudioManager"

    const-string v3, "setFineMediaVolume"

    const/4 v4, 0x1

    .line 133
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    .line 134
    invoke-static {v1, v3, v5}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private static hasSamsungAudioManger()Z
    .locals 1

    const-string v0, "android.media.SamsungAudioManager"

    .line 125
    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->hasClass(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportFineVolume()Z
    .locals 1

    .line 139
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
    .locals 3

    .line 95
    const p1, 0x0

    return p1
.end method

.method public getFineVolumeOffset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public isSafeMediaVolumeDeviceOn()Z
    .locals 3

    .line 111
    const/4 v1, 0x0

    return v1
.end method

.method public isSplitSoundOn()Z
    .locals 3

    .line 118
    const/4 v1, 0x0

    return v1
.end method

.method public setFineVolume(Landroid/media/AudioManager;III)V
    .locals 2

    .line 73
    return-void
.end method

.method public setFineVolumeOffset(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    return-void
.end method
