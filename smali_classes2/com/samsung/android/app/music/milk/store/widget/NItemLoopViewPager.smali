.class public Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;
.super Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;
.source "SourceFile"


# instance fields
.field private a:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 80
    invoke-super/range {p0 .. p5}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->onLayout(ZIIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 75
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->onSizeChanged(IIII)V

    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 3

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->a:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    if-eqz v0, :cond_1

    .line 21
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;

    if-eqz v0, :cond_0

    .line 22
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->a:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->a(Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;)V

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->a:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;->a(Landroid/support/v4/view/ViewPager;)V

    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Should use NItemPagerAdapter if use LayoutManager!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 32
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->setBoundaryLooping(Z)V

    .line 33
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->setBoundaryCaching(Z)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 35
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->setBoundaryLooping(Z)V

    .line 36
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->setBoundaryCaching(Z)V

    goto :goto_1

    .line 38
    :cond_3
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->setBoundaryLooping(Z)V

    .line 39
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->setBoundaryCaching(Z)V

    .line 42
    :goto_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    return-void
.end method

.method public setLayoutManager(Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;)V
    .locals 2

    .line 48
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->a:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 55
    instance-of v1, p1, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    if-eqz v1, :cond_1

    .line 56
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/widget/LoopPagerAdapterWrapper;->b()Landroid/support/v4/view/PagerAdapter;

    move-result-object p1

    goto :goto_0

    .line 57
    :cond_1
    instance-of v1, p1, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_3

    .line 61
    instance-of v0, p1, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;

    if-eqz v0, :cond_3

    .line 65
    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemLoopViewPager;->a:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->a(Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;)V

    return-void

    .line 62
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Should use NItemPagerAdapter if use LayoutManager!!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
