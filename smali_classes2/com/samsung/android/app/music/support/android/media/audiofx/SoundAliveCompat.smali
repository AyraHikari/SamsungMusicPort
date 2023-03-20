.class public Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;
.super Ljava/lang/Object;
.source "SoundAliveCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl;,
        Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;,
        Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$ISoundAliveCompat;,
        Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;,
        Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyExtra;,
        Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$LegacyPresetConstants;
    }
.end annotation


# static fields
.field public static final DEFAULT_PRIORITY:I

.field public static final PRESET_CLASSIC:I

.field public static final PRESET_JAZZ:I

.field public static final PRESET_NORMAL:I

.field public static final PRESET_POP:I

.field public static final PRESET_ROCK:I

.field public static final PRESET_USER:I


# instance fields
.field private final IMPL:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$ISoundAliveCompat;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 2
    sput v5, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_NORMAL:I

    .line 3
    sput v4, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_POP:I

    .line 4
    sput v3, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_ROCK:I

    const/4 v0, 0x3

    .line 5
    sput v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_JAZZ:I

    .line 6
    sput v2, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_CLASSIC:I

    .line 7
    sput v1, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_USER:I

    goto :goto_0

    .line 8
    :cond_0
    sput v5, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_NORMAL:I

    .line 9
    sput v4, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_POP:I

    .line 10
    sput v3, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_ROCK:I

    .line 11
    sput v2, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_JAZZ:I

    .line 12
    sput v1, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_CLASSIC:I

    const/16 v0, 0xd

    .line 13
    sput v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_USER:I

    :goto_0
    return-void
.end method

.method public constructor <init>(IILcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;-><init>(IILcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->IMPL:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$ISoundAliveCompat;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl;-><init>(IILcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->IMPL:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$ISoundAliveCompat;

    :goto_0
    return-void
.end method

.method public static isSupport3DEffect()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->isSupport3DEffect()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->IMPL:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$ISoundAliveCompat;

    invoke-interface {v0}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$ISoundAliveCompat;->release()V

    return-void
.end method

.method public set3DEffectPosition(ZD)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->IMPL:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$ISoundAliveCompat;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$ISoundAliveCompat;->set3dEffectPosition(ZD)V

    return-void
.end method
