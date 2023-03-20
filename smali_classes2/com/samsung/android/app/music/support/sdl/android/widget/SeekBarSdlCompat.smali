.class public Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat;
.super Ljava/lang/Object;
.source "SeekBarSdlCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setOnSeekBarHoverListener(Landroid/widget/SeekBar;Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$1;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$1;-><init>(Lcom/samsung/android/app/music/support/sdl/android/widget/SeekBarSdlCompat$OnSeekBarHoverListener;)V

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setOnSeekBarHoverListener(Landroid/widget/SeekBar$OnSeekBarHoverListener;)V

    return-void
.end method
