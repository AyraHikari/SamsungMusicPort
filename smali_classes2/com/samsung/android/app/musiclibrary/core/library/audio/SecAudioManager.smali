.class public final Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager$DeviceOutConstants;
    }
.end annotation


# static fields
.field public static final ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

.field private static final APP_NAME_RES_ID:I

.field private static final DEVICE_OUT_UNKNOWN:I = -0xa

.field public static final EXTRA_VOLUME_STREAM_DEVICES:Ljava/lang/String; = "android.media.EXTRA_VOLUME_STREAM_DEVICES"

.field public static final EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

.field public static final EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-AudioManager"

.field private static final MAX_FINE_VOLUME:I = 0x96

.field private static final MULTI_SOUND_TAG:Ljava/lang/String; = "multisound_pinappname="

.field private static final SETTINGS_ALL_SOUND_OFF:Ljava/lang/String; = "all_sound_off"

.field public static final STREAM_DEVICES_CHANGED_ACTION:Ljava/lang/String; = "android.media.STREAM_DEVICES_CHANGED_ACTION"

.field public static final STREAM_MUSIC:I = 0x3

.field private static final SUPPORT_FW_FINE_VOLUME:Z

.field public static final VOLUME_CHANGED_ACTION:Ljava/lang/String;

.field private static sSecAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;


# instance fields
.field private mAppName:Ljava/lang/String;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mAudioManagerCompat:Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;

.field private final mContext:Landroid/content/Context;

.field private mMaxVolume:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/utils/features/CoreAppFeatures;->SUPPORT_FW_FINE_VOLUME:Z

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->SUPPORT_FW_FINE_VOLUME:Z

    .line 54
    sget-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SAMSUNG_VOLUME_CHANGED_ACTION:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    .line 72
    sget-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SAMSUNG_EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

    .line 78
    sget-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SAMSUNG_EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String;

    .line 87
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->app_name:I

    sput v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->APP_NAME_RES_ID:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    .line 103
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 104
    new-instance v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManagerCompat:Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;

    return-void
.end method

