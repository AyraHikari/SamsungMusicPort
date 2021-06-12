.class public Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

.field private static final GET_STREAM_VOLUME:Ljava/lang/String; = "getStreamVolume"

.field private static final IS_MULTI_SOUND_ON:Ljava/lang/String; = "isMultiSoundOn"

.field private static final PERSIST_AUDIO_FINEMEDIAVOLUME:Ljava/lang/String; = "persist.audio.finemediavolume"

.field private static final PERSIST_AUDIO_GLOBAL_EFFECT:Ljava/lang/String; = "persist.audio.globaleffect"

.field private static final PERSIST_AUDIO_UHQA:Ljava/lang/String; = "persist.audio.uhqa"

.field public static final SAMSUNG_EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

.field public static final SAMSUNG_EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String;

.field public static final SAMSUNG_VOLUME_CHANGED_ACTION:Ljava/lang/String;

.field private static final SEM_GET_PIN_DEVICE:Ljava/lang/String; = "semGetPinDevice"

.field public static final SOUNDALIVE_SET_SPEED:I

.field private static final sGetPinDevice:Ljava/lang/reflect/Method;

.field private static final sGetStreamVolume:Ljava/lang/reflect/Method;

.field private static final sIsMultiSoundOn:Ljava/lang/reflect/Method;


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mSamsungAudioManagerCompat:Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

.field private mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

.field private mStreamMaxVolume:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/16 v1, 0x400

    if-eqz v0, :cond_0

    const-string v0, "android.media.AudioManager"

    const-string v2, "SEM_VOLUME_CHANGED_ACTION"

    const-string v3, ""

    .line 36
    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SAMSUNG_VOLUME_CHANGED_ACTION:Ljava/lang/String;

    const-string v0, "android.media.AudioManager"

    const-string v2, "SEM_EXTRA_VOLUME_STREAM_TYPE"

    const-string v3, ""

    .line 39
    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SAMSUNG_EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

    const-string v0, "android.media.AudioManager"

    const-string v2, "SEM_EXTRA_VOLUME_STREAM_VALUE"

    const-string v3, ""

    .line 42
    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SAMSUNG_EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String;

    const-string v0, "android.media.AUDIO_BECOMING_NOISY_SEC"

    .line 43
    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

    .line 44
    sput v1, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SOUNDALIVE_SET_SPEED:I

    goto :goto_0

    .line 46
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SAMSUNG_VOLUME_CHANGED_ACTION:Ljava/lang/String;

    .line 47
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SAMSUNG_EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SAMSUNG_EXTRA_VOLUME_STREAM_VALUE:Ljava/lang/String;

    const-string v0, "android.media.AUDIO_BECOMING_NOISY_SEC"

    .line 49
    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String;

    .line 50
    sput v1, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->SOUNDALIVE_SET_SPEED:I

    .line 54
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->findIsMultiSoundOn()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->sIsMultiSoundOn:Ljava/lang/reflect/Method;

    .line 56
    invoke-static {}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->findGetStreamVolume()Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->sGetStreamVolume:Ljava/lang/reflect/Method;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "audio"

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    .line 82
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSamsungAudioManagerCompat:Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

    goto :goto_0

    .line 85
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSamsungAudioManagerCompat:Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

    :goto_0
    return-void
.end method

