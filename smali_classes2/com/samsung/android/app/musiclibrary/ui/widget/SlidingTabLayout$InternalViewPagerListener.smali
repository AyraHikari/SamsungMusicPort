.class Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalViewPagerListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$1;)V
    .locals 0

    .line 556
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 586
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->c:I

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->b:I

    .line 587
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->c:I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 564
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildCount()I

    move-result p3

    if-eqz p3, :cond_6

    if-ltz p1, :cond_6

    if-lt p1, p3, :cond_0

    goto :goto_1

    .line 569
    :cond_0
    iget p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->c:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    iget p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->c:I

    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    iget p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->b:I

    if-eq p3, v0, :cond_2

    :cond_1
    iget p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->c:I

    if-nez p3, :cond_5

    iget p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->b:I

    if-ne p3, v1, :cond_5

    .line 574
    :cond_2
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    .line 575
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    .line 576
    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 577
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    :cond_4
    add-int/2addr p3, v1

    int-to-float p3, p3

    mul-float p3, p3, p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p3, v0

    float-to-int p3, p3

    .line 579
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-static {v0, p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;II)V

    .line 580
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->a(IF)V

    :cond_5
    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 592
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->c:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->b:I

    if-nez v0, :cond_1

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    const/4 v1, -0x1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;II)V

    .line 596
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabStrip;->a(IF)V

    .line 598
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout$InternalViewPagerListener;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;I)V

    return-void
.end method
