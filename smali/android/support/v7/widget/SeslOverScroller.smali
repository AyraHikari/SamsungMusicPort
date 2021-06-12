.class Landroid/support/v7/widget/SeslOverScroller;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION:I = 0xfa

.field private static final FLING_MODE:I = 0x1

.field private static final SCROLL_MODE:I


# instance fields
.field private final mFlywheel:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMode:I

.field private final mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

.field private final mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x1

    .line 62
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SeslOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FF)V
    .locals 0

    const/4 p3, 0x1

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;FFZ)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2, p5}, Landroid/support/v7/widget/SeslOverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    .line 74
    new-instance p2, Landroid/support/v7/widget/SeslScroller$ViscousFluidInterpolator;

    invoke-direct {p2}, Landroid/support/v7/widget/SeslScroller$ViscousFluidInterpolator;-><init>()V

    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/SeslOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 76
    iput-boolean p3, p0, Landroid/support/v7/widget/SeslOverScroller;->mFlywheel:Z

    .line 77
    new-instance p2, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-direct {p2, p1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    .line 78
    new-instance p2, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-direct {p2, p1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    const/4 p1, 0x0

    .line 80
    const p2, 0x0

    if-nez p2, :cond_1

    .line 81
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslOverScroller;->setSmoothScrollEnabled(Z)V

    const-string p1, "SeslOverScroller"

    const-string p2, "does NOT support Smoothscroll booster thus Smoothscroll\'s disabled"

    .line 82
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .line 530
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->finish()V

    .line 531
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->finish()V

    return-void
.end method

.method public computeScrollOffset()Z
    .locals 5

    .line 299
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslOverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 303
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mMode:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 321
    :pswitch_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$000(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    .line 322
    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->finish()V

    .line 326
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$000(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->update()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    .line 327
    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->continueWhenFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 328
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->finish()V

    goto :goto_0

    .line 305
    :pswitch_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 308
    iget-object v2, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v2}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$600(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 310
    iget-object v2, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v2}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$500(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v2

    int-to-long v3, v2

    cmp-long v3, v0, v3

    if-gez v3, :cond_2

    .line 312
    iget-object v3, p0, Landroid/support/v7/widget/SeslOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 313
    iget-object v1, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->updateScroll(F)V

    .line 314
    iget-object v1, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->updateScroll(F)V

    goto :goto_0

    .line 316
    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslOverScroller;->abortAnimation()V

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public extendDuration(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->extendDuration(I)V

    .line 255
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->extendDuration(I)V

    return-void
.end method

.method public fling(IIIIIIII)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    .line 397
    invoke-virtual/range {v0 .. v10}, Landroid/support/v7/widget/SeslOverScroller;->fling(IIIIIIIIII)V

    return-void
.end method

.method public fling(IIIIIIIIII)V
    .locals 12

    move-object v0, p0

    .line 436
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslOverScroller;->mFlywheel:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslOverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    iget-object v1, v0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$200(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)F

    move-result v1

    .line 438
    iget-object v2, v0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v2}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$200(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)F

    move-result v2

    move v3, p3

    int-to-float v4, v3

    .line 439
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    move/from16 v5, p4

    int-to-float v6, v5

    .line 440
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v7

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    add-float/2addr v4, v1

    float-to-int v1, v4

    add-float/2addr v6, v2

    float-to-int v2, v6

    move v5, v1

    goto :goto_0

    :cond_0
    move v3, p3

    :cond_1
    move/from16 v5, p4

    :cond_2
    move v2, v5

    move v5, v3

    :goto_0
    const/4 v1, 0x1

    .line 446
    iput v1, v0, Landroid/support/v7/widget/SeslOverScroller;->mMode:I

    .line 447
    iget-object v3, v0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    move v4, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p9

    invoke-virtual/range {v3 .. v8}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->fling(IIIII)V

    .line 448
    iget-object v6, v0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    move v7, p2

    move v8, v2

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p10

    invoke-virtual/range {v6 .. v11}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->fling(IIIII)V

    return-void
.end method

.method public fling(IIIIIIIIIIZ)V
    .locals 12

    move-object v0, p0

    .line 455
    iget-boolean v1, v0, Landroid/support/v7/widget/SeslOverScroller;->mFlywheel:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslOverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p11, :cond_0

    .line 456
    iget-object v1, v0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$200(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)F

    move-result v1

    .line 457
    iget-object v2, v0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v2}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$200(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)F

    move-result v2

    move v3, p3

    int-to-float v4, v3

    .line 458
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v5

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    move/from16 v5, p4

    int-to-float v6, v5

    .line 459
    invoke-static {v6}, Ljava/lang/Math;->signum(F)F

    move-result v7

    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v8

    cmpl-float v7, v7, v8

    if-nez v7, :cond_2

    add-float/2addr v4, v1

    float-to-int v1, v4

    add-float/2addr v6, v2

    float-to-int v2, v6

    move v5, v1

    goto :goto_0

    :cond_0
    move v3, p3

    :cond_1
    move/from16 v5, p4

    :cond_2
    move v2, v5

    move v5, v3

    :goto_0
    const/4 v1, 0x1

    .line 465
    iput v1, v0, Landroid/support/v7/widget/SeslOverScroller;->mMode:I

    .line 466
    iget-object v3, v0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    move v4, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p9

    invoke-virtual/range {v3 .. v8}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->fling(IIIII)V

    .line 467
    iget-object v6, v0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    move v7, p2

    move v8, v2

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p10

    invoke-virtual/range {v6 .. v11}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->fling(IIIII)V

    return-void
.end method

.method protected fling(IIIIIIIIZ)V
    .locals 12

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v11, p9

    .line 403
    invoke-virtual/range {v0 .. v11}, Landroid/support/v7/widget/SeslOverScroller;->fling(IIIIIIIIIIZ)V

    return-void
.end method

.method public final forceFinished(Z)V
    .locals 2

    .line 158
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    iget-object v1, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v1, p1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$002(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;Z)Z

    move-result p1

    invoke-static {v0, p1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$002(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;Z)Z

    return-void
.end method

.method public getCurrVelocity()F
    .locals 4

    .line 185
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$200(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)F

    move-result v0

    float-to-double v0, v0

    iget-object v2, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v2}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$200(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public final getCurrX()I
    .locals 1

    .line 167
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$100(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getCurrY()I
    .locals 1

    .line 176
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$100(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$500(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$500(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public final getFinalX()I
    .locals 1

    .line 212
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$400(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getFinalY()I
    .locals 1

    .line 221
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$400(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartX()I
    .locals 1

    .line 194
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$300(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final getStartY()I
    .locals 1

    .line 203
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$300(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .line 146
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$000(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$000(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverScrolled()Z
    .locals 1

    .line 518
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$000(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$700(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    .line 519
    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$000(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$700(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrollingInDirection(FF)Z
    .locals 3

    .line 551
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v0}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$400(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$300(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 552
    iget-object v1, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$400(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v2}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$300(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 553
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslOverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_0

    .line 554
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p1

    int-to-float p2, v1

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result p2

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public notifyHorizontalEdgeReached(III)V
    .locals 1

    .line 484
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method public notifyVerticalEdgeReached(III)V
    .locals 1

    .line 501
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->notifyEdgeReached(III)V

    return-void
.end method

.method public setFinalX(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 273
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method public setFinalY(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->setFinalPosition(I)V

    return-void
.end method

.method public final setFriction(F)V
    .locals 1

    .line 135
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->setFriction(F)V

    .line 136
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->setFriction(F)V

    return-void
.end method

.method setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    if-nez p1, :cond_0

    .line 123
    new-instance p1, Landroid/support/v7/widget/SeslScroller$ViscousFluidInterpolator;

    invoke-direct {p1}, Landroid/support/v7/widget/SeslScroller$ViscousFluidInterpolator;-><init>()V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/SeslOverScroller;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public setRegulationEnabled(Z)V
    .locals 1

    .line 570
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->setRegulationEnabled(Z)V

    .line 571
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->setRegulationEnabled(Z)V

    return-void
.end method

.method public setSmoothScrollEnabled(Z)V
    .locals 1

    .line 562
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->setMode(I)V

    .line 563
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->setMode(I)V

    return-void
.end method

.method public springBack(IIIIII)Z
    .locals 2

    const/4 v0, 0x1

    .line 387
    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mMode:I

    .line 390
    iget-object v1, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v1, p1, p3, p4}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->springback(III)Z

    move-result p1

    .line 391
    iget-object p3, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {p3, p2, p5, p6}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->springback(III)Z

    move-result p2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public startScroll(IIII)V
    .locals 6

    const/16 v5, 0xfa

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 352
    invoke-virtual/range {v0 .. v5}, Landroid/support/v7/widget/SeslOverScroller;->startScroll(IIIII)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 1

    const/4 v0, 0x0

    .line 369
    iput v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mMode:I

    .line 370
    iget-object v0, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {v0, p1, p3, p5}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->startScroll(III)V

    .line 371
    iget-object p1, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-virtual {p1, p2, p4, p5}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->startScroll(III)V

    return-void
.end method

.method public timePassed()I
    .locals 6

    .line 542
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 543
    iget-object v2, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerX:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v2}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$600(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)J

    move-result-wide v2

    iget-object v4, p0, Landroid/support/v7/widget/SeslOverScroller;->mScrollerY:Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;

    invoke-static {v4}, Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;->access$600(Landroid/support/v7/widget/SeslOverScroller$SplineOverScroller;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
