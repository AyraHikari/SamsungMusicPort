.class public final Lcom/google/android/youtube/player/internal/n;
.super Landroid/widget/FrameLayout;


# virtual methods
.method protected final onMeasure(II)V
    .locals 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v0, v5, :cond_0

    if-ne v1, v5, :cond_0

    goto :goto_3

    :cond_0
    const v6, 0x3fe374bc    # 1.777f

    if-eq v0, v5, :cond_6

    const/high16 v7, -0x80000000

    if-ne v0, v7, :cond_1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    if-eq v1, v5, :cond_5

    if-ne v1, v7, :cond_2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    if-ne v0, v7, :cond_4

    if-ne v1, v7, :cond_4

    int-to-float v0, v3

    int-to-float v1, v2

    div-float/2addr v1, v6

    cmpg-float v4, v0, v1

    if-gez v4, :cond_3

    goto :goto_1

    :cond_3
    float-to-int v3, v1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_3

    :cond_5
    :goto_0
    int-to-float v0, v3

    :goto_1
    mul-float v0, v0, v6

    float-to-int v2, v0

    goto :goto_3

    :cond_6
    :goto_2
    int-to-float v0, v2

    div-float/2addr v0, v6

    float-to-int v3, v0

    :goto_3
    invoke-static {v2, p1}, Lcom/google/android/youtube/player/internal/n;->resolveSize(II)I

    move-result p1

    invoke-static {v3, p2}, Lcom/google/android/youtube/player/internal/n;->resolveSize(II)I

    move-result p2

    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method
