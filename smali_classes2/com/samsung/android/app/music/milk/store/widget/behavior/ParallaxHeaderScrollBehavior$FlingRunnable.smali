.class Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

.field private final b:Landroid/support/design/widget/CoordinatorLayout;

.field private final c:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->a:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 343
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->d:I

    .line 348
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->b:Landroid/support/design/widget/CoordinatorLayout;

    .line 349
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->c:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 354
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->c:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->a:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->c:Landroid/support/v4/widget/ScrollerCompat;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->a:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a(Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->a:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 360
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->e:I

    if-eqz v1, :cond_1

    .line 361
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->a:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->e:I

    sub-int/2addr v0, v1

    move v4, v0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 364
    :goto_0
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->d:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v1, :cond_3

    if-eqz v4, :cond_3

    if-lez v4, :cond_2

    .line 366
    iput v3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->d:I

    goto :goto_1

    .line 368
    :cond_2
    iput v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->d:I

    .line 372
    :cond_3
    :goto_1
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->d:I

    if-ne v0, v3, :cond_4

    .line 373
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->a:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->c:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result v1

    neg-int v1, v1

    if-ne v0, v1, :cond_5

    .line 374
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->a:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->b:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->c:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)V

    return-void

    .line 377
    :cond_4
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->d:I

    if-ne v0, v2, :cond_5

    .line 378
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->a:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a()I

    move-result v0

    if-nez v0, :cond_5

    .line 379
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->a:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->b:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->c:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)V

    return-void

    .line 384
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->a:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->b(Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 385
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->c:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getScrollRange()I

    move-result v0

    neg-int v5, v0

    const/4 v6, 0x0

    .line 387
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->a:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->b:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->c:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    .line 388
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->c:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 390
    :cond_6
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->c()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FlingRunnable.run. but scrolling now. - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->a:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->b(Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->a:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->e:I

    goto :goto_3

    .line 394
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->a:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->b:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$FlingRunnable;->c:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;)V

    :goto_3
    return-void

    :cond_8
    :goto_4
    return-void
.end method
