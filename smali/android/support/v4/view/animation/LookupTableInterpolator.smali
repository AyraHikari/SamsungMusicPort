.class abstract Landroid/support/v4/view/animation/LookupTableInterpolator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field private final mStepSize:F

.field private final mValues:[F


# direct methods
.method public constructor <init>([F)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F

    .line 32
    iget-object p1, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    iput v0, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mStepSize:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_1

    return v0

    .line 46
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    iget-object v1, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    .line 49
    iget v2, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mStepSize:F

    mul-float v1, v1, v2

    sub-float/2addr p1, v1

    .line 51
    iget v1, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mStepSize:F

    div-float/2addr p1, v1

    .line 54
    iget-object v1, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F

    aget v1, v1, v0

    iget-object v2, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Landroid/support/v4/view/animation/LookupTableInterpolator;->mValues:[F

    aget v0, v3, v0

    sub-float/2addr v2, v0

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    return v1
.end method
