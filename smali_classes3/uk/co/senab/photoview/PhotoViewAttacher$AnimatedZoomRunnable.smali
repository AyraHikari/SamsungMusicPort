.class Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luk/co/senab/photoview/PhotoViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedZoomRunnable"
.end annotation


# instance fields
.field final synthetic a:Luk/co/senab/photoview/PhotoViewAttacher;

.field private final b:F

.field private final c:F

.field private final d:J

.field private final e:F

.field private final f:F


# direct methods
.method public constructor <init>(Luk/co/senab/photoview/PhotoViewAttacher;FFFF)V
    .locals 0

    .line 1019
    iput-object p1, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    .line 1018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1020
    iput p4, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->b:F

    .line 1021
    iput p5, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->c:F

    .line 1022
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->d:J

    .line 1023
    iput p2, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->e:F

    .line 1024
    iput p3, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->f:F

    return-void
.end method

.method private a()F
    .locals 4

    .line 1047
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->d:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget-object v2, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    iget v2, v2, Luk/co/senab/photoview/PhotoViewAttacher;->b:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 1048
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1049
    sget-object v1, Luk/co/senab/photoview/PhotoViewAttacher;->a:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1029
    iget-object v0, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->c()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1034
    :cond_0
    invoke-direct {p0}, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->a()F

    move-result v1

    .line 1035
    iget v2, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->e:F

    iget v3, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->f:F

    iget v4, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->e:F

    sub-float/2addr v3, v4

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    .line 1036
    iget-object v3, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Luk/co/senab/photoview/PhotoViewAttacher;->g()F

    move-result v3

    div-float/2addr v2, v3

    .line 1038
    iget-object v3, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->a:Luk/co/senab/photoview/PhotoViewAttacher;

    iget v4, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->b:F

    iget v5, p0, Luk/co/senab/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->c:F

    invoke-virtual {v3, v2, v4, v5}, Luk/co/senab/photoview/PhotoViewAttacher;->a(FFF)V

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 1042
    invoke-static {v0, p0}, Luk/co/senab/photoview/Compat;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
