.class public final Lcom/samsung/android/app/music/player/SlidePlayer$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/SlidePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 656
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 656
    invoke-direct {p0}, Lcom/samsung/android/app/music/player/SlidePlayer$Companion;-><init>()V

    return-void
.end method

.method private final a(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
    .locals 4

    .line 669
    new-instance v0, Lcom/samsung/android/app/music/player/SlidePlayer$Companion$createLinearAnimator$animator$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/SlidePlayer$Companion$createLinearAnimator$animator$1;-><init>()V

    check-cast v0, Landroid/animation/TypeEvaluator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 673
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 669
    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 674
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string p1, "animator"

    .line 675
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/player/SlidePlayer$Companion;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 656
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/SlidePlayer$Companion;->a(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method
