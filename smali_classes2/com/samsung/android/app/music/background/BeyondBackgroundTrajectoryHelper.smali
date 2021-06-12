.class final Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Rect;

.field private b:Z

.field private c:Lcom/samsung/android/app/music/background/Trajectory;

.field private d:Lcom/samsung/android/app/music/background/Trajectory;

.field private final e:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "Lcom/samsung/android/app/music/background/Trajectory;",
            "Lcom/samsung/android/app/music/background/CoordinateConverter;",
            "Landroid/graphics/Rect;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "Lcom/samsung/android/app/music/background/Trajectory;",
            "Lcom/samsung/android/app/music/background/CoordinateConverter;",
            "Landroid/graphics/Rect;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->a:Landroid/graphics/Rect;

    .line 411
    sget-object v0, Lcom/samsung/android/app/music/background/Trajectory;->b:Lcom/samsung/android/app/music/background/Trajectory$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/background/Trajectory$Companion;->a()Lcom/samsung/android/app/music/background/Trajectory;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->c:Lcom/samsung/android/app/music/background/Trajectory;

    .line 412
    sget-object v0, Lcom/samsung/android/app/music/background/Trajectory;->b:Lcom/samsung/android/app/music/background/Trajectory$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/background/Trajectory$Companion;->a()Lcom/samsung/android/app/music/background/Trajectory;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->d:Lcom/samsung/android/app/music/background/Trajectory;

    .line 945
    new-instance v0, Lcom/samsung/android/app/music/background/BeyondBackgroundKt$getTrajectoryTransformer$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundKt$getTrajectoryTransformer$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function4;

    iput-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->e:Lkotlin/jvm/functions/Function4;

    .line 946
    new-instance v0, Lcom/samsung/android/app/music/background/BeyondBackgroundKt$getTrajectoryTransformer$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundKt$getTrajectoryTransformer$1;-><init>()V

    check-cast v0, Lkotlin/jvm/functions/Function4;

    iput-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->f:Lkotlin/jvm/functions/Function4;

    const/4 v0, -0x1

    .line 415
    iput v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->g:I

    return-void
.end method

.method private final a(F)D
    .locals 4

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const/high16 p1, 0x43340000    # 180.0f

    float-to-double v2, p1

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;F)D
    .locals 0

    .line 408
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->a(F)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;)Landroid/graphics/Rect;
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->a:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;)Z
    .locals 0

    .line 408
    iget-boolean p0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->b:Z

    return p0
.end method


# virtual methods
.method public final a(Z)Lcom/samsung/android/app/music/background/CoordinateConverter;
    .locals 2

    .line 439
    new-instance v0, Lcom/samsung/android/app/music/background/CoordinateConverter;

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f400000    # 0.75f

    goto :goto_0

    :cond_0
    const p1, 0x3f666666    # 0.9f

    :goto_0
    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/background/CoordinateConverter;-><init>(FF)V

    return-object v0
.end method

.method public final a()Lcom/samsung/android/app/music/background/Trajectory;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->c:Lcom/samsung/android/app/music/background/Trajectory;

    return-object v0
.end method

