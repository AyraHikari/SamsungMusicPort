.class final Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;-><init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;)V
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
.field final synthetic this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    .line 624
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1770

    .line 625
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    .line 626
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v1, 0x1

    .line 627
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    const/4 v1, 0x0

    .line 629
    check-cast v1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 630
    new-instance v1, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2$$special$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2$$special$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2;)V

    check-cast v1, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 638
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 639
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 604
    invoke-virtual {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2;->invoke()Landroid/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method
