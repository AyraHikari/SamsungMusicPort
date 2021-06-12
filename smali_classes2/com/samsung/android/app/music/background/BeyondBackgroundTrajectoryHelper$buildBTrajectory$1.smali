.class public final Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper$buildBTrajectory$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Float;",
        "Lcom/samsung/android/app/music/background/FrameState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper$buildBTrajectory$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(F)Lcom/samsung/android/app/music/background/FrameState;
    .locals 7

    .line 531
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper$buildBTrajectory$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->a(Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 535
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper$buildBTrajectory$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->b(Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;)Z

    move-result v0

    const v1, 0x400ccccd    # 2.2f

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper$buildBTrajectory$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->a(Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    neg-float v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper$buildBTrajectory$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->a(Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 536
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper$buildBTrajectory$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->b(Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper$buildBTrajectory$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->a(Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41200000    # 10.0f

    :goto_1
    div-float/2addr v1, v2

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper$buildBTrajectory$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->a(Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41a00000    # 20.0f

    goto :goto_1

    .line 539
    :goto_2
    invoke-static {}, Lcom/samsung/android/app/music/background/BeyondBackgroundKt;->a()Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    const-wide/16 v2, 0x1770

    long-to-float v2, v2

    mul-float p1, p1, v2

    const/16 v2, 0x3e8

    int-to-float v2, v2

    div-float/2addr p1, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    add-float/2addr p1, v2

    const/16 v2, 0x78

    int-to-float v2, v2

    mul-float p1, p1, v2

    .line 541
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    .line 542
    iget-object v3, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper$buildBTrajectory$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;

    const/4 v4, 0x2

    int-to-float v4, v4

    div-float v4, p1, v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->a(Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;F)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    neg-float v0, v0

    float-to-double v5, v0

    mul-double v3, v3, v5

    double-to-float v0, v3

    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 543
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper$buildBTrajectory$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->a(Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;F)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    float-to-double v0, v1

    mul-double v3, v3, v0

    double-to-float p1, v3

    iput p1, v2, Landroid/graphics/PointF;->y:F

    const/16 p1, 0xff

    .line 541
    new-instance v0, Lcom/samsung/android/app/music/background/FrameState;

    invoke-direct {v0, v2, p1}, Lcom/samsung/android/app/music/background/FrameState;-><init>(Landroid/graphics/PointF;I)V

    return-object v0

    .line 533
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "buildBTrajectory Bounds is empty. Please check it"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 408
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper$buildBTrajectory$1;->invoke(F)Lcom/samsung/android/app/music/background/FrameState;

    move-result-object p1

    return-object p1
.end method
