.class public Lcom/samsung/android/app/music/support/sdl/samsung/touchwiz/widget/TwAbsListViewSdlCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static semEnableGoToTop(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 17
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x8fe

    if-lt v0, v1, :cond_0

    .line 18
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->semEnableGoToTop(Z)V

    :cond_0
    return-void
.end method

.method public static twSetFluidScrollEnabled(Lcom/sec/android/touchwiz/widget/TwAbsListView;Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 27
    sget v0, Lcom/samsung/android/app/music/support/sdl/Sdl;->VERSION:I

    const/16 v1, 0x8fd

    if-lt v0, v1, :cond_0

    .line 28
    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAbsListView;->twSetFluidScrollEnabled(Z)V

    :cond_0
    return-void
.end method
