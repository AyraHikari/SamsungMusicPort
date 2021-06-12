.class public Lcom/google/zxing/ResultPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:F

.field private final b:F


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 47
    instance-of v0, p1, Lcom/google/zxing/ResultPoint;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 48
    check-cast p1, Lcom/google/zxing/ResultPoint;

    .line 49
    iget v0, p0, Lcom/google/zxing/ResultPoint;->a:F

    iget v2, p1, Lcom/google/zxing/ResultPoint;->a:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/zxing/ResultPoint;->b:F

    iget p1, p1, Lcom/google/zxing/ResultPoint;->b:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 56
    iget v0, p0, Lcom/google/zxing/ResultPoint;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/zxing/ResultPoint;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/zxing/ResultPoint;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/ResultPoint;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
