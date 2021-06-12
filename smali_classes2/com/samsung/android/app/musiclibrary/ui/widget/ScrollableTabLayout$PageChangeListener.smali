.class final Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PageChangeListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 466
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 3

    .line 472
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->c:I

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->b:I

    .line 473
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->c:I

    const-string v0, "ScrollableTabLayout"

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageScrollStateChanged() state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 477
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 6

    const-string v0, "ScrollableTabLayout"

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageScrolled() pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", offset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", offsetPixels="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 486
    invoke-static {v0, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->b(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Ljava/util/ArrayList;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-eq p3, v0, :cond_0

    goto/16 :goto_2

    .line 493
    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->d(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Landroid/widget/LinearLayout;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p3

    if-eqz p3, :cond_9

    if-ltz p1, :cond_9

    if-lt p1, p3, :cond_1

    goto/16 :goto_1

    .line 496
    :cond_1
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->e(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Z

    move-result p3

    if-nez p3, :cond_2

    return-void

    .line 500
    :cond_2
    iget p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->c:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p3, v0, :cond_4

    iget p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->c:I

    if-ne p3, v1, :cond_3

    iget p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->b:I

    if-eq p3, v0, :cond_4

    :cond_3
    iget p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->c:I

    if-nez p3, :cond_8

    iget p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->b:I

    if-ne p3, v1, :cond_8

    .line 502
    :cond_4
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;Z)V

    .line 504
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    .line 612
    invoke-static {p3}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 613
    check-cast p3, Landroid/view/View;

    .line 505
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->b(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Ljava/util/ArrayList;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    invoke-static {p3, p1}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p3, :cond_5

    .line 506
    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->h()F

    move-result v4

    sub-float/2addr v4, v3

    .line 507
    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->h()F

    move-result v5

    mul-float v4, v4, p2

    sub-float/2addr v5, v4

    invoke-static {p3, v5, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;FZILjava/lang/Object;)V

    .line 510
    :cond_5
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->b(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Ljava/util/ArrayList;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    add-int/lit8 v4, p1, 0x1

    invoke-static {p3, v4}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    if-eqz p3, :cond_6

    .line 511
    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->h()F

    move-result v4

    sub-float/2addr v4, v3

    mul-float v4, v4, p2

    add-float/2addr v4, v3

    .line 512
    invoke-static {p3, v4, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;FZILjava/lang/Object;)V

    .line 515
    :cond_6
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->g(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)V

    .line 517
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {p3, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;IF)V

    goto :goto_0

    .line 616
    :cond_7
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener$onPageScrolled$$inlined$doOnLayout$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener$onPageScrolled$$inlined$doOnLayout$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;IF)V

    check-cast v0, Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p3, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 520
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->d(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_8
    return-void

    :cond_9
    :goto_1
    return-void

    :cond_a
    :goto_2
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7

    const-string v0, "ScrollableTabLayout"

    .line 527
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageSelected() pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", selectedTabPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->h(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", tabs.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->b(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", adapter.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 525
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->b(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->c(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_3

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->h(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)I

    move-result v0

    if-eq v0, p1, :cond_4

    .line 535
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->c:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->b:I

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    const/4 v3, 0x1

    .line 537
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->b(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;)Ljava/util/ArrayList;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$PageChangeListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout;Lcom/samsung/android/app/musiclibrary/ui/widget/ScrollableTabLayout$Tab;ZZILjava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    :goto_3
    return-void
.end method
