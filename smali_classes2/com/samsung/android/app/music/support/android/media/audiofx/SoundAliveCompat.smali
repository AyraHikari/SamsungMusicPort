.class public Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;
.super Ljava/lang/Object;
.source "SourceFile"


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
.method static constructor <clinit>()V
    .locals 6

    .line 22
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 23
    sput v5, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_NORMAL:I

    .line 24
    sput v4, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_POP:I

    .line 25
    sput v3, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_ROCK:I

    const/4 v0, 0x3

    .line 26
    sput v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_JAZZ:I

    .line 27
    sput v2, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_CLASSIC:I

    .line 28
    sput v1, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_USER:I

    goto :goto_0

    .line 30
    :cond_0
    sput v5, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_NORMAL:I

    .line 31
    sput v4, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_POP:I

    .line 32
    sput v3, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_ROCK:I

    .line 33
    sput v2, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_JAZZ:I

    .line 34
    sput v1, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_CLASSIC:I

    const/16 v0, 0xd

    .line 35
    sput v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->PRESET_USER:I

    :goto_0
    return-void
.end method

.method public constructor <init>(IILcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;)V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SepSoundAliveCompatImpl;-><init>(IILcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->IMPL:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$ISoundAliveCompat;

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$SdlSoundAliveCompatImpl;-><init>(IILcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$OnErrorListener;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->IMPL:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$ISoundAliveCompat;

    :goto_0
    return-void
.end method

.method public static isSupport3DEffect()Z
    .locals 1

    .line 113
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 117
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/support/sdl/android/media/audiofx/SoundAliveSdlCompat;->isSupport3DEffect()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public release()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->IMPL:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$ISoundAliveCompat;

    invoke-interface {v0}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$ISoundAliveCompat;->release()V

    return-void
.end method

.method public set3DEffectPosition(ZD)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat;->IMPL:Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$ISoundAliveCompat;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/music/support/android/media/audiofx/SoundAliveCompat$ISoundAliveCompat;->set3dEffectPosition(ZD)V

    return-void
.end method
