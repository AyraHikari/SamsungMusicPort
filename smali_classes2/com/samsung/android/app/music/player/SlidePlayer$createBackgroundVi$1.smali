.class final Lcom/samsung/android/app/music/player/SlidePlayer$createBackgroundVi$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/SlidePlayer;->a(F)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/SlidePlayer;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/SlidePlayer;Landroid/view/View;Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer$createBackgroundVi$1;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/SlidePlayer$createBackgroundVi$1;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/app/music/player/SlidePlayer$createBackgroundVi$1;->c:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer$createBackgroundVi$1;->b:Landroid/view/View;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->setVisibility(I)V

    const-string v0, "animation"

    .line 340
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 341
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer$createBackgroundVi$1;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/SlidePlayer;->b(Lcom/samsung/android/app/music/player/SlidePlayer;)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->d()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    int-to-float v0, v0

    sub-float p1, v0, p1

    .line 345
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer$createBackgroundVi$1;->c:Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/MiniBetweenFullBackgroundVi;->a(F)V

    return-void
.end method
