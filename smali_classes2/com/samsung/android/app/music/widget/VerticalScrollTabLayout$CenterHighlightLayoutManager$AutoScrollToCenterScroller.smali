.class Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoScrollToCenterScroller"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

.field private b:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 p1, -0x1

    .line 524
    iput p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$1;)V
    .locals 0

    .line 522
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;-><init>(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;)V

    return-void
.end method

.method private a(I)V
    .locals 5

    .line 579
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 580
    iget-object v1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    .line 581
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 583
    iget-object v3, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    invoke-static {v3, v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->b(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;Landroid/view/View;)V

    .line 584
    iget-object v3, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    invoke-static {v3, v1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->b(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;Landroid/view/View;)V

    .line 585
    iget-object v3, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    invoke-static {v3, v2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->b(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;Landroid/view/View;)V

    .line 587
    iget v3, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->b:I

    if-eq v3, p1, :cond_1

    .line 588
    iput p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->b:I

    const/4 p1, 0x0

    .line 589
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 590
    iget-object v3, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    invoke-virtual {v3, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eq v3, v0, :cond_0

    if-eq v3, v1, :cond_0

    if-eq v3, v2, :cond_0

    .line 592
    iget-object v4, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    invoke-static {v4, v3}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->b(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;Landroid/view/View;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 4

    if-ltz p2, :cond_0

    .line 554
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 555
    iget-object v1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->a(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    add-int/lit8 v0, p2, 0x1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    const-string v1, "CenterHighlightLayoutManager"

    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dockingToCenterPosition. idle. first - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", lastCentered - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    .line 562
    invoke-static {v3}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->a(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", oldFirst - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 560
    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    invoke-static {p2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->a(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;)I

    move-result p2

    if-eq v0, p2, :cond_1

    .line 565
    iget-object p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->a(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;I)I

    .line 566
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 567
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->b(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;)Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$OnHighlightPositionChangedListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 568
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->b(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;)Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$OnHighlightPositionChangedListener;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    .line 569
    invoke-static {p2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->a(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$OnHighlightPositionChangedListener;->a(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 548
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a(Landroid/support/v7/widget/RecyclerView;I)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 0

    .line 539
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 541
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 543
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->a(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;I)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 0

    .line 528
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 529
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    if-gez p1, :cond_0

    return-void

    .line 534
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a(I)V

    return-void
.end method
