.class public final Lcom/google/zxing/Dimension;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:I


# virtual methods
.method public a()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/google/zxing/Dimension;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/google/zxing/Dimension;->b:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 45
    instance-of v0, p1, Lcom/google/zxing/Dimension;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 46
    check-cast p1, Lcom/google/zxing/Dimension;

    .line 47
    iget v0, p0, Lcom/google/zxing/Dimension;->a:I

    iget v2, p1, Lcom/google/zxing/Dimension;->a:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lcom/google/zxing/Dimension;->b:I

    iget p1, p1, Lcom/google/zxing/Dimension;->b:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 54
    iget v0, p0, Lcom/google/zxing/Dimension;->a:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Lcom/google/zxing/Dimension;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/zxing/Dimension;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/Dimension;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
