.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper$createSnapScroller$1;
.super Landroid/support/v7/widget/LinearSmoothScroller;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->createSnapScroller(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/LinearSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;

.field final synthetic b:Landroid/support/v7/widget/RecyclerView$LayoutManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$LayoutManager;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper$createSnapScroller$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper$createSnapScroller$1;->b:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-direct {p0, p3}, Landroid/support/v7/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .locals 1

    const-string v0, "displayMetrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr v0, p1

    return v0
.end method

.method protected calculateTimeForScrolling(I)I
    .locals 1

    .line 93
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearSmoothScroller;->calculateTimeForScrolling(I)I

    move-result p1

    const/16 v0, 0x64

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method protected onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
    .locals 3

    const-string p2, "targetView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "action"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper$createSnapScroller$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper$createSnapScroller$1;->b:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->calculateDistanceToFinalSnap(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object p1

    const/4 p2, 0x0

    .line 78
    aget p2, p1, p2

    const/4 v0, 0x1

    .line 79
    aget p1, p1, v0

    .line 81
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper$createSnapScroller$1;->calculateTimeForDeceleration(I)I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 85
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper$createSnapScroller$1;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    check-cast v1, Landroid/view/animation/Interpolator;

    invoke-virtual {p3, p2, p1, v0, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method
