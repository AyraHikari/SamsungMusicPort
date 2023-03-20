.class public Lcom/samsung/android/app/music/support/sdl/android/media/MediaPlayerSdlCompat;
.super Ljava/lang/Object;
.source "MediaPlayerSdlCompat.java"


# static fields
.field private static final KEY_PARAMETER_USE_SW_DECODER:I = 0xbb8

.field private static final KEY_PARAMETER_USE_SW_DECODER_M:I = 0x80e8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static disableOffload(Landroid/media/MediaPlayer;)Z
    .locals 2

    const v0, 0x80e8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPlayer;->setParameter(II)Z

    move-result p0

    return p0
.end method

.method public static setSoundAlive(Landroid/media/MediaPlayer;Landroid/os/Parcel;Landroid/os/Parcel;)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaPlayer;->setSoundAlive(Landroid/os/Parcel;Landroid/os/Parcel;)I

    move-result p0

    return p0
.end method
