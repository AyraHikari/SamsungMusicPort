.class public Lcom/samsung/android/app/music/support/sdl/android/widget/AbsSeekBarSdlCompat;
.super Ljava/lang/Object;
.source "AbsSeekBarSdlCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThumbCentralX(Landroid/widget/AbsSeekBar;)I
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x835

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbCentralX()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getThumbCentralY(Landroid/widget/AbsSeekBar;)I
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x835

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbCentralY()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getThumbHeight(Landroid/widget/AbsSeekBar;)I
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x835

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static setMode(Landroid/widget/AbsSeekBar;)V
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x835

    if-lt v0, v1, :cond_0

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setMode(I)V

    :cond_0
    return-void
.end method

.method public static setOverlapPointForDualColor(Landroid/widget/AbsSeekBar;I)V
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x835

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->setOverlapPointForDualColor(I)V

    :cond_0
    return-void
.end method
