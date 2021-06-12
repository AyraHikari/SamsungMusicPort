.class public final Lorg/apache/commons/lang3/math/Fraction;
.super Ljava/lang/Number;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/lang3/math/Fraction;",
        ">;"
    }
.end annotation


# static fields
.field public static final FOUR_FIFTHS:Lorg/apache/commons/lang3/math/Fraction;

.field public static final ONE:Lorg/apache/commons/lang3/math/Fraction;

.field public static final ONE_FIFTH:Lorg/apache/commons/lang3/math/Fraction;

.field public static final ONE_HALF:Lorg/apache/commons/lang3/math/Fraction;

.field public static final ONE_QUARTER:Lorg/apache/commons/lang3/math/Fraction;

.field public static final ONE_THIRD:Lorg/apache/commons/lang3/math/Fraction;

.field public static final THREE_FIFTHS:Lorg/apache/commons/lang3/math/Fraction;

.field public static final THREE_QUARTERS:Lorg/apache/commons/lang3/math/Fraction;

.field public static final TWO_FIFTHS:Lorg/apache/commons/lang3/math/Fraction;

.field public static final TWO_QUARTERS:Lorg/apache/commons/lang3/math/Fraction;

.field public static final TWO_THIRDS:Lorg/apache/commons/lang3/math/Fraction;

.field public static final ZERO:Lorg/apache/commons/lang3/math/Fraction;

.field private static final serialVersionUID:J = 0x3b76f0847842L


# instance fields
.field private final denominator:I

.field private transient hashCode:I

.field private final numerator:I

.field private transient toProperString:Ljava/lang/String;

.field private transient toString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 47
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ZERO:Lorg/apache/commons/lang3/math/Fraction;

    .line 51
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v1, v1}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ONE:Lorg/apache/commons/lang3/math/Fraction;

    .line 55
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ONE_HALF:Lorg/apache/commons/lang3/math/Fraction;

    .line 59
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ONE_THIRD:Lorg/apache/commons/lang3/math/Fraction;

    .line 63
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->TWO_THIRDS:Lorg/apache/commons/lang3/math/Fraction;

    .line 67
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ONE_QUARTER:Lorg/apache/commons/lang3/math/Fraction;

    .line 71
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v2, v4}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->TWO_QUARTERS:Lorg/apache/commons/lang3/math/Fraction;

    .line 75
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->THREE_QUARTERS:Lorg/apache/commons/lang3/math/Fraction;

    .line 79
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    const/4 v5, 0x5

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->ONE_FIFTH:Lorg/apache/commons/lang3/math/Fraction;

    .line 83
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v2, v5}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->TWO_FIFTHS:Lorg/apache/commons/lang3/math/Fraction;

    .line 87
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v3, v5}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->THREE_FIFTHS:Lorg/apache/commons/lang3/math/Fraction;

    .line 91
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, v4, v5}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/lang3/math/Fraction;->FOUR_FIFTHS:Lorg/apache/commons/lang3/math/Fraction;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 1

    .line 124
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput v0, p0, Lorg/apache/commons/lang3/math/Fraction;->hashCode:I

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toString:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    .line 125
    iput p1, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    .line 126
    iput p2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    return-void
.end method

