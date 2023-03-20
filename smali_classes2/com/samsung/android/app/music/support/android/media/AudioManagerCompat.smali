.class public Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;
.super Ljava/lang/Object;
.source "AudioManagerCompat.java"


# static fields
.field public static final ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

.field private static final GET_STREAM_VOLUME:Ljava/lang/String; = "getStreamVolume"

.field private static final IS_MULTI_SOUND_ON:Ljava/lang/String; = "isMultiSoundOn"

.field private static final PERSIST_AUDIO_FINEMEDIAVOLUME:Ljava/lang/String; = "persist.audio.finemediavolume"

.field private static final PERSIST_AUDIO_GLOBAL_EFFECT:Ljava/lang/String; = "persist.audio.globaleffect"

.field private static final PERSIST_AUDIO_UHQA:Ljava/lang/String; = "persist.audio.uhqa"

.field public static final SAMSUNG_EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

.field public static final SAMSUNG_VOLUME_CHANGED_ACTION:Ljava/lang/String;

.field private static final SEM_GET_PIN_DEVICE:Ljava/lang/String; = "semGetPinDevice"

.field public static final SOUNDALIVE_SET_SPEED:I

.field private static final sGetPinDevice:Ljava/lang/reflect/Method;

.field private static final sGetStreamVolume:Ljava/lang/reflect/Method;

.field private static final sIsMultiSoundOn:Ljava/lang/reflect/Method;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mAudioPath:Lcom/samsung/android/app/music/support/android/media/audiopath/AudioPath;

.field private final mSamsungAudioManagerCompat:Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

.field private mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

.field private mStreamMaxVolume:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v1, 0x400

    const-string v2, "android.media.AUDIO_BECOMING_NOISY_SEC"

    if-eqz v0, :cond_0

    const-string v0, "android.media.AudioManager"

    const-string v3, "SEM_VOLUME_CHANGED_ACTION"

    const-string v4, ""

    .line 2
    invoke-static {v0, v3, v4}, Lcom/samsung/android/app/music/support/samsung/ReflectionExtension;->getReflectionField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SAMSUNG_VOLUME_CHANGED_ACTION:Ljava/lang/String;

    const-string v3, "SEM_EXTRA_VOLUME_STREAM_TYPE"

    .line 3
    invoke-static {v0, v3, v4}, Lcom/samsung/android/app/music/support/samsung/ReflectionExtension;->getReflectionField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SAMSUNG_EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

    .line 4
    sput-object v2, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

    .line 5
    sput v1, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SOUNDALIVE_SET_SPEED:I

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SAMSUNG_VOLUME_CHANGED_ACTION:Ljava/lang/String;

    .line 7
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SAMSUNG_EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

    .line 8
    sput-object v2, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

    .line 9
    sput v1, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SOUNDALIVE_SET_SPEED:I

    .line 10
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->findIsMultiSoundOn()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->sIsMultiSoundOn:Ljava/lang/reflect/Method;

    .line 11
    invoke-static {}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->findGetStreamVolume()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->sGetStreamVolume:Ljava/lang/reflect/Method;

    .line 12
    invoke-static {}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->findGetPinDevice()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->sGetPinDevice:Ljava/lang/reflect/Method;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "audio"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    .line 3
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSamsungAudioManagerCompat:Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSamsungAudioManagerCompat:Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

    :goto_0
    return-void
.end method

.method private static findGetPinDevice()Ljava/lang/reflect/Method;
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    const-string v1, "android.media.AudioManager"

    const-string v2, "semGetPinDevice"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/support/samsung/ReflectionExtension;->getReflectionMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static findGetStreamVolume()Ljava/lang/reflect/Method;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "android.media.AudioManager"

    const-string v2, "getStreamVolume"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/support/samsung/ReflectionExtension;->getReflectionMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static findIsMultiSoundOn()Ljava/lang/reflect/Method;
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    const-string v1, "android.media.AudioManager"

    const-string v2, "isMultiSoundOn"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/music/support/samsung/ReflectionExtension;->getReflectionMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceOut(I)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Landroid/media/AudioManager;->semGetDeviceOut(I)I

    move-result p0

    return p0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->getDeviceOut(I)I

    move-result p0

    return p0
.end method

.method public static getEarProtectLimit()I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/media/AudioManagerSdlCompat;->getEarProtectLimitIndex()I

    move-result v0

    return v0
.end method

