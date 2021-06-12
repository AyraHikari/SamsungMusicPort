.class final Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$Companion;
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$Companion;

# The value of this static final field might be set in the static constructor
.field private static final n:J = 0x12cL


# instance fields
.field private final c:Lkotlin/Lazy;

.field private final d:Landroid/graphics/Rect;

.field private e:I

.field private f:Landroid/animation/Animator;

.field private g:Z

.field private h:Z

.field private final i:Lkotlin/Lazy;

.field private final j:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final k:Landroid/app/Activity;

.field private final l:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

.field private final m:Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "drawable"

    const-string v4, "getDrawable()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playbackAnimation"

    const-string v4, "getPlaybackAnimation()Landroid/animation/ValueAnimator;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->b:Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$Companion;

    const-wide/16 v0, 0x12c

    .line 750
    sput-wide v0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->n:J

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transitionView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundTrajectoryHelper"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->k:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->l:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    iput-object p3, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->m:Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;

    .line 609
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$drawable$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$drawable$2;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->c:Lkotlin/Lazy;

    .line 612
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->d:Landroid/graphics/Rect;

    .line 623
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$playbackAnimation$2;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->i:Lkotlin/Lazy;

    .line 738
    new-instance p1, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$stopListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$stopListener$1;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;)V

    check-cast p1, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->j:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-void
.end method

.method private final a(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;I)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    .line 708
    new-array v0, v0, [I

    invoke-virtual {p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 709
    new-instance v0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$buildColorAnimation$$inlined$apply$lambda$1;

    invoke-direct {v0, p2, p0, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper$buildColorAnimation$$inlined$apply$lambda$1;-><init>(Landroid/animation/ValueAnimator;Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;)V

    check-cast v0, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 714
    sget-wide v0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->n:J

    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 708
    check-cast p2, Landroid/animation/Animator;

    return-object p2
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;)Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;
    .locals 0

    .line 604
    iget-object p0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->l:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    return-object p0
.end method

.method private final a(FFFF)V
    .locals 6

    .line 664
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->d:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 665
    iget-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->d:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    .line 668
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->c()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;

    move-result-object v4

    const/high16 v5, 0x3f000000    # 0.5f

    if-eqz v2, :cond_2

    .line 670
    invoke-virtual {v4}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->b()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    move-result-object v2

    int-to-float v0, v0

    mul-float p2, p2, v0

    sub-float p2, v0, p2

    invoke-virtual {v2, p2}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a(F)V

    .line 671
    invoke-virtual {v4}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->b()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    move-result-object p2

    int-to-float v1, v1

    mul-float p1, p1, v1

    sub-float p1, v1, p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->b(F)V

    .line 672
    invoke-virtual {v4}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->a()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    move-result-object p1

    mul-float p4, p4, v0

    sub-float/2addr v0, p4

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a(F)V

    .line 673
    invoke-virtual {v4}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->a()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    move-result-object p1

    mul-float v1, v1, p3

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->b(F)V

    .line 674
    invoke-virtual {v4}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->a()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    move-result-object p1

    int-to-float p2, v3

    const p3, 0x3fd9999a    # 1.7f

    mul-float p3, p3, p2

    mul-float p3, p3, v5

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->c(F)V

    .line 675
    invoke-virtual {v4}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->b()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    move-result-object p1

    const/high16 p3, 0x40200000    # 2.5f

    mul-float p2, p2, p3

    mul-float p2, p2, v5

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->c(F)V

    goto :goto_2

    .line 677
    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->b()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    move-result-object v2

    int-to-float v0, v0

    mul-float p1, p1, v0

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a(F)V

    .line 678
    invoke-virtual {v4}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->b()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    move-result-object p1

    int-to-float v1, v1

    mul-float p2, p2, v1

    sub-float p2, v1, p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->b(F)V

    .line 679
    invoke-virtual {v4}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->a()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    move-result-object p1

    mul-float p3, p3, v0

    sub-float/2addr v0, p3

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a(F)V

    .line 680
    invoke-virtual {v4}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->a()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    move-result-object p1

    mul-float p4, p4, v1

    sub-float/2addr v1, p4

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->b(F)V

    .line 681
    invoke-virtual {v4}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->a()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    move-result-object p1

    int-to-float p2, v3

    const p3, 0x3fb70a3d    # 1.43f

    mul-float p3, p3, p2

    mul-float p3, p3, v5

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->c(F)V

    .line 682
    invoke-virtual {v4}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->b()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    move-result-object p1

    const p3, 0x40133333    # 2.3f

    mul-float p2, p2, p3

    mul-float p2, p2, v5

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->c(F)V

    :goto_2
    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;)Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;
    .locals 0

    .line 604
    iget-object p0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->m:Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;

    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;)I
    .locals 0

    .line 604
    iget p0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->e:I

    return p0