.method private static addAndCheck(II)I
    .locals 2

    int-to-long v0, p0

    int-to-long p0, p1

    add-long/2addr v0, p0

    const-wide/32 p0, -0x80000000

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const-wide/32 p0, 0x7fffffff

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    long-to-int p0, v0

    return p0

    .line 676
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "overflow: add"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private addSub(Lorg/apache/commons/lang3/math/Fraction;Z)Lorg/apache/commons/lang3/math/Fraction;
    .locals 5

    if-eqz p1, :cond_8

    .line 741
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 742
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/lang3/math/Fraction;->negate()Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p1

    :goto_0
    return-object p1

    .line 744
    :cond_1
    iget v0, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-nez v0, :cond_2

    return-object p0

    .line 749
    :cond_2
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 752
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->mulAndCheck(II)I

    move-result v0

    .line 753
    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/math/Fraction;->mulAndCheck(II)I

    move-result v1

    .line 754
    new-instance v2, Lorg/apache/commons/lang3/math/Fraction;

    if-eqz p2, :cond_3

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->addAndCheck(II)I

    move-result p2

    goto :goto_1

    :cond_3
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->subAndCheck(II)I

    move-result p2

    :goto_1
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    iget p1, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v0, p1}, Lorg/apache/commons/lang3/math/Fraction;->mulPosAndCheck(II)I

    move-result p1

    invoke-direct {v2, p2, p1}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    return-object v2

    .line 760
    :cond_4
    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr v2, v0

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 761
    iget v2, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr v3, v0

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    if-eqz p2, :cond_5

    .line 762
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    :goto_2
    int-to-long v1, v0

    .line 765
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-nez v1, :cond_6

    move v1, v0

    goto :goto_3

    .line 766
    :cond_6
    invoke-static {v1, v0}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v1

    :goto_3
    int-to-long v2, v1

    .line 769
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 770
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x1f

    if-gt v2, v3, :cond_7

    .line 773
    new-instance v2, Lorg/apache/commons/lang3/math/Fraction;

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    iget v3, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr v3, v0

    iget p1, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr p1, v1

    invoke-static {v3, p1}, Lorg/apache/commons/lang3/math/Fraction;->mulPosAndCheck(II)I

    move-result p1

    invoke-direct {v2, p2, p1}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    return-object v2

    .line 771
    :cond_7
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string p2, "overflow: numerator too large after multiply"

    invoke-direct {p1, p2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 738
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The fraction must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static getFraction(D)Lorg/apache/commons/lang3/math/Fraction;
    .locals 24

    const-wide/16 v1, 0x0

    cmpg-double v1, p0, v1

    if-gez v1, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 249
    :goto_0
    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v4, v2, v4

    if-gtz v4, :cond_4

    .line 250
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_4

    double-to-int v4, v2

    int-to-double v5, v4

    sub-double/2addr v2, v5

    double-to-int v5, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    int-to-double v8, v5

    sub-double v8, v2, v8

    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v12, 0x0

    move/from16 v17, v1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x1

    :goto_1
    div-double v0, v6, v8

    double-to-int v0, v0

    move-wide/from16 v18, v10

    int-to-double v10, v0

    mul-double v10, v10, v8

    sub-double/2addr v6, v10

    mul-int v1, v5, v12

    add-int/2addr v1, v13

    mul-int v5, v5, v14

    add-int/2addr v5, v15

    int-to-double v10, v1

    move/from16 v20, v0

    move/from16 v21, v1

    int-to-double v0, v5

    div-double/2addr v10, v0

    sub-double v0, v2, v10

    .line 280
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const/4 v0, 0x1

    add-int/lit8 v1, v16, 0x1

    const/16 v13, 0x19

    cmpl-double v15, v18, v10

    if-lez v15, :cond_2

    const/16 v15, 0x2710

    if-gt v5, v15, :cond_2

    if-lez v5, :cond_2

    if-lt v1, v13, :cond_1

    goto :goto_2

    :cond_1
    move/from16 v16, v1

    move v13, v12

    move v15, v14

    move/from16 v12, v21

    move v14, v5

    move/from16 v5, v20

    move-wide/from16 v22, v6

    move-wide v6, v8

    move-wide/from16 v8, v22

    goto :goto_1

    :cond_2
    :goto_2
    if-eq v1, v13, :cond_3

    mul-int v4, v4, v14

    add-int/2addr v12, v4

    mul-int v12, v12, v17

    .line 295
    invoke-static {v12, v14}, Lorg/apache/commons/lang3/math/Fraction;->getReducedFraction(II)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    return-object v0

    .line 293
    :cond_3
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Unable to convert double to fraction"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_4
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "The value must not be greater than Integer.MAX_VALUE or NaN"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFraction(II)Lorg/apache/commons/lang3/math/Fraction;
    .locals 1

    if-eqz p1, :cond_2

    if-gez p1, :cond_1

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    if-eq p1, v0, :cond_0

    neg-int p0, p0

    neg-int p1, p1

    goto :goto_0

    .line 147
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "overflow: can\'t negate"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 152
    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    return-object v0

    .line 143
    :cond_2
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "The denominator must not be zero"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFraction(III)Lorg/apache/commons/lang3/math/Fraction;
    .locals 4

    if-eqz p2, :cond_4

    if-ltz p2, :cond_3

    if-ltz p1, :cond_2

    if-gez p0, :cond_0

    int-to-long v0, p0

    int-to-long v2, p2

    mul-long v0, v0, v2

    int-to-long p0, p1

    sub-long/2addr v0, p0

    goto :goto_0

    :cond_0
    int-to-long v0, p0

    int-to-long v2, p2

    mul-long v0, v0, v2

    int-to-long p0, p1

    add-long/2addr v0, p0

    :goto_0
    const-wide/32 p0, -0x80000000

    cmp-long p0, v0, p0

    if-ltz p0, :cond_1

    const-wide/32 p0, 0x7fffffff

    cmp-long p0, v0, p0

    if-gtz p0, :cond_1

    .line 190
    new-instance p0, Lorg/apache/commons/lang3/math/Fraction;

    long-to-int p1, v0

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    return-object p0

    .line 188
    :cond_1
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "Numerator too large to represent as an Integer."

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 179
    :cond_2
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "The numerator must not be negative"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 176
    :cond_3
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "The denominator must not be negative"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 173
    :cond_4
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "The denominator must not be zero"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getFraction(Ljava/lang/String;)Lorg/apache/commons/lang3/math/Fraction;
    .locals 5

    if-eqz p0, :cond_4

    const/16 v0, 0x2e

    .line 321
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 323
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->getFraction(D)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x20

    .line 327
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/16 v1, 0x2f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v0, :cond_2

    .line 329
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v3

    .line 330
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 331
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 335
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v3

    .line 336
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 337
    invoke-static {v4, v1, p0}, Lorg/apache/commons/lang3/math/Fraction;->getFraction(III)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    return-object p0

    .line 333
    :cond_1
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string v0, "The fraction could not be parsed as the format X Y/Z"

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 341
    :cond_2
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_3

    .line 344
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0, v3}, Lorg/apache/commons/lang3/math/Fraction;->getFraction(II)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    return-object p0

    .line 346
    :cond_3
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v3

    .line 347
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 348
    invoke-static {v1, p0}, Lorg/apache/commons/lang3/math/Fraction;->getFraction(II)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p0

    return-object p0

    .line 318
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The string must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getReducedFraction(II)Lorg/apache/commons/lang3/math/Fraction;
    .locals 2

    if-eqz p1, :cond_4

    if-nez p0, :cond_0

    .line 212
    sget-object p0, Lorg/apache/commons/lang3/math/Fraction;->ZERO:Lorg/apache/commons/lang3/math/Fraction;

    return-object p0

    :cond_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_1

    .line 216
    div-int/lit8 p0, p0, 0x2

    .line 217
    div-int/lit8 p1, p1, 0x2

    :cond_1
    if-gez p1, :cond_3

    if-eq p0, v0, :cond_2

    if-eq p1, v0, :cond_2

    neg-int p0, p0

    neg-int p1, p1

    goto :goto_0

    .line 221
    :cond_2
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "overflow: can\'t negate"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 227
    :cond_3
    :goto_0
    invoke-static {p0, p1}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    .line 228
    div-int/2addr p0, v0

    .line 229
    div-int/2addr p1, v0

    .line 230
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    return-object v0

    .line 209
    :cond_4
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "The denominator must not be zero"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static greatestCommonDivisor(II)I
    .locals 5

    if-eqz p0, :cond_b

    if-nez p1, :cond_0

    goto :goto_4

    .line 578
    :cond_0
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_3

    :cond_1
    if-lez p0, :cond_2

    neg-int p0, p0

    :cond_2
    if-lez p1, :cond_3

    neg-int p1, p1

    :cond_3
    const/4 v0, 0x0

    :goto_0
    and-int/lit8 v2, p0, 0x1

    const/16 v3, 0x1f

    if-nez v2, :cond_4

    and-int/lit8 v4, p1, 0x1

    if-nez v4, :cond_4

    if-ge v0, v3, :cond_4

    .line 594
    div-int/lit8 p0, p0, 0x2

    .line 595
    div-int/lit8 p1, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    if-eq v0, v3, :cond_9

    if-ne v2, v1, :cond_5

    move v2, p1

    goto :goto_1

    .line 603
    :cond_5
    div-int/lit8 v2, p0, 0x2

    neg-int v2, v2

    :cond_6
    :goto_1
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_7

    .line 610
    div-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_7
    if-lez v2, :cond_8

    neg-int p0, v2

    goto :goto_2

    :cond_8
    move p1, v2

    :goto_2
    sub-int v2, p1, p0

    .line 619
    div-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6

    neg-int p0, p0

    shl-int p1, v1, v0

    mul-int p0, p0, p1

    return p0

    .line 599
    :cond_9
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "overflow: gcd is 2^31"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    :goto_3
    return v1

    :cond_b
    :goto_4
    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_c

    if-eq p1, v0, :cond_c

    .line 575
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 573
    :cond_c
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "overflow: gcd is 2^31"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static mulAndCheck(II)I
    .locals 2

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long v0, v0, p0

    const-wide/32 p0, -0x80000000

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const-wide/32 p0, 0x7fffffff

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    long-to-int p0, v0

    return p0

    .line 641
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "overflow: mul"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static mulPosAndCheck(II)I
    .locals 2

    int-to-long v0, p0

    int-to-long p0, p1

    mul-long v0, v0, p0

    const-wide/32 p0, 0x7fffffff

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    long-to-int p0, v0

    return p0

    .line 659
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "overflow: mulPos"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static subAndCheck(II)I
    .locals 2

    int-to-long v0, p0

    int-to-long p0, p1

    sub-long/2addr v0, p0

    const-wide/32 p0, -0x80000000

    cmp-long p0, v0, p0

    if-ltz p0, :cond_0

    const-wide/32 p0, 0x7fffffff

    cmp-long p0, v0, p0

    if-gtz p0, :cond_0

    long-to-int p0, v0

    return p0

    .line 693
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string p1, "overflow: add"

    invoke-direct {p0, p1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abs()Lorg/apache/commons/lang3/math/Fraction;
    .locals 1

    .line 522
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-ltz v0, :cond_0

    return-object p0

    .line 525
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->negate()Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;
    .locals 1

    const/4 v0, 0x1

    .line 709
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/math/Fraction;->addSub(Lorg/apache/commons/lang3/math/Fraction;Z)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 35
    check-cast p1, Lorg/apache/commons/lang3/math/Fraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/math/Fraction;->compareTo(Lorg/apache/commons/lang3/math/Fraction;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/lang3/math/Fraction;)I
    .locals 7

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 875
    :cond_0
    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v2, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    iget v2, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    if-ne v1, v2, :cond_1

    return v0

    .line 880
    :cond_1
    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-long v1, v1

    iget v3, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    int-to-long v3, v3

    mul-long v1, v1, v3

    .line 881
    iget p1, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-long v3, p1

    iget p1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    int-to-long v5, p1

    mul-long v3, v3, v5

    cmp-long p1, v1, v3

    if-nez p1, :cond_2

    return v0

    :cond_2
    if-gez p1, :cond_3

    const/4 p1, -0x1

    return p1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public divideBy(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;
    .locals 1

    if-eqz p1, :cond_1

    .line 815
    iget v0, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {p1}, Lorg/apache/commons/lang3/math/Fraction;->invert()Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/math/Fraction;->multiplyBy(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p1

    return-object p1

    .line 816
    :cond_0
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "The fraction to divide by must not be zero"

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 813
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The fraction must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doubleValue()D
    .locals 4

    .line 449
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-double v0, v0

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 837
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/lang3/math/Fraction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 840
    :cond_1
    check-cast p1, Lorg/apache/commons/lang3/math/Fraction;

    .line 841
    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getNumerator()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/math/Fraction;->getNumerator()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result p1

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public floatValue()F
    .locals 2

    .line 438
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-float v0, v0

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getDenominator()I
    .locals 1

    .line 372
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    return v0
.end method

.method public getNumerator()I
    .locals 1

    .line 363
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    return v0
.end method

.method public getProperNumerator()I
    .locals 2

    .line 387
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    rem-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public getProperWhole()I
    .locals 2

    .line 402
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 851
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->hashCode:I

    if-nez v0, :cond_0

    .line 853
    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getNumerator()I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/lang3/math/Fraction;->hashCode:I

    .line 855
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->hashCode:I

    return v0
.end method

.method public intValue()I
    .locals 2

    .line 416
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/apache/commons/lang3/math/Fraction;
    .locals 3

    .line 485
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-eqz v0, :cond_2

    .line 488
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 491
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-gez v0, :cond_0

    .line 492
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    neg-int v1, v1

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    neg-int v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    return-object v0

    .line 494
    :cond_0
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    return-object v0

    .line 489
    :cond_1
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: can\'t negate numerator"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Unable to invert zero."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public longValue()J
    .locals 4

    .line 427
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    int-to-long v0, v0

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public multiplyBy(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;
    .locals 4

    if-eqz p1, :cond_2

    .line 790
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-eqz v0, :cond_1

    iget v0, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 795
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    .line 796
    iget v1, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v1

    .line 797
    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    div-int/2addr v2, v0

    iget v3, p1, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    div-int/2addr v3, v1

    invoke-static {v2, v3}, Lorg/apache/commons/lang3/math/Fraction;->mulAndCheck(II)I

    move-result v2

    iget v3, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr v3, v1

    iget p1, p1, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr p1, v0

    invoke-static {v3, p1}, Lorg/apache/commons/lang3/math/Fraction;->mulPosAndCheck(II)I

    move-result p1

    invoke-static {v2, p1}, Lorg/apache/commons/lang3/math/Fraction;->getReducedFraction(II)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p1

    return-object p1

    .line 791
    :cond_1
    :goto_0
    sget-object p1, Lorg/apache/commons/lang3/math/Fraction;->ZERO:Lorg/apache/commons/lang3/math/Fraction;

    return-object p1

    .line 788
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The fraction must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public negate()Lorg/apache/commons/lang3/math/Fraction;
    .locals 3

    .line 506
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 509
    new-instance v0, Lorg/apache/commons/lang3/math/Fraction;

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    neg-int v1, v1

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/math/Fraction;-><init>(II)V

    return-object v0

    .line 507
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "overflow: too large to negate"

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pow(I)Lorg/apache/commons/lang3/math/Fraction;
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 544
    sget-object p1, Lorg/apache/commons/lang3/math/Fraction;->ONE:Lorg/apache/commons/lang3/math/Fraction;

    return-object p1

    :cond_1
    const/4 v0, 0x2

    if-gez p1, :cond_3

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_2

    .line 547
    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->invert()Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/commons/lang3/math/Fraction;->pow(I)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v1

    div-int/2addr p1, v0

    neg-int p1, p1

    invoke-virtual {v1, p1}, Lorg/apache/commons/lang3/math/Fraction;->pow(I)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p1

    return-object p1

    .line 549
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->invert()Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    neg-int p1, p1

    invoke-virtual {v0, p1}, Lorg/apache/commons/lang3/math/Fraction;->pow(I)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p1

    return-object p1

    .line 551
    :cond_3
    invoke-virtual {p0, p0}, Lorg/apache/commons/lang3/math/Fraction;->multiplyBy(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v1

    .line 552
    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_4

    .line 553
    div-int/2addr p1, v0

    invoke-virtual {v1, p1}, Lorg/apache/commons/lang3/math/Fraction;->pow(I)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p1

    return-object p1

    .line 555
    :cond_4
    div-int/2addr p1, v0

    :try_start_0
    invoke-virtual {v1, p1}, Lorg/apache/commons/lang3/math/Fraction;->pow(I)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1, p0}, Lorg/apache/commons/lang3/math/Fraction;->multiplyBy(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    throw p1
.end method

.method public reduce()Lorg/apache/commons/lang3/math/Fraction;
    .locals 3

    .line 465
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-nez v0, :cond_1

    .line 466
    sget-object v0, Lorg/apache/commons/lang3/math/Fraction;->ZERO:Lorg/apache/commons/lang3/math/Fraction;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/math/Fraction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/lang3/math/Fraction;->ZERO:Lorg/apache/commons/lang3/math/Fraction;

    :goto_0
    return-object v0

    .line 468
    :cond_1
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/math/Fraction;->greatestCommonDivisor(II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    return-object p0

    .line 472
    :cond_2
    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    div-int/2addr v1, v0

    iget v2, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    div-int/2addr v2, v0

    invoke-static {v1, v2}, Lorg/apache/commons/lang3/math/Fraction;->getFraction(II)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/lang3/math/Fraction;)Lorg/apache/commons/lang3/math/Fraction;
    .locals 1

    const/4 v0, 0x0

    .line 723
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/lang3/math/Fraction;->addSub(Lorg/apache/commons/lang3/math/Fraction;Z)Lorg/apache/commons/lang3/math/Fraction;

    move-result-object p1

    return-object p1
.end method

.method public toProperString()Ljava/lang/String;
    .locals 5

    .line 916
    iget-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 917
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-nez v0, :cond_0

    const-string v0, "0"

    .line 918
    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    goto/16 :goto_1

    .line 919
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    if-ne v0, v1, :cond_1

    const-string v0, "1"

    .line 920
    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_1

    .line 921
    :cond_1
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    mul-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    const-string v0, "-1"

    .line 922
    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_1

    .line 923
    :cond_2
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    if-lez v0, :cond_3

    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    neg-int v0, v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/apache/commons/lang3/math/Fraction;->numerator:I

    :goto_0
    iget v1, p0, Lorg/apache/commons/lang3/math/Fraction;->denominator:I

    neg-int v1, v1

    const/16 v2, 0x2f

    const/16 v3, 0x20

    if-ge v0, v1, :cond_5

    .line 928
    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getProperNumerator()I

    move-result v0

    if-nez v0, :cond_4

    .line 930
    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getProperWhole()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_1

    .line 932
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getProperWhole()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    goto :goto_1

    .line 936
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getNumerator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    .line 940
    :cond_6
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toProperString:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 900
    iget-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toString:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 901
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getNumerator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/lang3/math/Fraction;->getDenominator()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toString:Ljava/lang/String;

    .line 903
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/math/Fraction;->toString:Ljava/lang/String;

    return-object v0
.end method