.method private static findGetPinDevice()Ljava/lang/reflect/Method;
    .locals 3

    const-string v0, "android.media.AudioManager"

    const-string v1, "semGetPinDevice"

    const/4 v2, 0x0

    .line 243
    new-array v2, v2, [Ljava/lang/Class;

    .line 244
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static findGetStreamVolume()Ljava/lang/reflect/Method;
    .locals 5

    const-string v0, "android.media.AudioManager"

    const-string v1, "getStreamVolume"

    const/4 v2, 0x2

    .line 237
    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 238
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method private static findIsMultiSoundOn()Ljava/lang/reflect/Method;
    .locals 3

    const-string v0, "android.media.AudioManager"

    const-string v1, "isMultiSoundOn"

    const/4 v2, 0x0

    .line 232
    new-array v2, v2, [Ljava/lang/Class;

    .line 233
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceOut(I)I
    .locals 1

    .line 100
    const v0, 0x0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p0}, Landroid/media/AudioManager;->semGetDeviceOut(I)I

    move-result p0

    return p0

    .line 103
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->getDeviceOut(I)I

    move-result p0

    return p0
.end method

.method public static getEarProtectLimit()I
    .locals 1

    .line 124
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Landroid/media/AudioManager;->semGetEarProtectLimit()I

    move-result v0

    return v0

    .line 127
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/media/AudioManagerSdlCompat;->getEarProtectLimitIndex()I

    move-result v0

    return v0
.end method

.method private getPinDevice()I
    .locals 3

    .line 225
    sget-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->sGetPinDevice:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 228
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->sGetPinDevice:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static isFineVolumeSupported()Z
    .locals 3

    .line 154
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 155
    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "persist.audio.finemediavolume"

    const/4 v1, 0x0

    .line 157
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/support/android/os/SystemPropertiesCompat;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 158
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->isSupportFineVolume()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isSupportGlobalEffect()Z
    .locals 2

    .line 187
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "1"

    const-string v1, "persist.audio.globaleffect"

    .line 191
    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/android/os/SystemPropertiesSdlCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isUhqSupported()Z
    .locals 2

    .line 163
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 164
    const v0, 0x1

    return v0

    :cond_0
    const-string v0, "1"

    const-string v1, "persist.audio.uhqa"

    .line 166
    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/android/os/SystemPropertiesSdlCompat;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setSmartVoumeEnable(Z)V
    .locals 1

    return-void
.end method


# virtual methods
.method public getFineVolume(I)I
    .locals 2

    .line 116
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result p1

    return p1

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSamsungAudioManagerCompat:Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->getFineVolume(Landroid/media/AudioManager;I)I

    move-result p1

    return p1
.end method

.method public getMultiSoundDeviceVolume(Landroid/content/Context;IIZ)I
    .locals 4

    .line 197
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 198
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v2, 0x31705

    if-lt v0, v2, :cond_1

    .line 199
    iget-object p3, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    if-nez p3, :cond_0

    .line 200
    new-instance p3, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {p3, p1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {p1, p2}, Lcom/samsung/android/media/SemSoundAssistantManager;->getMultiSoundDeviceVolume(I)I

    move-result p1

    return p1

    .line 203
    :cond_1
    sget p1, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v0, 0x316a1

    if-lt p1, v0, :cond_4

    .line 204
    sget-object p1, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->sGetStreamVolume:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_4

    .line 205
    sget-object p1, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->sGetStreamVolume:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 206
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->getPinDevice()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {p1, v0, v2}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 205
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p4, :cond_3

    .line 208
    iget-object p4, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mStreamMaxVolume:Ljava/lang/Integer;

    if-nez p4, :cond_2

    .line 209
    iget-object p4, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p4, p2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mStreamMaxVolume:Ljava/lang/Integer;

    :cond_2
    mul-int p3, p3, p1

    .line 211
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

    .line 171
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 172
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v2, 0x31705

    if-lt v0, v2, :cond_1

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    invoke-virtual {p1}, Lcom/samsung/android/media/SemSoundAssistantManager;->isMultiSoundOn()Z

    move-result p1

    return p1

    .line 177
    :cond_1
    sget p1, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const v0, 0x316a1

    if-lt p1, v0, :cond_2

    .line 178
    sget-object p1, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->sIsMultiSoundOn:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    if-eqz p1, :cond_2

    .line 179
    sget-object p1, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->sIsMultiSoundOn:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 132
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semIsSafeMediaVolumeDeviceOn()Z

    move-result v0

    return v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSamsungAudioManagerCompat:Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->isSafeMediaVolumeDeviceOn()Z

    move-result v0

    return v0
.end method

.method public isSplitSoundOn()Z
    .locals 1

    .line 140
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semIsSplitSoundOn()Z

    move-result v0

    return v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSamsungAudioManagerCompat:Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->isSplitSoundOn()Z

    move-result v0

    return v0
.end method

.method public isUsbEarjack()Z
    .locals 3

    .line 90
    sget v0, Lcom/samsung/android/app/music/support/SamsungSdk;->VERSION:I

    const/4 v1, 0x0

    const v2, 0x316a2

    if-lt v0, v2, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v0

    const/16 v2, 0x16

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v1
.end method

.method public setFineVolume(III)V
    .locals 2

    .line 108
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->semSetFineVolume(III)V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mSamsungAudioManagerCompat:Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;

    iget-object v1, p0, Lcom/samsung/android/app/music/support/android/media/AudioManagerCompat;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/samsung/android/app/music/support/sdl/android/media/SamsungAudioManagerCompat;->setFineVolume(Landroid/media/AudioManager;III)V

    :goto_0
    return-void
.end method