.method private getPinDevice()I
    .locals 3

    .line 1
    sget-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->sGetPinDevice:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/music/support/samsung/ReflectionExtension;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static isFMActive(Landroid/media/AudioManager;)Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/AudioManagerSdlCompat;->isFMActive(Landroid/media/AudioManager;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFineVolumeSupported()Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v2, 0x318f9

    if-lt v0, v2, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Landroid/media/AudioManager;->semIsFineVolumeSupported()Z

    move-result v0

    return v0

    :cond_1
    const-string v0, "persist.audio.finemediavolume"

    const/4 v2, 0x0

    .line 4
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 5
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->isSupportFineVolume()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method

.method public static isHdmiConnected(Landroid/media/AudioManager;)Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/AudioManagerSdlCompat;->isHdmiConnected(Landroid/media/AudioManager;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isRecordActive(Landroid/media/AudioManager;)Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/AudioManagerSdlCompat;->isRecordActive(Landroid/media/AudioManager;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isSupportGlobalEffect()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "persist.audio.globaleffect"

    .line 2
    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/android/os/SystemPropertiesSdlCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUhqSupported()Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Landroid/media/AudioManager;->semIsUhqSupported()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "persist.audio.uhqa"

    .line 3
    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/android/os/SystemPropertiesSdlCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setSmartVoumeEnable(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/AudioManagerSdlCompat;->setSmartVoumeEnable(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAudioPath()Lcom/samsung/android/app/music/support/android/media/audiopath/AudioPath;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioPath:Lcom/samsung/android/app/music/support/android/media/audiopath/AudioPath;

    if-nez v0, :cond_1

    .line 2
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v1, 0x31895

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Lcom/samsung/android/app/music/support/android/media/audiopath/AudioPathSep2901;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/support/android/media/audiopath/AudioPathSep2901;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioPath:Lcom/samsung/android/app/music/support/android/media/audiopath/AudioPath;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/support/android/media/audiopath/AudioPathLegacy;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/support/android/media/audiopath/AudioPathLegacy;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioPath:Lcom/samsung/android/app/music/support/android/media/audiopath/AudioPath;

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioPath:Lcom/samsung/android/app/music/support/android/media/audiopath/AudioPath;

    return-object v0
.end method

.method public getFineVolume(I)I
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSamsungAudioManagerCompat:Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->getFineVolume(Landroid/media/AudioManager;I)I

    move-result p1

    return p1
.end method

.method public getMediaVolumeInterval(Landroid/content/Context;)I
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v1, 0x31706

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {p1}, Lcom/samsung/android/media/SemSoundAssistantManager;->getMediaVolumeInterval()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getMultiSoundDeviceVolume(Landroid/content/Context;IIZ)I
    .locals 4

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v2, 0x31705

    if-lt v0, v2, :cond_1

    .line 3
    iget-object p3, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    if-nez p3, :cond_0

    .line 4
    new-instance p3, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {p3, p1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/media/SemSoundAssistantManager;->getMultiSoundDeviceVolume(I)I

    move-result p1

    return p1

    :cond_1
    const p1, 0x316a1

    if-lt v0, p1, :cond_4

    .line 6
    sget-object p1, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->sGetStreamVolume:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_4

    .line 7
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    .line 8
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->getPinDevice()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    .line 9
    invoke-static {p1, v0, v2}, Lcom/samsung/android/app/music/support/samsung/ReflectionExtension;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p4, :cond_3

    .line 10
    iget-object p4, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mStreamMaxVolume:Ljava/lang/Integer;

    if-nez p4, :cond_2

    .line 11
    iget-object p4, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p4, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mStreamMaxVolume:Ljava/lang/Integer;

    :cond_2
    mul-int/2addr p3, p1

    .line 12
    iget-object p1, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mStreamMaxVolume:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/2addr p3, p1

    return p3

    :cond_3
    return p1

    :cond_4
    return v1
.end method

.method public isMultiSoundOn(Landroid/content/Context;)Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v2, 0x31705

    if-lt v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {p1}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result p1

    return p1

    :cond_1
    const p1, 0x316a1

    if-lt v0, p1, :cond_2

    .line 6
    sget-object p1, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->sIsMultiSoundOn:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/support/samsung/ReflectionExtension;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public isSafeMediaVolumeDeviceOn()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSamsungAudioManagerCompat:Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->isSafeMediaVolumeDeviceOn()Z

    move-result v0

    return v0
.end method

.method public isSplitSoundOn()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semIsSplitSoundOn()Z

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSamsungAudioManagerCompat:Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->isSplitSoundOn()Z

    move-result v0

    return v0
.end method

.method public setFineVolume(III)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->semSetFineVolume(III)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSamsungAudioManagerCompat:Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->setFineVolume(Landroid/media/AudioManager;III)V

    :goto_0
    return-void
.end method
