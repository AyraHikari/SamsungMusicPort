.class Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/widget/transition/SlideGestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmoothSlideHandler"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/music/widget/transition/SlideGestureController;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/animation/ValueAnimator;

.field private c:I

.field private d:I

.field private e:F

.field private f:F

.field private g:J

.field private h:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;)V
    .locals 1

    .line 562
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 563
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;)I
    .locals 1

    .line 537
    iget v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->c:I

    return v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->b:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method private a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;)V
    .locals 4

    .line 663
    new-instance v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$1;-><init>(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->e:F

    .line 668
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->f:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 663
    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->b:Landroid/animation/ValueAnimator;

    .line 669
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->b:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$2;-><init>(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;Lcom/samsung/android/app/music/widget/transition/SlideGestureController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 677
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->b:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$3;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler$3;-><init>(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;Lcom/samsung/android/app/music/widget/transition/SlideGestureController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 691
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->b:Landroid/animation/ValueAnimator;

    iget-wide v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->g:J

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 692
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;Z)Z
    .locals 0

    .line 537
    iput-boolean p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->h:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;)F
    .locals 0

    .line 537
    iget p0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->f:F

    return p0
.end method

.method private b(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;)V
    .locals 2

    .line 696
    invoke-static {p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 698
    invoke-static {}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Keep listen prepared state currently false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->d:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    const/4 p1, 0x2

    const-wide/16 v0, 0x32

    .line 701
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 702
    iget p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->d:I

    goto :goto_0

    .line 704
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Capturing failed! Move to stable target slide state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->f:F

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;F)V

    .line 706
    iget v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->f:F

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;F)V

    const/4 v0, 0x0

    .line 707
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;Z)Z

    .line 708
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;Z)Z

    .line 709
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->c(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;Z)Z

    .line 710
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->d(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;Z)Z

    .line 711
    invoke-static {p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;)V

    .line 712
    iput-boolean v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->h:Z

    goto :goto_0

    .line 715
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;)I
    .locals 0

    .line 537
    iget p0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->c:I

    return p0
.end method

.method private c()V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->b:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->b:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    .line 643
    iput-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->b:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;)F
    .locals 0

    .line 537
    iget p0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->e:F

    return p0
.end method


# virtual methods
.method a(FFFJ)V
    .locals 2

    const/4 v0, 0x0

    .line 571
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 572
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->c()V

    .line 574
    iput p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->e:F

    .line 575
    iput p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->f:F

    .line 576
    iget p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->f:F

    iget p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->e:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 578
    iput-wide p4, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->g:J

    const-wide/16 p4, 0x32

    const/4 p2, 0x0

    cmpg-float p2, p3, p2

    if-gez p2, :cond_0

    .line 580
    iput-wide p4, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->g:J

    move p2, p3

    goto :goto_0

    :cond_0
    const p2, 0x466a6000    # 15000.0f

    .line 582
    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const p3, 0x459c4000    # 5000.0f

    invoke-static {p2, p3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 584
    iget-wide v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->g:J

    long-to-float v0, v0

    div-float p3, p2, p3

    div-float/2addr v0, p3

    float-to-int p3, v0

    int-to-long v0, p3

    iput-wide v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->g:J

    .line 585
    iget-wide v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->g:J

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    iput-wide p3, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->g:J

    .line 589
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->c()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Slide  scroll speed : "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", diff rate : "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", duration : "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->g:J

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method a(FFFJZ)V
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    if-nez v0, :cond_0

    return-void

    .line 620
    :cond_0
    invoke-virtual/range {p0 .. p5}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->a(FFFJ)V

    const/4 p1, 0x0

    .line 621
    iput p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->c:I

    const/4 p2, 0x1

    .line 622
    iput-boolean p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->h:Z

    if-nez p6, :cond_1

    .line 625
    sget-object p2, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;->DRAGGING_PREPARED:Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)V

    .line 626
    iput p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->d:I

    .line 628
    invoke-static {}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Send message : UPDATE_SCROLL_WITH_PREPARED "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    .line 631
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 634
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->c()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Send message : UPDATE_SCROLL"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;)V

    :goto_0
    return-void
.end method

.method a()Z
    .locals 1

    .line 567
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->h:Z

    return v0
.end method

.method b()V
    .locals 2

    .line 596
    invoke-static {}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancelScroll()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 597
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 598
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->c()V

    const/4 v0, 0x0

    .line 600
    iput-boolean v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->h:Z

    .line 601
    iget-object v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    if-nez v1, :cond_0

    .line 603
    invoke-static {}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SlideGestureController is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 606
    :cond_0
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;Z)Z

    .line 607
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->b(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;Z)Z

    .line 608
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->c(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;Z)Z

    .line 609
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->d(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;Z)Z

    .line 610
    invoke-static {v1}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 649
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    if-nez v0, :cond_0

    return-void

    .line 653
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 655
    :cond_1
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SmoothSlideHandler;->b(Lcom/samsung/android/app/music/widget/transition/SlideGestureController;)V

    :goto_0
    return-void
.end method
