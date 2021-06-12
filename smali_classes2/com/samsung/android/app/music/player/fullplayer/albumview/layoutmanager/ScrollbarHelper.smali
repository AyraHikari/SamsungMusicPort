.class Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/ScrollbarHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I
    .locals 1

    .line 39
    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-nez p5, :cond_0

    .line 42
    invoke-virtual {p4, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p0

    invoke-virtual {p4, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 44
    :cond_0
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p0

    .line 45
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p0, p2

    .line 46
    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getTotalSpace()I

    move-result p1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static a(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;ZZ)I
    .locals 4

    .line 15
    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    .line 17
    invoke-virtual {p4, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p4, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 18
    invoke-virtual {p4, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p4, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eqz p6, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    sub-int/2addr p0, v2

    add-int/lit8 p0, p0, -0x1

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    if-nez p5, :cond_1

    return p0

    .line 24
    :cond_1
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p5

    .line 25
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p6

    sub-int/2addr p5, p6

    .line 24
    invoke-static {p5}, Ljava/lang/Math;->abs(I)I

    move-result p5

    .line 26
    invoke-virtual {p4, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p6

    invoke-virtual {p4, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p3

    sub-int/2addr p6, p3

    invoke-static {p6}, Ljava/lang/Math;->abs(I)I

    move-result p3

    add-int/lit8 p3, p3, 0x1

    int-to-float p4, p5

    int-to-float p3, p3

    div-float/2addr p4, p3

    int-to-float p0, p0

    mul-float p0, p0, p4

    .line 29
    invoke-virtual {p1}, Landroid/support/v7/widget/OrientationHelper;->getStartAfterPadding()I

    move-result p3

    .line 30
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p3, p1

    int-to-float p1, p3

    add-float/2addr p0, p1

    .line 28
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method static b(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/RecyclerView$LayoutManager;Z)I
    .locals 1

    .line 55
    invoke-virtual {p4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-nez p5, :cond_0

    .line 58
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    return p0

    .line 60
    :cond_0
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result p5

    .line 61
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result p1

    sub-int/2addr p5, p1

    .line 63
    invoke-virtual {p4, p2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p4, p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p2

    sub-int/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    int-to-float p2, p5

    int-to-float p1, p1

    div-float/2addr p2, p1

    .line 65
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result p0

    int-to-float p0, p0

    mul-float p2, p2, p0

    float-to-int p0, p2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