.method public final a(Landroid/graphics/Rect;Z)V
    .locals 4

    const-string v0, "bounds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "SMUSIC-BeyondBackground"

    const-string p2, "boundsChange but bounds is empty"

    .line 418
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 422
    iput v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->g:I

    .line 423
    iput-boolean p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->b:Z

    .line 424
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->a:Landroid/graphics/Rect;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 425
    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->a:Landroid/graphics/Rect;

    .line 913
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "SMUSIC-BeyondBackground"

    .line 426
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "boundsChange myBounds:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->a:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :goto_0
    new-instance v0, Lcom/samsung/android/app/music/background/Trajectory;

    new-instance v1, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper$buildATrajectory$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper$buildATrajectory$1;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    const-wide/16 v2, 0x1770

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/music/background/Trajectory;-><init>(JLkotlin/jvm/functions/Function1;)V

    .line 927
    iput-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->c:Lcom/samsung/android/app/music/background/Trajectory;

    .line 928
    new-instance v0, Lcom/samsung/android/app/music/background/Trajectory;

    new-instance v1, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper$buildBTrajectory$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper$buildBTrajectory$1;-><init>(Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/music/background/Trajectory;-><init>(JLkotlin/jvm/functions/Function1;)V

    .line 929
    iput-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->d:Lcom/samsung/android/app/music/background/Trajectory;

    .line 430
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->e:Lkotlin/jvm/functions/Function4;

    .line 431
    iget-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->c:Lcom/samsung/android/app/music/background/Trajectory;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->a(Z)Lcom/samsung/android/app/music/background/CoordinateConverter;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v2, p1, v3}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->f:Lkotlin/jvm/functions/Function4;

    .line 434
    iget-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->d:Lcom/samsung/android/app/music/background/Trajectory;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->b(Z)Lcom/samsung/android/app/music/background/CoordinateConverter;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, v1, v2, p1, p2}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(FILcom/samsung/android/app/music/background/BeyondBackgroundDrawable;)Z
    .locals 2

    const-string v0, "drawable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->c:Lcom/samsung/android/app/music/background/Trajectory;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/background/Trajectory;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "SMUSIC-BeyondBackground"

    const-string p2, "positionChange but frames is empty."

    .line 455
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->c:Lcom/samsung/android/app/music/background/Trajectory;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/background/Trajectory;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->c:Lcom/samsung/android/app/music/background/Trajectory;

    invoke-virtual {p2}, Lcom/samsung/android/app/music/background/Trajectory;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    rem-int/2addr p1, p2

    .line 460
    iget p2, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->g:I

    if-eq p2, p1, :cond_1

    .line 461
    iput p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->g:I

    .line 462
    invoke-virtual {p3}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->a()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->c:Lcom/samsung/android/app/music/background/Trajectory;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/background/Trajectory;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/background/FrameState;

    .line 937
    invoke-virtual {v0}, Lcom/samsung/android/app/music/background/FrameState;->a()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a(F)V

    .line 938
    invoke-virtual {v0}, Lcom/samsung/android/app/music/background/FrameState;->a()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->b(F)V

    .line 939
    invoke-virtual {v0}, Lcom/samsung/android/app/music/background/FrameState;->b()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->b(I)V

    .line 463
    invoke-virtual {p3}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable;->b()Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->d:Lcom/samsung/android/app/music/background/Trajectory;

    invoke-virtual {p3}, Lcom/samsung/android/app/music/background/Trajectory;->a()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/background/FrameState;

    .line 941
    invoke-virtual {p1}, Lcom/samsung/android/app/music/background/FrameState;->a()Landroid/graphics/PointF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->a(F)V

    .line 942
    invoke-virtual {p1}, Lcom/samsung/android/app/music/background/FrameState;->a()Landroid/graphics/PointF;

    move-result-object p3

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->b(F)V

    .line 943
    invoke-virtual {p1}, Lcom/samsung/android/app/music/background/FrameState;->b()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/background/BeyondBackgroundDrawable$CircleRenderingState;->b(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final b(Z)Lcom/samsung/android/app/music/background/CoordinateConverter;
    .locals 2

    .line 446
    new-instance v0, Lcom/samsung/android/app/music/background/CoordinateConverter;

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz p1, :cond_0

    const p1, 0x3f333333    # 0.7f

    goto :goto_0

    :cond_0
    const p1, 0x3f666666    # 0.9f

    :goto_0
    invoke-direct {v0, v1, p1}, Lcom/samsung/android/app/music/background/CoordinateConverter;-><init>(FF)V

    return-object v0
.end method

.method public final b()Lcom/samsung/android/app/music/background/Trajectory;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundTrajectoryHelper;->d:Lcom/samsung/android/app/music/background/Trajectory;

    return-object v0
.end method
