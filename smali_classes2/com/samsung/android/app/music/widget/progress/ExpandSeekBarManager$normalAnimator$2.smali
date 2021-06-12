.class final Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$normalAnimator$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;-><init>(Landroid/content/Context;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/animation/ValueAnimator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$normalAnimator$2;->this$0:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    .line 57
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iget-object v1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$normalAnimator$2;->this$0:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->c(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xfa

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$normalAnimator$2;->this$0:Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;->d(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager;)Landroid/view/animation/Interpolator;

    move-result-object v1

    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 60
    new-instance v1, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$normalAnimator$2$$special$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$normalAnimator$2$$special$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$normalAnimator$2;)V

    check-cast v1, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/samsung/android/app/music/widget/progress/ExpandSeekBarManager$normalAnimator$2;->invoke()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method
