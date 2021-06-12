.class Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;
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
    name = "ScrollToTopRunnable"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

.field private final b:Landroid/support/design/widget/CoordinatorLayout;

.field private final c:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

.field private final d:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->a:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->b:Landroid/support/design/widget/CoordinatorLayout;

    .line 312
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->c:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    .line 313
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->d:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 318
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->d:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;->d()I

    move-result v0

    .line 320
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->d:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 321
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->c:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    return-void

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->d:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;

    invoke-interface {v1}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxContentScrollable;->c()I

    move-result v1

    .line 326
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->c:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 327
    invoke-static {}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->c()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScrollToTopRunnable.run. scroll done or position over 15. pos - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", velocity - "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", min velocity - "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    neg-int v0, v2

    if-lt v1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 331
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->a:Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->b:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior$ScrollToTopRunnable;->c:Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;

    const/4 v4, 0x0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/samsung/android/app/music/milk/store/widget/behavior/ParallaxHeaderScrollBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Lcom/samsung/android/app/music/milk/store/widget/ParallaxHeaderLayout;Landroid/view/View;F)V

    return-void
.end method
