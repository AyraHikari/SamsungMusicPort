.class final Lcom/samsung/android/app/music/util/UiUtils$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:J

.field final synthetic d:Landroid/view/animation/Interpolator;


# direct methods
.method constructor <init>(Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/samsung/android/app/music/util/UiUtils$2;->a:Landroid/view/View;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/util/UiUtils$2;->b:Z

    iput-wide p3, p0, Lcom/samsung/android/app/music/util/UiUtils$2;->c:J

    iput-object p5, p0, Lcom/samsung/android/app/music/util/UiUtils$2;->d:Landroid/view/animation/Interpolator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/samsung/android/app/music/util/UiUtils$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/music/util/UiUtils$2;->b:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/app/music/util/UiUtils$2;->c:J

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/util/UiUtils$2;->d:Landroid/view/animation/Interpolator;

    if-nez v1, :cond_1

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/util/UiUtils$2;->d:Landroid/view/animation/Interpolator;

    .line 525
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/util/UiUtils$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/util/UiUtils$2$1;-><init>(Lcom/samsung/android/app/music/util/UiUtils$2;)V

    .line 527
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 541
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
