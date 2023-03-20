.class public Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;
.super Ljava/lang/Object;
.source "SoundAliveSdlCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$OnSdlErrorListener;,
        Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$LegacyExtra;,
        Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$LegacyPresetConstants;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PRESET_CLASSIC:I = 0x5

.field public static final PRESET_JAZZ:I = 0x4

.field public static final PRESET_NORMAL:I = 0x0

.field public static final PRESET_POP:I = 0x1

.field public static final PRESET_ROCK:I = 0x2

.field public static final PRESET_USER:I = 0xd

.field private static sIsSupportLegacyAPI:Ljava/lang/Boolean;

.field private static sLegacySet3DPosition:Ljava/lang/reflect/Method;


# instance fields
.field private final mAudioSessionId:I

.field private final mOnErrorListener:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$OnSdlErrorListener;

.field private final mPriority:I

.field private mSoundAlive:Landroid/media/audiofx/SoundAlive;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMUSIC-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$OnSdlErrorListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mPriority:I

    .line 3
    iput p2, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mAudioSessionId:I

    .line 4
    iput-object p3, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mOnErrorListener:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$OnSdlErrorListener;

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->ensureSoundAlive()V

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;)Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$OnSdlErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mOnErrorListener:Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$OnSdlErrorListener;

    return-object p0
.end method

.method private ensureSoundAlive()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/media/audiofx/SoundAlive;

    iget v1, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mPriority:I

    iget v2, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mAudioSessionId:I

    invoke-direct {v0, v1, v2}, Landroid/media/audiofx/SoundAlive;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    .line 2
    sget v1, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v2, 0x837

    .line 3
    new-instance v1, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat$1;-><init>(Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;)V

    invoke-virtual {v0, v1}, Landroid/media/audiofx/SoundAlive;->setErrorListener(Landroid/media/audiofx/SoundAlive$OnErrorListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 4
    :goto_0
    sget-object v1, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->LOG_TAG:Ljava/lang/String;

    const-string v2, "ensureSoundAlive()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->release()V

    :goto_1
    return-void
.end method

.method public static isSupport3DEffect()Z
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x8fd

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->isSupportLegacyApi()Z

    move-result v0

    return v0
.end method

.method private static isSupportLegacyApi()Z
    .locals 5

    .line 1
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->sIsSupportLegacyAPI:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    .line 2
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "android.media.audiofx.SoundAlive"

    const-string v4, "set3DPosition"

    .line 3
    invoke-static {v1, v4, v0}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->sLegacySet3DPosition:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    move v2, v3

    .line 4
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->sIsSupportLegacyAPI:Ljava/lang/Boolean;

    .line 5
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->sIsSupportLegacyAPI:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static legacySet3DPosition(Landroid/media/audiofx/SoundAlive;ZD)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->isSupportLegacyApi()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->sLegacySet3DPosition:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    aput-object p2, v1, p1

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/music/support/sdl/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getBandLevelRange()[S
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->ensureSoundAlive()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/media/audiofx/SoundAlive;->getBandLevelRange()[S

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    :goto_0
    sget-object v1, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getBandLevelRange()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->release()V

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [S

    return-object v0
.end method

.method public getNumberOfBands()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->ensureSoundAlive()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/media/audiofx/SoundAlive;->getNumberOfBands()S

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    :goto_0
    sget-object v1, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getNumberOfBands()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->release()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getNumberOfPreset()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->ensureSoundAlive()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {v0}, Landroid/media/audiofx/SoundAlive;->getNumberOfPresets()S

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    :goto_0
    sget-object v1, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->LOG_TAG:Ljava/lang/String;

    const-string v2, "getNumberOfPreset()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->release()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getPresetName(S)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->ensureSoundAlive()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/audiofx/SoundAlive;->getPresetName(S)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getPresetName()"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->release()V

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method public getRoundedStrength(S)S
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->ensureSoundAlive()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/audiofx/SoundAlive;->getRoundedStrength(S)S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getRoundedStrength()"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->release()V

    :cond_1
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public release()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    sget v2, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v3, 0x837

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/audiofx/SoundAlive;->setErrorListener(Landroid/media/audiofx/SoundAlive$OnErrorListener;)V

    .line 4
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    invoke-virtual {v0}, Landroid/media/audiofx/SoundAlive;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    :goto_0
    sget-object v2, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->LOG_TAG:Ljava/lang/String;

    const-string v3, "release()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :goto_1
    iput-object v1, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    :cond_0
    return-void
.end method

.method public set3DEffectPosition(ZD)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->ensureSoundAlive()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-eqz v0, :cond_2

    .line 4
    sget v1, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v2, 0x8fd

    if-lt v1, v2, :cond_1

    .line 5
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/media/audiofx/SoundAlive;->set3DEffectPosition(ZD)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 6
    :goto_0
    sget-object p2, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->LOG_TAG:Ljava/lang/String;

    const-string p3, "set3DEffectPosition()"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->release()V

    goto :goto_1

    :cond_1
    const/16 v2, 0x837

    .line 8
    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->legacySet3DPosition(Landroid/media/audiofx/SoundAlive;ZD)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setBandLevel(SS)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->ensureSoundAlive()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/media/audiofx/SoundAlive;->setBandLevel(SS)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    :goto_0
    sget-object p2, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->LOG_TAG:Ljava/lang/String;

    const-string v0, "setBandLevel()"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->release()V

    :cond_1
    :goto_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->ensureSoundAlive()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/audiofx/SoundAlive;->setEnabled(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setEnabled()"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->release()V

    :cond_1
    :goto_1
    return-void
.end method

.method public setSquarePosition(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->ensureSoundAlive()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/media/audiofx/SoundAlive;->setSquarePostion(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    :goto_0
    sget-object v1, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSquarePosition() row : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", col : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->release()V

    :cond_1
    :goto_1
    return-void
.end method

.method public setStrength(SS)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->ensureSoundAlive()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/media/audiofx/SoundAlive;->setStrength(SS)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 5
    :goto_0
    sget-object v1, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStrength() type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "strength : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->release()V

    :cond_1
    :goto_1
    return-void
.end method

.method public usePreset(S)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->ensureSoundAlive()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->mSoundAlive:Landroid/media/audiofx/SoundAlive;

    if-eqz v0, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/audiofx/SoundAlive;->usePreset(S)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 5
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->LOG_TAG:Ljava/lang/String;

    const-string v1, "usePreset()"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->release()V

    :cond_1
    :goto_1
    return-void
.end method