.end method

.method private final c()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->c:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;

    return-object v0
.end method

.method private final c(Z)V
    .locals 1

    .line 726
    invoke-virtual {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->a()Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 729
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->j:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 730
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    goto :goto_0

    .line 733
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->j:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_0
    return-void
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;)Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;
    .locals 0

    .line 604
    invoke-direct {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->c()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/animation/ValueAnimator;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->i:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method public final a(IIZ)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 689
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->f:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    if-eqz p3, :cond_1

    .line 691
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x2

    .line 692
    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    .line 693
    invoke-direct {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->c()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->a()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->a(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;I)Landroid/animation/Animator;

    move-result-object p1

    aput-object p1, v0, v1

    const/4 p1, 0x1

    .line 694
    invoke-direct {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->c()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->b()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->a(Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;I)Landroid/animation/Animator;

    move-result-object p2

    aput-object p2, v0, p1

    .line 692
    invoke-virtual {p3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 696
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    .line 691
    check-cast p3, Landroid/animation/Animator;

    iput-object p3, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->f:Landroid/animation/Animator;

    goto :goto_0

    .line 699
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->c()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->a()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a(I)V

    .line 700
    invoke-direct {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->c()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->b()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a(I)V

    .line 701
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->l:Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/TransitionView;->invalidate()V

    :goto_0
    return-void
.end method

.method public final a(Landroid/graphics/Rect;Z)V
    .locals 2

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 652
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->d:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 653
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->m:Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->a(Landroid/graphics/Rect;Z)V

    .line 655
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->m:Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->a()Lcom/samsung/android/app/music/background/Trajectory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/background/Trajectory;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-float p1, p1

    const p2, 0x3dcccccd    # 0.1f

    mul-float p2, p2, p1

    rem-float/2addr p2, p1

    float-to-int p1, p2

    .line 656
    iput p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->e:I

    .line 657
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->m:Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->a()Lcom/samsung/android/app/music/background/Trajectory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/background/Trajectory;->a()Ljava/util/List;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->e:I

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/background/FrameState;

    .line 658
    iget-object p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->m:Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->b()Lcom/samsung/android/app/music/background/Trajectory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/music/background/Trajectory;->a()Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->e:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/background/FrameState;

    .line 659
    invoke-virtual {p2}, Lcom/samsung/android/app/music/background/FrameState;->a()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Lcom/samsung/android/app/music/background/FrameState;->a()Landroid/graphics/PointF;

    move-result-object p2

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Lcom/samsung/android/app/music/background/FrameState;->a()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Lcom/samsung/android/app/music/background/FrameState;->a()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->a(FFFF)V

    .line 660
    iget-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->m:Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;

    iget p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->e:I

    invoke-direct {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->c()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->a(FILcom/samsung/android/app/music/background/BeyondBackgroundDrawable;)Z

    return-void
.end method

.method public final a(Z)V
    .locals 3

    .line 618
    iget-boolean v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->h:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const-string v0, "SMUSIC-BeyondBackground"

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " activity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->k:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iput-boolean p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->h:Z

    .line 621
    iget-boolean v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->g:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->c(Z)V

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .line 647
    invoke-virtual {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->a()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 648
    invoke-virtual {p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->a()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 718
    iget-boolean v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->g:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 719
    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->g:Z

    .line 720
    iget-boolean p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->h:Z

    if-eqz p1, :cond_1

    .line 721
    iget-boolean p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->g:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->c(Z)V

    :cond_1
    return-void
.end method
