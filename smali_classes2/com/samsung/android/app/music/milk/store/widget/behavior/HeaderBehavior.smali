.class public Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;
.super Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field b:Landroid/support/v4/widget/ScrollerCompat;

.field private c:Ljava/lang/Runnable;

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field private h:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;-><init>()V

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->e:I

    .line 37
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->g:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/ViewOffsetBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 33
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->e:I

    .line 37
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->g:I

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HeaderBehavior"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->h:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 318
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->h:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->a()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p4, :cond_2

    if-lt p1, p4, :cond_2

    if-gt p1, p5, :cond_2

    .line 213
    invoke-static {p3, p4, p5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->a(III)I

    move-result p3

    sub-int p4, p1, p3

    .line 215
    invoke-virtual {p0, p4}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->b(I)Z

    move-result p4

    if-nez p4, :cond_0

    return v0

    .line 222
    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->b(Landroid/view/View;)I

    move-result p4

    if-gt p3, p4, :cond_1

    .line 223
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->b(Landroid/view/View;)I

    move-result p3

    :cond_1
    if-eq p1, p3, :cond_2

    .line 227
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->a(I)Z

    sub-int v0, p1, p3

    :cond_2
    return v0
.end method

.method a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    return-void
.end method

.method protected final a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;IIF)Z"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->c:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 255
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->c:Ljava/lang/Runnable;

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->b:Landroid/support/v4/widget/ScrollerCompat;

    if-nez v0, :cond_1

    .line 259
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->b:Landroid/support/v4/widget/ScrollerCompat;

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->b:Landroid/support/v4/widget/ScrollerCompat;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->a()I

    move-result v3

    const/4 v4, 0x0

    .line 267
    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, p3

    move v9, p4

    .line 266
    invoke-virtual/range {v1 .. v9}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 271
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->b:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {p3}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 272
    new-instance p3, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;

    invoke-direct {p3, p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;-><init>(Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->c:Ljava/lang/Runnable;

    .line 273
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->c:Ljava/lang/Runnable;

    invoke-static {p2, p1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1

    .line 276
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    const/4 p1, 0x0

    return p1
.end method

.method a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 290
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected a(Landroid/view/View;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method b()I
    .locals 1

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->a()I

    move-result v0

    return v0
.end method

.method protected b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;I)I"
        }
    .end annotation

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 197
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p1

    return p1
.end method

.method protected final b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;III)I"
        }
    .end annotation

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->b()I

    move-result v0

    sub-int v4, v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    .line 247
    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result p1

    return p1
.end method

.method b(Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    neg-int p1, p1

    return p1
.end method

.method protected b(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 294
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 295
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    .line 296
    invoke-virtual {p1, p2, v0, p3}, Landroid/support/design/widget/CoordinatorLayout;->isPointInChildBounds(Landroid/view/View;II)Z

    move-result p1

    return p1
.end method

.method protected c(Landroid/view/View;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)I"
        }
    .end annotation

    .line 313
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 54
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->g:I

    if-gez v0, :cond_0

    .line 55
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->g:I

    .line 58
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 61
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->d:Z

    if-eqz v0, :cond_1

    return v2

    .line 69
    :cond_1
    invoke-static {p3}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 81
    :pswitch_0
    iget p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->e:I

    if-ne p1, v1, :cond_2

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p1

    if-ne p1, v1, :cond_3

    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {p3, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    .line 92
    iget p2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->f:I

    sub-int p2, p1, p2

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent. move. yDiff - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", touchSlop - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->g:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->g:I

    if-le p2, v0, :cond_4

    .line 95
    iput-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->d:Z

    .line 96
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->f:I

    goto :goto_0

    .line 103
    :pswitch_1
    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->d:Z

    .line 104
    iput v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->e:I

    .line 105
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->h:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_4

    .line 106
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->h:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 107
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->h:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 71
    :pswitch_2
    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->d:Z

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 73
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->f:I

    .line 74
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->e:I

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->d()V

    .line 113
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->h:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_5

    .line 114
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->h:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 117
    :cond_5
    iget-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->d:Z

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 122
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->g:I

    if-gez v0, :cond_0

    .line 123
    invoke-virtual {p1}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->g:I

    .line 130
    :cond_0
    invoke-static {p3}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 143
    :pswitch_0
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->e:I

    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    return v3

    .line 148
    :cond_1
    invoke-virtual {p3, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    .line 149
    iget v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->f:I

    sub-int/2addr v2, v0

    .line 151
    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->d:Z

    if-nez v3, :cond_3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->g:I

    if-le v3, v4, :cond_3

    .line 152
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->d:Z

    if-lez v2, :cond_2

    .line 154
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->g:I

    sub-int/2addr v2, v3

    goto :goto_0

    .line 156
    :cond_2
    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->g:I

    add-int/2addr v2, v3

    :cond_3
    :goto_0
    move v6, v2

    .line 160
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->d:Z

    if-eqz v2, :cond_6

    .line 161
    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->f:I

    .line 162
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTouchEvent. last motion - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->b(Landroid/view/View;)I

    move-result v7

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    goto :goto_1

    .line 170
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->h:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_4

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->h:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->h:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    invoke-virtual {v0, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->h:Landroid/view/VelocityTracker;

    iget v4, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->e:I

    .line 174
    invoke-static {v0, v4}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v10

    .line 175
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->c(Landroid/view/View;)I

    move-result v0

    neg-int v8, v0

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    .line 179
    :cond_4
    :pswitch_2
    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->d:Z

    .line 180
    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->e:I

    .line 181
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->h:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_6

    .line 182
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->h:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->h:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 132
    :pswitch_3
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 133
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->f:I

    .line 134
    invoke-virtual {p3, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->e:I

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->d()V

    goto :goto_1

    :cond_5
    return v3

    .line 189
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->h:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_7

    .line 190
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->h:Landroid/view/VelocityTracker;

    invoke-virtual {p1, p3}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_7
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
