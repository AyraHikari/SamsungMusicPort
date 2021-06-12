.class final Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/detector/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResultPointsAndTransitions"
.end annotation


# instance fields
.field private final a:Lcom/google/zxing/ResultPoint;

.field private final b:Lcom/google/zxing/ResultPoint;

.field private final c:I


# virtual methods
.method a()I
    .locals 1

    .line 420
    iget v0, p0, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->a:Lcom/google/zxing/ResultPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->b:Lcom/google/zxing/ResultPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
