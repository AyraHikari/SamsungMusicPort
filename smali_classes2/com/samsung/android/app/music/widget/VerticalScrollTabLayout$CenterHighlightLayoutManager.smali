.class Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CenterHighlightLayoutManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;,
        Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$OnHighlightPositionChangedListener;
    }
.end annotation


# instance fields
.field private a:I

.field private final b:I

.field private c:Landroid/support/v7/widget/RecyclerView;

.field private d:I

.field private e:I

.field private f:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Transformation;

.field private g:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$OnHighlightPositionChangedListener;

.field private h:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 407
    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    const/4 p1, -0x1

    .line 398
    iput p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->e:I

    .line 408
    iput p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->a:I

    .line 409
    iput p3, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->b:I

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;)I
    .locals 0

    .line 382
    iget p0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->e:I

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;I)I
    .locals 0

    .line 382
    iput p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->e:I

    return p1
.end method

.method private a()V
    .locals 5

    .line 484
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->c:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v0

    .line 489
    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->a:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 490
    iget v1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->b:I

    sub-int v1, v0, v1

    .line 492
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->c:Landroid/support/v7/widget/RecyclerView;

    .line 493
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 494
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->c:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0, v3, v1}, Landroid/support/v7/widget/RecyclerView;->setPadding(IIII)V

    const-string v2, "CenterHighlightLayoutManager"

    .line 495
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "measureCenterRect. paddingTop - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", paddingBottom - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", item height - "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->a:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_2
    iput v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->d:I

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .line 503
    iget v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->d:I

    if-lez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->f:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Transformation;

    if-eqz v0, :cond_1

    .line 508
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->f:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Transformation;

    iget v1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->d:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->b(Landroid/view/View;)Z

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Transformation;->a(Landroid/view/View;IZ)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;Landroid/view/View;)Z
    .locals 0

    .line 382
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->b(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;)Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$OnHighlightPositionChangedListener;
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->g:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$OnHighlightPositionChangedListener;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;Landroid/view/View;)V
    .locals 0

    .line 382
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->a(Landroid/view/View;)V

    return-void
.end method

.method private b(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "CenterHighlightLayoutManager"

    const-string v1, "isHighlighted. view is null"

    .line 514
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 517
    :cond_0
    iget v1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->a:I

    iget v2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->b:I

    add-int/2addr v1, v2

    .line 518
    iget v2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->d:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    sub-int/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 519
    div-int/lit8 v1, v1, 0x2

    if-gt p1, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;IF)V
    .locals 1

    .line 444
    new-instance v0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$1;

    .line 445
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p1, p3}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$1;-><init>(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;Landroid/content/Context;F)V

    .line 451
    invoke-virtual {v0, p2}, Landroid/support/v7/widget/LinearSmoothScroller;->setTargetPosition(I)V

    .line 452
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->startSmoothScroll(Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    return-void
.end method

.method a(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$OnHighlightPositionChangedListener;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->g:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$OnHighlightPositionChangedListener;

    return-void
.end method

.method a(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Transformation;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->f:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Transformation;

    return-void
.end method

.method public onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 422
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->onAttachedToWindow(Landroid/support/v7/widget/RecyclerView;)V

    .line 423
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->c:Landroid/support/v7/widget/RecyclerView;

    .line 424
    new-instance p1, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;-><init>(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->h:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;

    .line 425
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->h:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V
    .locals 0

    .line 430
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->onDetachedFromWindow(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 431
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->h:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;

    if-eqz p1, :cond_0

    .line 432
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->c:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->h:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    :cond_0
    return-void
.end method

.method public onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 3

    .line 457
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->onLayoutCompleted(Landroid/support/v7/widget/RecyclerView$State;)V

    .line 458
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->getChildCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 459
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 461
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    .line 462
    iget v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->a:I

    if-eq p1, v0, :cond_0

    .line 463
    iput p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->a:I

    const-string v0, "CenterHighlightLayoutManager"

    .line 464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLayoutCompleted. child height is changed. old - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->a()V

    .line 468
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->h:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;

    if-eqz p1, :cond_0

    .line 469
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->h:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->c:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager$AutoScrollToCenterScroller;->a(Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    return-void
.end method

.method public onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V
    .locals 0

    .line 479
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onMeasure(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;II)V

    .line 480
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->a()V

    return-void
.end method

.method public smoothScrollToPosition(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;I)V
    .locals 0

    const/high16 p2, 0x44480000    # 800.0f

    .line 439
    invoke-virtual {p0, p1, p3, p2}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$CenterHighlightLayoutManager;->a(Landroid/support/v7/widget/RecyclerView;IF)V

    return-void
.end method
