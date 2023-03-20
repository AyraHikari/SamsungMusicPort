.class public Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;
.super Ljava/lang/Object;
.source "AbsSeekBarCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThumbCentralX(Landroid/widget/AbsSeekBar;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semGetThumbBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsSeekBarSdlCompat;->getThumbCentralX(Landroid/widget/AbsSeekBar;)I

    move-result p0

    return p0
.end method

.method public static getThumbCentralY(Landroid/widget/AbsSeekBar;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semGetThumbBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsSeekBarSdlCompat;->getThumbCentralY(Landroid/widget/AbsSeekBar;)I

    move-result p0

    return p0
.end method

.method public static getThumbHeight(Landroid/widget/AbsSeekBar;)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semGetThumbBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsSeekBarSdlCompat;->getThumbHeight(Landroid/widget/AbsSeekBar;)I

    move-result p0

    return p0
.end method

.method public static setMode(Landroid/widget/AbsSeekBar;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->semSetMode(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsSeekBarSdlCompat;->setMode(Landroid/widget/AbsSeekBar;)V

    :goto_0
    return-void
.end method

.method public static setOverlapPointForDualColor(Landroid/widget/AbsSeekBar;I)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsSeekBarSdlCompat;->setOverlapPointForDualColor(Landroid/widget/AbsSeekBar;I)V

    :goto_0
    return-void
.end method
