.class public Lcom/samsung/android/app/music/support/sdl/android/view/ViewSdlCompat;
.super Ljava/lang/Object;
.source "ViewSdlCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static twsetDrawDuringWindowsAnimating(Landroid/view/View;Z)V
    .locals 2

    .line 1
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x837

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->twSetDrawDuringWindowsAnimating(Z)V

    return-void
.end method
