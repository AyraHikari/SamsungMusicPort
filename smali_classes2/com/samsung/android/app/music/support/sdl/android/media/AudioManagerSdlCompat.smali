.class public Lcom/samsung/android/app/music/support/sdl/android/media/AudioManagerSdlCompat;
.super Ljava/lang/Object;
.source "AudioManagerSdlCompat.java"


# static fields
.field public static final ACTION_AUDIO_BECOMING_NOISY_SEC:Ljava/lang/String; = "android.media.AUDIO_BECOMING_NOISY_SEC"

.field public static final SOUNDALIVE_SET_EQ_DATA:I = 0x20

.field public static final SOUNDALIVE_SET_EXT_PARAM:I = 0x800

.field public static final SOUNDALIVE_SET_PRESET:I = 0x10

.field public static final SOUNDALIVE_SET_SPEED:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEarProtectLimitIndex()I
    .locals 1

    invoke-static {}, Landroid/media/AudioManager;->getEarProtectLimitIndex()I

    move-result v0

    return v0
.end method

.method public static isFMActive(Landroid/media/AudioManager;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/media/AudioManager;->isFMActive()Z

    move-result p0

    return p0
.end method

.method public static isHdmiConnected(Landroid/media/AudioManager;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/media/AudioManager;->isHdmiConnected()Z

    move-result p0

    return p0
.end method

.method public static isRecordActive(Landroid/media/AudioManager;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/media/AudioManager;->isRecordActive()Z

    move-result p0

    return p0
.end method

.method public static setSmartVoumeEnable(Z)V
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x8fd

    if-ge v0, v1, :cond_0

    .line 2
    invoke-static {p0}, Landroid/media/AudioManager;->setSmartVoumeEnable(Z)V

    :cond_0
    return-void
.end method
