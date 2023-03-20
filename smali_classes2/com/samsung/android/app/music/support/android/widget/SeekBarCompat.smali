.class public Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat;
.super Ljava/lang/Object;
.source "SeekBarCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$OnSeekBarHoverListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setOnSeekBarHoverListener(Landroid/widget/SeekBar;Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$OnSeekBarHoverListener;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$1;-><init>(Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$OnSeekBarHoverListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->semSetOnSeekBarHoverListener(Landroid/widget/SeekBar$SemOnSeekBarHoverListener;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$2;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$2;-><init>(Lcom/samsung/android/app/music/support/android/widget/SeekBarCompat$OnSeekBarHoverListener;)V

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat;->setOnSeekBarHoverListener(Landroid/widget/SeekBar;Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;)V

    :goto_0
    return-void
.end method
