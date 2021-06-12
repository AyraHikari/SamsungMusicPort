.class public Lcom/samsung/android/app/music/support/android/widget/AbsSeekBarCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getThumbCentralX(Landroid/widget/AbsSeekBar;)I
    .locals 1

    .line 43
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semGetThumbBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 46
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 50
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsSeekBarSdlCompat;->getThumbCentralX(Landroid/widget/AbsSeekBar;)I

    move-result p0

    return p0
.end method

.method public static getThumbCentralY(Landroid/widget/AbsSeekBar;)I
    .locals 1

    .line 54
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semGetThumbBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 61
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsSeekBarSdlCompat;->getThumbCentralY(Landroid/widget/AbsSeekBar;)I

    move-result p0

    return p0
.end method

.method public static getThumbHeight(Landroid/widget/AbsSeekBar;)I
    .locals 1

    .line 65
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semGetThumbBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 68
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 72
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsSeekBarSdlCompat;->getThumbHeight(Landroid/widget/AbsSeekBar;)I

    move-result p0

    return p0
.end method

.method public static isFluidEnabled(Landroid/widget/AbsSeekBar;)Z
    .locals 1

    .line 19
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->semIsFluidEnabled()Z

    move-result p0

    return p0

    .line 22
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsSeekBarSdlCompat;->isFluidEnabled(Landroid/widget/AbsSeekBar;)Z

    move-result p0

    return p0
.end method

.method public static setFluidEnabled(Landroid/widget/AbsSeekBar;Z)V
    .locals 1

    .line 11
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->semSetFluidEnabled(Z)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsSeekBarSdlCompat;->setFluidEnabled(Landroid/widget/AbsSeekBar;Z)V

    :goto_0
    return-void
.end method

.method public static setMode(Landroid/widget/AbsSeekBar;)V
    .locals 1

    .line 27
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->semSetMode(I)V

    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsSeekBarSdlCompat;->setMode(Landroid/widget/AbsSeekBar;)V

    :goto_0
    return-void
.end method

.method public static setOverlapPointForDualColor(Landroid/widget/AbsSeekBar;I)V
    .locals 1

    .line 35
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0, p1}, Landroid/widget/AbsSeekBar;->semSetOverlapPointForDualColor(I)V

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/widget/AbsSeekBarSdlCompat;->setOverlapPointForDualColor(Landroid/widget/AbsSeekBar;I)V

    :goto_0
    return-void
.end method
