.class public Lcom/samsung/android/app/music/support/android/view/ViewCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static twSetDrawDuringWindowsAnimating(Landroid/view/View;Z)V
    .locals 1

    .line 12
    sget-boolean v0, Lcom/samsung/android/app/music/support/SamsungSdk;->SUPPORT_SEP:Z

    if-nez v0, :cond_0

    .line 13
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/support/sdl/android/view/ViewSdlCompat;->twsetDrawDuringWindowsAnimating(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method
