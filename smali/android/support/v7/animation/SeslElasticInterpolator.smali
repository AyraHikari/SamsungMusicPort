.class public Landroid/support/v7/animation/SeslElasticInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final ELASTIC_40:Landroid/view/animation/Interpolator;

.field public static final ELASTIC_50:Landroid/view/animation/Interpolator;


# instance fields
.field private mAmplitude:F

.field private mPeriod:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    new-instance v0, Landroid/support/v7/animation/SeslElasticInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1, v2}, Landroid/support/v7/animation/SeslElasticInterpolator;-><init>(FF)V

    sput-object v0, Landroid/support/v7/animation/SeslElasticInterpolator;->ELASTIC_40:Landroid/view/animation/Interpolator;

    .line 18
    new-instance v0, Landroid/support/v7/animation/SeslElasticInterpolator;

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2}, Landroid/support/v7/animation/SeslElasticInterpolator;-><init>(FF)V

    sput-object v0, Landroid/support/v7/animation/SeslElasticInterpolator;->ELASTIC_50:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    iput v0, p0, Landroid/support/v7/animation/SeslElasticInterpolator;->mAmplitude:F

    const v0, 0x3e4ccccd    # 0.2f

    .line 21
    iput v0, p0, Landroid/support/v7/animation/SeslElasticInterpolator;->mPeriod:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    iput v0, p0, Landroid/support/v7/animation/SeslElasticInterpolator;->mAmplitude:F

    const v0, 0x3e4ccccd    # 0.2f

    .line 21
    iput v0, p0, Landroid/support/v7/animation/SeslElasticInterpolator;->mPeriod:F

    .line 26
    iput p1, p0, Landroid/support/v7/animation/SeslElasticInterpolator;->mAmplitude:F

    .line 27
    iput p2, p0, Landroid/support/v7/animation/SeslElasticInterpolator;->mPeriod:F

    return-void
.end method

.method private out(FFF)F
    .locals 10

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-ltz v2, :cond_1

    return v1

    :cond_1
    cmpl-float v2, p3, v0

    if-nez v2, :cond_2

    const p3, 0x3e99999a    # 0.3f

    :cond_2
    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_4

    cmpg-float v0, p2, v1

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    float-to-double v4, p3

    div-double/2addr v4, v2

    div-float/2addr v1, p2

    float-to-double v0, v1

    .line 69
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    mul-double v4, v4, v0

    double-to-float v0, v4

    goto :goto_1

    :cond_4
    :goto_0
    const/high16 p2, 0x40800000    # 4.0f

    div-float v0, p3, p2

    const/high16 p2, 0x3f800000    # 1.0f

    :goto_1
    float-to-double v4, p2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/high16 p2, -0x3ee00000    # -10.0f

    mul-float p2, p2, p1

    float-to-double v8, p2

    .line 72
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double v4, v4, v6

    sub-float/2addr p1, v0

    float-to-double p1, p1

    mul-double p1, p1, v2

    float-to-double v0, p3

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double v4, v4, p1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, p1

    double-to-float p1, v4

    return p1
.end method


# virtual methods
.method public getAmplitude()F
    .locals 1

    .line 39
    iget v0, p0, Landroid/support/v7/animation/SeslElasticInterpolator;->mAmplitude:F

    return v0
.end method

.method public getInterpolation(F)F
    .locals 2

    .line 48
    iget v0, p0, Landroid/support/v7/animation/SeslElasticInterpolator;->mAmplitude:F

    iget v1, p0, Landroid/support/v7/animation/SeslElasticInterpolator;->mPeriod:F

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/animation/SeslElasticInterpolator;->out(FFF)F

    move-result p1

    return p1
.end method

.method public getPeriod()F
    .locals 1

    .line 43
    iget v0, p0, Landroid/support/v7/animation/SeslElasticInterpolator;->mPeriod:F

    return v0
.end method

.method public setAmplitude(F)V
    .locals 0

    .line 31
    iput p1, p0, Landroid/support/v7/animation/SeslElasticInterpolator;->mAmplitude:F

    return-void
.end method

.method public setPeriod(F)V
    .locals 0

    .line 35
    iput p1, p0, Landroid/support/v7/animation/SeslElasticInterpolator;->mPeriod:F

    return-void
.end method
