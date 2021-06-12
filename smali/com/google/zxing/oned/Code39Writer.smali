.class public final Lcom/google/zxing/oned/Code39Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static a(I[I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    rsub-int/lit8 v1, v0, 0x8

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    .line 85
    :goto_1
    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    if-ne p2, v0, :cond_0

    .line 42
    invoke-super/range {p0 .. p5}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->a(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object p1

    return-object p1

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Can only encode CODE_39, but got "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)[Z
    .locals 10

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-gt v0, v1, :cond_4

    const/16 v1, 0x9

    .line 53
    new-array v2, v1, [I

    add-int/lit8 v3, v0, 0x19

    const/4 v4, 0x0

    move v5, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    const-string v6, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    .line 56
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ltz v6, :cond_1

    .line 60
    sget-object v7, Lcom/google/zxing/oned/Code39Reader;->a:[I

    aget v6, v7, v6

    invoke-static {v6, v2}, Lcom/google/zxing/oned/Code39Writer;->a(I[I)V

    move v6, v5

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v1, :cond_0

    .line 61
    aget v7, v2, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v5, v6

    goto :goto_0

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bad contents: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_2
    new-array v1, v5, [Z

    .line 66
    sget v3, Lcom/google/zxing/oned/Code39Reader;->b:I

    invoke-static {v3, v2}, Lcom/google/zxing/oned/Code39Writer;->a(I[I)V

    const/4 v3, 0x1

    .line 67
    invoke-static {v1, v4, v2, v3}, Lcom/google/zxing/oned/Code39Writer;->b([ZI[IZ)I

    move-result v5

    .line 68
    new-array v6, v3, [I

    aput v3, v6, v4

    .line 69
    invoke-static {v1, v5, v6, v4}, Lcom/google/zxing/oned/Code39Writer;->b([ZI[IZ)I

    move-result v7

    add-int/2addr v5, v7

    move v7, v5

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_3

    const-string v8, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    .line 72
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 73
    sget-object v9, Lcom/google/zxing/oned/Code39Reader;->a:[I

    aget v8, v9, v8

    invoke-static {v8, v2}, Lcom/google/zxing/oned/Code39Writer;->a(I[I)V

    .line 74
    invoke-static {v1, v7, v2, v3}, Lcom/google/zxing/oned/Code39Writer;->b([ZI[IZ)I

    move-result v8

    add-int/2addr v7, v8

    .line 75
    invoke-static {v1, v7, v6, v4}, Lcom/google/zxing/oned/Code39Writer;->b([ZI[IZ)I

    move-result v8

    add-int/2addr v7, v8

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 77
    :cond_3
    sget p1, Lcom/google/zxing/oned/Code39Reader;->b:I

    invoke-static {p1, v2}, Lcom/google/zxing/oned/Code39Writer;->a(I[I)V

    .line 78
    invoke-static {v1, v7, v2, v3}, Lcom/google/zxing/oned/Code39Writer;->b([ZI[IZ)I

    return-object v1

    .line 49
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested contents should be less than 80 digits long, but got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