.method private getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->APP_NAME_RES_ID:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getAudioPath()I
    .locals 5

    .line 367
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "audioParam;outDevice"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, -0xa

    if-eqz v1, :cond_0

    const-string v1, "SMUSIC-AudioManager"

    .line 371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioManager.getParameters(\'audioParam;outDevice\') is wrong so return as Speaker. Path is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 379
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    const-string v1, "SMUSIC-AudioManager"

    .line 381
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioManager.getParameters(\'audioParam;outDevice\') is wrong so return as Speaker. Path is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private getDeviceOut(I)I
    .locals 0

    .line 391
    invoke-static {p1}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->getDeviceOut(I)I

    move-result p1

    return p1
.end method

.method private getFieldValue(Ljava/lang/String;)I
    .locals 2

    const-string v0, "android.media.AudioManager"

    const/4 v1, 0x0

    .line 396
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 395
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;
    .locals 1

    .line 114
    instance-of v0, p0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 118
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->sSecAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->sSecAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    .line 121
    :cond_0
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->sSecAudioManager:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    return-object p0

    .line 115
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Don\'t send Activity itself, it can make activity leak. Please put a application context"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static isAllSoundOff(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "all_sound_off"

    const/4 v1, 0x0

    .line 128
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->getIntFromSettings(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAudioPathBTHeadset()Z
    .locals 1

    .line 425
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getAudioPath()I

    move-result v0

    .line 426
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isBtHeadset(I)Z

    move-result v0

    return v0
.end method

.method private isAudioPathBtInSeparateApp(Ljava/lang/String;)Z
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multisound_pinappname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    .line 264
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getDeviceOut(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isAudioPathSpeakerInSeparateApp(Ljava/lang/String;)Z
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multisound_pinappname="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    .line 270
    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getDeviceOut(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isBtHeadset(I)Z
    .locals 4

    .line 478
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1

    const/16 v0, 0x8

    .line 479
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getDeviceOut(I)I

    move-result v0

    const/4 v3, 0x7

    .line 480
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getDeviceOut(I)I

    move-result v3

    or-int/2addr v0, v3

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const-string v0, "DEVICE_OUT_BLUETOOTH_A2DP"

    .line 482
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getFieldValue(Ljava/lang/String;)I

    move-result v0

    const-string v3, "DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES"

    .line 483
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getFieldValue(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v0, v3

    const-string v3, "DEVICE_OUT_BLUETOOTH_SCO_HEADSET"

    .line 484
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getFieldValue(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v0, v3

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isEarjack(I)Z
    .locals 4

    .line 458
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1

    const/4 v0, 0x3

    .line 459
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getDeviceOut(I)I

    move-result v0

    const/4 v3, 0x4

    .line 460
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getDeviceOut(I)I

    move-result v3

    or-int/2addr v0, v3

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const-string v0, "DEVICE_OUT_WIRED_HEADPHONE"

    .line 462
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getFieldValue(Ljava/lang/String;)I

    move-result v0

    const-string v3, "DEVICE_OUT_WIRED_HEADSET"

    .line 463
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getFieldValue(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v0, v3

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isHdmi(I)Z
    .locals 4

    .line 499
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1

    const/16 v0, 0x9

    .line 500
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getDeviceOut(I)I

    move-result v0

    const/16 v3, 0xa

    .line 501
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getDeviceOut(I)I

    move-result v3

    or-int/2addr v0, v3

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const-string v0, "DEVICE_OUT_HDMI"

    .line 503
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getFieldValue(Ljava/lang/String;)I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isLineOut(I)Z
    .locals 4

    .line 489
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1

    const/4 v0, 0x5

    .line 490
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getDeviceOut(I)I

    move-result v0

    const/4 v3, 0x6

    .line 491
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getDeviceOut(I)I

    move-result v3

    or-int/2addr v0, v3

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const-string v0, "DEVICE_OUT_ANLG_DOCK_HEADSET"

    .line 493
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getFieldValue(Ljava/lang/String;)I

    move-result v0

    const-string v3, "DEVICE_OUT_DGTL_DOCK_HEADSET"

    .line 494
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getFieldValue(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v0, v3

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private isMultiSoundEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 258
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/FloatingFeatures;->h_:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManagerCompat:Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;

    .line 259
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->isMultiSoundOn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isSamsungMusicInSeparateApp(Landroid/content/Context;)Z
    .locals 1

    .line 186
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isMultiSoundEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAppName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 188
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAppName:Ljava/lang/String;

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathBTHeadset()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 191
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAppName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathSpeakerInSeparateApp(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 193
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAppName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathBtInSeparateApp(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private isUsbEarjack()Z
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManagerCompat:Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->isUsbEarjack()Z

    move-result v0

    return v0
.end method

.method private selectRouteInt(ILandroid/content/Context;)V
    .locals 2

    const-string v0, "media_router"

    .line 338
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/MediaRouter;

    if-nez p2, :cond_0

    const-string p1, "SMUSIC-AudioManager"

    const-string p2, "selectRouteInt : mediaRouter is NULL!"

    .line 340
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 346
    invoke-virtual {p2}, Landroid/media/MediaRouter;->getDefaultRoute()Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    .line 348
    invoke-static {p2}, Lcom/samsung/android/app/music/support/android/media/MediaRouterCompat;->getA2dpRoute(Landroid/media/MediaRouter;)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 352
    invoke-virtual {p2, v1, v0}, Landroid/media/MediaRouter;->selectRoute(ILandroid/media/MediaRouter$RouteInfo;)V

    goto :goto_1

    :cond_3
    const-string p1, "SMUSIC-AudioManager"

    const-string p2, "selectRouteInt : routeInfo is NULL!"

    .line 354
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public adjustStreamVolume(III)V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-void
.end method

.method public getEarProtectLimitIndex()I
    .locals 2

    .line 231
    invoke-static {}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->getEarProtectLimit()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 232
    sget-boolean v1, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->SUPPORT_FW_FINE_VOLUME:Z

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0xa

    return v0

    :cond_0
    return v0
.end method

.method public getMaxVolume()I
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mMaxVolume:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 200
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->SUPPORT_FW_FINE_VOLUME:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x96

    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mMaxVolume:Ljava/lang/Integer;

    goto :goto_0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mMaxVolume:Ljava/lang/Integer;

    .line 206
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mMaxVolume:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getVolume()I
    .locals 5

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isSamsungMusicInSeparateApp(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManagerCompat:Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mContext:Landroid/content/Context;

    const/16 v3, 0x96

    sget-boolean v4, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->SUPPORT_FW_FINE_VOLUME:Z

    .line 175
    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->getMultiSoundDeviceVolume(Landroid/content/Context;IIZ)I

    move-result v0

    return v0

    .line 178
    :cond_0
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->SUPPORT_FW_FINE_VOLUME:Z

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManagerCompat:Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->getFineVolume(I)I

    move-result v0

    return v0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public getVolumeNumber(I)I
    .locals 4

    .line 210
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->SUPPORT_FW_FINE_VOLUME:Z

    if-eqz v0, :cond_0

    int-to-double v0, p1

    const-wide v2, 0x4062c00000000000L    # 150.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    .line 212
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    return p1

    :cond_0
    return p1
.end method

.method public getVolumePercent()I
    .locals 4

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolume()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getMaxVolume()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    .line 220
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public isAudioPathBT()Z
    .locals 1

    .line 415
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getAudioPath()I

    move-result v0

    .line 416
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isBt(I)Z

    move-result v0

    return v0
.end method

.method public isAudioPathEarjack()Z
    .locals 1

    .line 405
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getAudioPath()I

    move-result v0

    .line 406
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isEarjack(I)Z

    move-result v0

    return v0
.end method

.method public isAudioPathHdmi()Z
    .locals 1

    .line 445
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getAudioPath()I

    move-result v0

    .line 446
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isHdmi(I)Z

    move-result v0

    return v0
.end method

.method public isAudioPathLineOut()Z
    .locals 1

    .line 435
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getAudioPath()I

    move-result v0

    .line 436
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isLineOut(I)Z

    move-result v0

    return v0
.end method

.method public isBt(I)Z
    .locals 4

    .line 468
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x17

    if-lt v0, v3, :cond_1

    const/16 v0, 0x8

    .line 469
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getDeviceOut(I)I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const-string v0, "DEVICE_OUT_BLUETOOTH_A2DP"

    .line 471
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getFieldValue(Ljava/lang/String;)I

    move-result v0

    const-string v3, "DEVICE_OUT_BLUETOOTH_A2DP_HEADPHONES"

    .line 472
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getFieldValue(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v0, v3

    const-string v3, "DEVICE_OUT_BLUETOOTH_A2DP_SPEAKER"

    .line 473
    invoke-direct {p0, v3}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getFieldValue(Ljava/lang/String;)I

    move-result v3

    or-int/2addr v0, v3

    and-int/2addr p1, v0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isHeadsetOrBT()Z
    .locals 1

    .line 450
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathEarjack()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathBTHeadset()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathBT()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSafeMediaVolumeDeviceOn(Landroid/content/Context;)Z
    .locals 3

    .line 239
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const/4 v1, 0x1

    const v2, 0x18ed7

    if-ge v0, v2, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-lt v0, v2, :cond_0

    goto :goto_1

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathBTHeadset()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathEarjack()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    .line 241
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isMultiSoundEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 243
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 244
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathBTHeadset()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 245
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathSpeakerInSeparateApp(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v1

    goto :goto_2

    .line 247
    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isAudioPathBtInSeparateApp(Ljava/lang/String;)Z

    move-result p1

    :goto_2
    return p1

    .line 251
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManagerCompat:Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->isSafeMediaVolumeDeviceOn()Z

    move-result p1

    return p1
.end method

.method public isSplitSoundOn()Z
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManagerCompat:Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->isSplitSoundOn()Z

    move-result v0

    return v0
.end method

.method public isWiredHeadsetOn()Z
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method public setSmartVolumeEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setSoundPathToBT(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 320
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->selectRouteInt(ILandroid/content/Context;)V

    return-void
.end method

.method public setSoundPathToDevice(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 327
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->selectRouteInt(ILandroid/content/Context;)V

    return-void
.end method

.method public setVolume(I)V
    .locals 3

    .line 165
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->SUPPORT_FW_FINE_VOLUME:Z

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManagerCompat:Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;

    invoke-virtual {v0, v2, p1, v1}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->setFineVolume(III)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v2, p1, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :goto_0
    return-void
.end method

.method public toggleMute()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->mAudioManager:Landroid/media/AudioManager;

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getVolume()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/support/media/AudioManagerCompat;->a(Landroid/media/AudioManager;I)V

    return-void
.end method
