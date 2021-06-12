.class public Lorg/apache/commons/lang3/text/StrBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;,
        Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;,
        Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Appendable;",
        "Ljava/lang/CharSequence;"
    }
.end annotation


# static fields
.field static final CAPACITY:I = 0x20

.field private static final serialVersionUID:J = 0x69dea51fe8fc7e4bL


# instance fields
.field protected buffer:[C

.field private newLine:Ljava/lang/String;

.field private nullText:Ljava/lang/String;

.field protected size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 105
    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_0

    const/16 p1, 0x20

    .line 118
    :cond_0
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    if-nez p1, :cond_0

    .line 130
    new-array p1, v0, [C

    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    new-array v0, v1, [C

    iput-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 133
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    :goto_0
    return-void
.end method

.method private deleteImpl(III)V
    .locals 3

    .line 1788
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v2, p2

    invoke-static {v0, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1789
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    return-void
.end method

.method private replaceImpl(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 10

    if-eqz p1, :cond_4

    .line 2109
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-nez p2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 2112
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 2113
    :goto_0
    iget-object v7, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    move v8, p5

    move p5, p4

    move p4, p3

    :goto_1
    if-ge p4, p5, :cond_3

    if-eqz v8, :cond_3

    .line 2115
    invoke-virtual {p1, v7, p4, p3, p5}, Lorg/apache/commons/lang3/text/StrMatcher;->a([CIII)I

    move-result v9

    if-lez v9, :cond_2

    add-int v3, p4, v9

    move-object v1, p0

    move v2, p4

    move v4, v9

    move-object v5, p2

    move v6, v0

    .line 2117
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/lang3/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    sub-int/2addr p5, v9

    add-int/2addr p5, v0

    add-int/2addr p4, v0

    add-int/lit8 p4, p4, -0x1

    if-lez v8, :cond_2

    add-int/lit8 v8, v8, -0x1

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_3
    return-object p0

    :cond_4
    :goto_2
    return-object p0
.end method

.method private replaceImpl(IIILjava/lang/String;I)V
    .locals 4

    .line 1927
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v0, p3

    add-int/2addr v0, p5

    if-eq p5, p3, :cond_0

    .line 1929
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1930
    iget-object p3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int v2, p1, p5

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v3, p2

    invoke-static {p3, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1931
    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_0
    if-lez p5, :cond_1

    const/4 p2, 0x0

    .line 1934
    iget-object p3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p4, p2, p5, p3, p1}, Ljava/lang/String;->getChars(II[CI)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/CharSequence;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/CharSequence;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    .line 911
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 912
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 913
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    aput-char p1, v0, v1

    return-object p0
.end method

.method public append(D)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 954
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(F)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 944
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(I)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 924
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(J)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 934
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    if-nez p1, :cond_0

    .line 526
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1

    .line 528
    :cond_0
    instance-of v0, p1, Lorg/apache/commons/lang3/text/StrBuilder;

    if-eqz v0, :cond_1

    .line 529
    check-cast p1, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Lorg/apache/commons/lang3/text/StrBuilder;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1

    .line 531
    :cond_1
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    .line 532
    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuilder;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1

    .line 534
    :cond_2
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_3

    .line 535
    check-cast p1, Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1

    .line 537
    :cond_3
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_4

    .line 538
    check-cast p1, Ljava/nio/CharBuffer;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/nio/CharBuffer;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1

    .line 540
    :cond_4
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/CharSequence;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    if-nez p1, :cond_0

    .line 556
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1

    .line 558
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    if-nez p1, :cond_0

    .line 507
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1

    .line 509
    :cond_0
    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 510
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/CharSequence;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1

    .line 512
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    if-nez p1, :cond_0

    .line 570
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1

    .line 572
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 574
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, v0

    .line 575
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    const/4 v2, 0x0

    .line 576
    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 577
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 594
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    if-ltz p2, :cond_3

    .line 596
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 599
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    if-lez p3, :cond_1

    .line 603
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, p3

    .line 604
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 605
    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 606
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_1
    return-object p0

    .line 600
    :cond_2
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "length must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 597
    :cond_3
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "startIndex must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs append(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 621
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public append(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    if-nez p1, :cond_0

    .line 689
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1

    .line 691
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 693
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, v0

    .line 694
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    const/4 v2, 0x0

    .line 695
    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 696
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 712
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    if-ltz p2, :cond_3

    .line 714
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 717
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    if-lez p3, :cond_1

    .line 721
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, p3

    .line 722
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 723
    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 724
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_1
    return-object p0

    .line 718
    :cond_2
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "length must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 715
    :cond_3
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "startIndex must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public append(Ljava/lang/StringBuilder;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    if-nez p1, :cond_0

    .line 739
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1

    .line 741
    :cond_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 743
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, v0

    .line 744
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    const/4 v2, 0x0

    .line 745
    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, v2, v0, v3, v1}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 746
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_1
    return-object p0
.end method

.method public append(Ljava/lang/StringBuilder;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 763
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    if-ltz p2, :cond_3

    .line 765
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 768
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    if-lez p3, :cond_1

    .line 772
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, p3

    .line 773
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 774
    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    .line 775
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_1
    return-object p0

    .line 769
    :cond_2
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "length must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 766
    :cond_3
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "startIndex must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public append(Ljava/nio/CharBuffer;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    if-nez p1, :cond_0

    .line 634
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1

    .line 636
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 637
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    .line 638
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, v0

    .line 639
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 640
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result p1

    add-int/2addr v3, p1

    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {v2, v3, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 641
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0

    .line 643
    :cond_1
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    :goto_0
    return-object p0
.end method

.method public append(Ljava/nio/CharBuffer;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 660
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1

    .line 662
    :cond_0
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 663
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v0

    if-ltz p2, :cond_2

    if-gt p2, v0, :cond_2

    if-ltz p3, :cond_1

    add-int v1, p2, p3

    if-gt v1, v0, :cond_1

    .line 670
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    add-int v1, v0, p3

    .line 671
    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 672
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->position()I

    move-result p1

    add-int/2addr v2, p1

    add-int/2addr v2, p2

    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {v1, v2, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 673
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0

    .line 668
    :cond_1
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "length must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 665
    :cond_2
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "startIndex must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 675
    :cond_3
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/StrBuilder;

    :goto_0
    return-object p0
.end method

.method public append(Lorg/apache/commons/lang3/text/StrBuilder;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    if-nez p1, :cond_0

    .line 789
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1

    .line 791
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 793
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, v0

    .line 794
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 795
    iget-object p1, p1, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 796
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_1
    return-object p0
.end method

.method public append(Lorg/apache/commons/lang3/text/StrBuilder;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 812
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    if-ltz p2, :cond_3

    .line 814
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 817
    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    if-gt v0, v1, :cond_2

    if-lez p3, :cond_1

    .line 821
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, p3

    .line 822
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 823
    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->getChars(II[CI)V

    .line 824
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_1
    return-object p0

    .line 818
    :cond_2
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "length must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 815
    :cond_3
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "startIndex must be valid"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public append(Z)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    const/16 v0, 0x65

    if-eqz p1, :cond_0

    .line 886
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 887
    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x74

    aput-char v2, p1, v1

    .line 888
    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x72

    aput-char v2, p1, v1

    .line 889
    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x75

    aput-char v2, p1, v1

    .line 890
    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    aput-char v0, p1, v1

    goto :goto_0

    .line 892
    :cond_0
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 p1, p1, 0x5

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 893
    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x66

    aput-char v2, p1, v1

    .line 894
    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x61

    aput-char v2, p1, v1

    .line 895
    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x6c

    aput-char v2, p1, v1

    .line 896
    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/16 v2, 0x73

    aput-char v2, p1, v1

    .line 897
    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    aput-char v0, p1, v1

    :goto_0
    return-object p0
.end method

.method public append([C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    if-nez p1, :cond_0

    .line 838
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1

    .line 840
    :cond_0
    array-length v0, p1

    if-lez v0, :cond_1

    .line 842
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    add-int v2, v1, v0

    .line 843
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    const/4 v2, 0x0

    .line 844
    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {p1, v2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 845
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_1
    return-object p0
.end method

.method public append([CII)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 2

    if-nez p1, :cond_0

    .line 861
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNull()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    if-ltz p2, :cond_3

    .line 863
    array-length v0, p1

    if-gt p2, v0, :cond_3

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 866
    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-lez p3, :cond_1

    .line 870
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    add-int v1, v0, p3

    .line 871
    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 872
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 873
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_1
    return-object p0

    .line 867
    :cond_2
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 864
    :cond_3
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid startIndex: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public appendAll(Ljava/lang/Iterable;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lorg/apache/commons/lang3/text/StrBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1210
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1211
    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendAll(Ljava/util/Iterator;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;)",
            "Lorg/apache/commons/lang3/text/StrBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1228
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1229
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public varargs appendAll([Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lorg/apache/commons/lang3/text/StrBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1191
    array-length v0, p1

    if-lez v0, :cond_0

    .line 1192
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 1193
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendFixedWidthPadLeft(IIC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 1533
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendFixedWidthPadLeft(Ljava/lang/Object;IC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    if-lez p2, :cond_4

    .line 1502
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    if-nez p1, :cond_0

    .line 1503
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 1507
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p2, :cond_2

    sub-int p3, v0, p2

    .line 1509
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {p1, p3, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_2

    :cond_2
    sub-int v1, p2, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 1513
    iget-object v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v5, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v5, v3

    aput-char p3, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1515
    :cond_3
    iget-object p3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v3, v1

    invoke-virtual {p1, v2, v0, p3, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 1517
    :goto_2
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_4
    return-object p0
.end method

.method public appendFixedWidthPadRight(IIC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 1580
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->appendFixedWidthPadRight(Ljava/lang/Object;IC)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendFixedWidthPadRight(Ljava/lang/Object;IC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 5

    if-lez p2, :cond_4

    .line 1549
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    if-nez p1, :cond_0

    .line 1550
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->getNullText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    .line 1554
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lt v0, p2, :cond_2

    .line 1556
    iget-object p3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {p1, v1, p2, p3, v0}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_2

    :cond_2
    sub-int v2, p2, v0

    .line 1559
    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {p1, v1, v0, v3, v4}, Ljava/lang/String;->getChars(II[CI)V

    :goto_1
    if-ge v1, v2, :cond_3

    .line 1561
    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    aput-char p3, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1564
    :cond_3
    :goto_2
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr p1, p2

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_4
    return-object p0
.end method

.method public appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .line 479
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->newLine:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 480
    sget-object v0, Lorg/apache/commons/lang3/SystemUtils;->F:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    return-object p0

    .line 483
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->newLine:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendNull()Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .line 492
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    if-nez v0, :cond_0

    return-object p0

    .line 495
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendPadding(IC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    if-ltz p1, :cond_0

    .line 1480
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1482
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    aput-char p2, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendSeparator(C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .line 1388
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1389
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    :cond_0
    return-object p0
.end method

.method public appendSeparator(CC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .line 1406
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1407
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    goto :goto_0

    .line 1409
    :cond_0
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    :goto_0
    return-object p0
.end method

.method public appendSeparator(CI)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    if-lez p2, :cond_0

    .line 1465
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 1330
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendSeparator(Ljava/lang/String;I)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 1437
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    :cond_0
    return-object p0
.end method

.method public appendSeparator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .line 1361
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p1, p2

    :cond_0
    if-eqz p1, :cond_1

    .line 1363
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    :cond_1
    return-object p0
.end method

.method public appendTo(Ljava/lang/Appendable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2741
    instance-of v0, p1, Ljava/io/Writer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2742
    check-cast p1, Ljava/io/Writer;

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 2743
    :cond_0
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    .line 2744
    check-cast p1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2745
    :cond_1
    instance-of v0, p1, Ljava/lang/StringBuffer;

    if-eqz v0, :cond_2

    .line 2746
    check-cast p1, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2747
    :cond_2
    instance-of v0, p1, Ljava/nio/CharBuffer;

    if-eqz v0, :cond_3

    .line 2748
    check-cast p1, Ljava/nio/CharBuffer;

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/CharBuffer;->put([CII)Ljava/nio/CharBuffer;

    goto :goto_0

    .line 2750
    :cond_3
    invoke-interface {p1, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_0
    return-void
.end method

.method public appendWithSeparators(Ljava/lang/Iterable;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/lang3/text/StrBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1272
    invoke-static {p2}, Lorg/apache/commons/lang3/ObjectUtils;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1273
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 1274
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1275
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1276
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1277
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public appendWithSeparators(Ljava/util/Iterator;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/commons/lang3/text/StrBuilder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1297
    invoke-static {p2}, Lorg/apache/commons/lang3/ObjectUtils;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1298
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1299
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1300
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1301
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public appendWithSeparators([Ljava/lang/Object;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 2

    if-eqz p1, :cond_0

    .line 1247
    array-length v0, p1

    if-lez v0, :cond_0

    .line 1249
    invoke-static {p2}, Lorg/apache/commons/lang3/ObjectUtils;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 1250
    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    const/4 v0, 0x1

    .line 1251
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 1252
    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1253
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public appendln(C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 1132
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(C)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(D)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 1176
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(D)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(F)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 1165
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(F)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(I)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 1143
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(I)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(J)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 1154
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(J)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 967
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 979
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 993
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public varargs appendln(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 1006
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/String;[Ljava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 1018
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 1058
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuffer;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Ljava/lang/StringBuilder;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 1030
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuilder;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Ljava/lang/StringBuilder;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 1044
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Ljava/lang/StringBuilder;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Lorg/apache/commons/lang3/text/StrBuilder;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 1070
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Lorg/apache/commons/lang3/text/StrBuilder;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Lorg/apache/commons/lang3/text/StrBuilder;II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 1084
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Lorg/apache/commons/lang3/text/StrBuilder;II)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln(Z)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 1121
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append(Z)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln([C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 1096
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->append([C)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public appendln([CII)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 1110
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/StrBuilder;->append([CII)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/lang3/text/StrBuilder;->appendNewLine()Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public asReader()Ljava/io/Reader;
    .locals 1

    .line 2700
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderReader;-><init>(Lorg/apache/commons/lang3/text/StrBuilder;)V

    return-object v0
.end method

.method public asTokenizer()Lorg/apache/commons/lang3/text/StrTokenizer;
    .locals 1

    .line 2676
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;-><init>(Lorg/apache/commons/lang3/text/StrBuilder;)V

    return-object v0
.end method

.method public asWriter()Ljava/io/Writer;
    .locals 1

    .line 2725
    new-instance v0, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;

    invoke-direct {v0, p0}, Lorg/apache/commons/lang3/text/StrBuilder$StrBuilderWriter;-><init>(Lorg/apache/commons/lang3/text/StrBuilder;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public build()Ljava/lang/String;
    .locals 1

    .line 2909
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public capacity()I
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    array-length v0, v0

    return v0
.end method

.method public charAt(I)C
    .locals 1

    if-ltz p1, :cond_0

    .line 311
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 314
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char p1, v0, p1

    return p1

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public clear()Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    const/4 v0, 0x0

    .line 295
    iput v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    return-object p0
.end method

.method public contains(C)Z
    .locals 4

    .line 2363
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2364
    :goto_0
    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v2, v3, :cond_1

    .line 2365
    aget-char v3, v0, v2

    if-ne v3, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 2379
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public contains(Lorg/apache/commons/lang3/text/StrMatcher;)Z
    .locals 1

    const/4 v0, 0x0

    .line 2394
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Lorg/apache/commons/lang3/text/StrMatcher;I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public delete(II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    .line 1802
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->validateRange(II)I

    move-result p2

    sub-int v0, p2, p1

    if-lez v0, :cond_0

    .line 1805
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->deleteImpl(III)V

    :cond_0
    return-object p0
.end method

.method public deleteAll(C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    const/4 v0, 0x0

    .line 1818
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_3

    .line 1819
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_2

    move v1, v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 1821
    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v1, v2, :cond_1

    .line 1822
    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v2, v2, v1

    if-eq v2, p1, :cond_0

    :cond_1
    sub-int v2, v1, v0

    .line 1827
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->deleteImpl(III)V

    sub-int v0, v1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method public deleteAll(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1858
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    .line 1860
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :goto_1
    if-ltz v0, :cond_1

    add-int v2, v0, v1

    .line 1862
    invoke-direct {p0, v0, v2, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->deleteImpl(III)V

    .line 1863
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public deleteAll(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    .line 1898
    iget v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->replace(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public deleteCharAt(I)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 2

    if-ltz p1, :cond_0

    .line 345
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    .line 348
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->deleteImpl(III)V

    return-object p0

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public deleteFirst(C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 2

    const/4 v0, 0x0

    .line 1841
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_1

    .line 1842
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_0

    add-int/lit8 p1, v0, 0x1

    const/4 v1, 0x1

    .line 1843
    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->deleteImpl(III)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public deleteFirst(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 1876
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    .line 1878
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_1

    add-int v0, p1, v1

    .line 1880
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->deleteImpl(III)V

    :cond_1
    return-object p0
.end method

.method public deleteFirst(Lorg/apache/commons/lang3/text/StrMatcher;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    .line 1912
    iget v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->replace(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public endsWith(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2218
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 2222
    :cond_1
    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-le v1, v3, :cond_2

    return v0

    .line 2225
    :cond_2
    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v3, v1

    move v4, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 2227
    iget-object v5, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v5, v5, v4

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v5, v6, :cond_3

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    .line 236
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 237
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    mul-int/lit8 p1, p1, 0x2

    .line 238
    new-array p1, p1, [C

    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 239
    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 2844
    instance-of v0, p1, Lorg/apache/commons/lang3/text/StrBuilder;

    if-eqz v0, :cond_0

    .line 2845
    check-cast p1, Lorg/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->equals(Lorg/apache/commons/lang3/text/StrBuilder;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Lorg/apache/commons/lang3/text/StrBuilder;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 2822
    :cond_0
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    iget v2, p1, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    .line 2825
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 2826
    iget-object p1, p1, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 2827
    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v2, v0

    :goto_0
    if-ltz v2, :cond_3

    .line 2828
    aget-char v4, v1, v2

    aget-char v5, p1, v2

    if-eq v4, v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public equalsIgnoreCase(Lorg/apache/commons/lang3/text/StrBuilder;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 2796
    :cond_0
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    iget v2, p1, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    return v3

    .line 2799
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 2800
    iget-object p1, p1, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 2801
    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v2, v0

    :goto_0
    if-ltz v2, :cond_3

    .line 2802
    aget-char v4, v1, v2

    .line 2803
    aget-char v5, p1, v2

    if-eq v4, v5, :cond_2

    .line 2804
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eq v4, v5, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public getChars(II[CI)V
    .locals 1

    if-ltz p1, :cond_2

    if-ltz p2, :cond_1

    .line 417
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    if-gt p2, v0, :cond_1

    if-gt p1, p2, :cond_0

    .line 423
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    sub-int/2addr p2, p1

    invoke-static {v0, p1, p3, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 421
    :cond_0
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "end < start"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 418
    :cond_1
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p1

    .line 415
    :cond_2
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public getChars([C)[C
    .locals 3

    .line 395
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    if-eqz p1, :cond_0

    .line 396
    array-length v1, p1

    if-ge v1, v0, :cond_1

    .line 397
    :cond_0
    new-array p1, v0, [C

    .line 399
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public getNewLineText()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->newLine:Ljava/lang/String;

    return-object v0
.end method

.method public getNullText()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 2857
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 2859
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    .line 2860
    aget-char v3, v0, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public indexOf(C)I
    .locals 1

    const/4 v0, 0x0

    .line 2405
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(CI)I

    move-result p1

    return p1
.end method

.method public indexOf(CI)I
    .locals 3

    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 2417
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v1, -0x1

    if-lt p2, v0, :cond_1

    return v1

    .line 2420
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 2421
    :goto_0
    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge p2, v2, :cond_3

    .line 2422
    aget-char v2, v0, p2

    if-ne v2, p1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public indexOf(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    .line 2438
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public indexOf(Ljava/lang/String;I)I
    .locals 8

    const/4 v0, 0x0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 v1, -0x1

    if-eqz p1, :cond_8

    .line 2453
    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p2, v2, :cond_1

    goto :goto_2

    .line 2456
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 2458
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(CI)I

    move-result p1

    return p1

    :cond_2
    if-nez v2, :cond_3

    return p2

    .line 2463
    :cond_3
    iget v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-le v2, v4, :cond_4

    return v1

    .line 2466
    :cond_4
    iget-object v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 2467
    iget v5, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v5, v2

    add-int/2addr v5, v3

    :goto_0
    if-ge p2, v5, :cond_7

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_6

    .line 2471
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    add-int v7, p2, v3

    aget-char v7, v4, v7

    if-eq v6, v7, :cond_5

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    return p2

    :cond_7
    return v1

    :cond_8
    :goto_2
    return v1
.end method

.method public indexOf(Lorg/apache/commons/lang3/text/StrMatcher;)I
    .locals 1

    const/4 v0, 0x0

    .line 2491
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Lorg/apache/commons/lang3/text/StrMatcher;I)I

    move-result p1

    return p1
.end method

.method public indexOf(Lorg/apache/commons/lang3/text/StrMatcher;I)I
    .locals 5

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_4

    .line 2508
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p2, v1, :cond_1

    goto :goto_1

    .line 2511
    :cond_1
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    .line 2512
    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    move v3, p2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 2514
    invoke-virtual {p1, v2, v3, p2, v1}, Lorg/apache/commons/lang3/text/StrMatcher;->a([CIII)I

    move-result v4

    if-lez v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v0
.end method

.method public insert(IC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    .line 1722
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->validateIndex(I)V

    .line 1723
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1724
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1725
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    .line 1726
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    return-object p0
.end method

.method public insert(ID)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 1775
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(IF)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 1763
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(II)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 1739
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(IJ)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 1751
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(ILjava/lang/Object;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    if-nez p2, :cond_0

    .line 1595
    iget-object p2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1

    .line 1597
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    .line 1610
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->validateIndex(I)V

    if-nez p2, :cond_0

    .line 1612
    iget-object p2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    :cond_0
    if-eqz p2, :cond_1

    .line 1615
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1617
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v1, v0

    .line 1618
    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1619
    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int v4, p1, v0

    iget v5, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v5, p1

    invoke-static {v2, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1620
    iput v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v1, 0x0

    .line 1621
    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-virtual {p2, v1, v0, v2, p1}, Ljava/lang/String;->getChars(II[CI)V

    :cond_1
    return-object p0
.end method

.method public insert(IZ)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    .line 1691
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->validateIndex(I)V

    const/16 v0, 0x65

    if-eqz p2, :cond_0

    .line 1693
    iget p2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 p2, p2, 0x4

    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1694
    iget-object p2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x4

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {p2, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1695
    iget-object p2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x74

    aput-char v2, p2, p1

    .line 1696
    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 p2, v1, 0x1

    const/16 v2, 0x72

    aput-char v2, p1, v1

    .line 1697
    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x75

    aput-char v2, p1, p2

    .line 1698
    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char v0, p1, v1

    .line 1699
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_0

    .line 1701
    :cond_0
    iget p2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 p2, p2, 0x5

    invoke-virtual {p0, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1702
    iget-object p2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p1, 0x5

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {p2, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1703
    iget-object p2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, p1, 0x1

    const/16 v2, 0x66

    aput-char v2, p2, p1

    .line 1704
    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 p2, v1, 0x1

    const/16 v2, 0x61

    aput-char v2, p1, v1

    .line 1705
    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v1, p2, 0x1

    const/16 v2, 0x6c

    aput-char v2, p1, p2

    .line 1706
    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 p2, v1, 0x1

    const/16 v2, 0x73

    aput-char v2, p1, v1

    .line 1707
    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char v0, p1, p2

    .line 1708
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 p1, p1, 0x5

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :goto_0
    return-object p0
.end method

.method public insert(I[C)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 5

    .line 1637
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->validateIndex(I)V

    if-nez p2, :cond_0

    .line 1639
    iget-object p2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1

    .line 1641
    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    .line 1643
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1644
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int v3, p1, v0

    iget v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    .line 1645
    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {p2, v1, v2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1646
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_1
    return-object p0
.end method

.method public insert(I[CII)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    .line 1663
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->validateIndex(I)V

    if-nez p2, :cond_0

    .line 1665
    iget-object p2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->insert(ILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1

    :cond_0
    if-ltz p3, :cond_3

    .line 1667
    array-length v0, p2

    if-gt p3, v0, :cond_3

    if-ltz p4, :cond_2

    add-int v0, p3, p4

    .line 1670
    array-length v1, p2

    if-gt v0, v1, :cond_2

    if-lez p4, :cond_1

    .line 1674
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v0, p4

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 1675
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int v2, p1, p4

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1676
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1677
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr p1, p4

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_1
    return-object p0

    .line 1671
    :cond_2
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid length: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1668
    :cond_3
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid offset: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 280
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lastIndexOf(C)I
    .locals 1

    .line 2529
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->lastIndexOf(CI)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(CI)I
    .locals 2

    .line 2540
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p2, v0, :cond_0

    iget p2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 p2, p2, -0x1

    :cond_0
    const/4 v0, -0x1

    if-gez p2, :cond_1

    return v0

    :cond_1
    :goto_0
    if-ltz p2, :cond_3

    .line 2545
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v1, v1, p2

    if-ne v1, p1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public lastIndexOf(Ljava/lang/String;)I
    .locals 1

    .line 2561
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Ljava/lang/String;I)I
    .locals 7

    .line 2575
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v1, 0x1

    if-lt p2, v0, :cond_0

    iget p2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr p2, v1

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_7

    if-gez p2, :cond_1

    goto :goto_2

    .line 2579
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 2580
    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-gt v2, v3, :cond_5

    const/4 v3, 0x0

    if-ne v2, v1, :cond_2

    .line 2582
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->lastIndexOf(CI)I

    move-result p1

    return p1

    :cond_2
    sub-int/2addr p2, v2

    add-int/2addr p2, v1

    :goto_0
    if-ltz p2, :cond_6

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_4

    .line 2588
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int v6, p2, v1

    aget-char v5, v5, v6

    if-eq v4, v5, :cond_3

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return p2

    :cond_5
    if-nez v2, :cond_6

    return p2

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v0
.end method

.method public lastIndexOf(Lorg/apache/commons/lang3/text/StrMatcher;)I
    .locals 1

    .line 2612
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->lastIndexOf(Lorg/apache/commons/lang3/text/StrMatcher;I)I

    move-result p1

    return p1
.end method

.method public lastIndexOf(Lorg/apache/commons/lang3/text/StrMatcher;I)I
    .locals 4

    .line 2628
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p2, v0, :cond_0

    iget p2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 p2, p2, -0x1

    :cond_0
    const/4 v0, -0x1

    if-eqz p1, :cond_4

    if-gez p2, :cond_1

    goto :goto_1

    .line 2632
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    add-int/lit8 v2, p2, 0x1

    :goto_0
    if-ltz p2, :cond_3

    const/4 v3, 0x0

    .line 2635
    invoke-virtual {p1, v1, p2, v3, v2}, Lorg/apache/commons/lang3/text/StrMatcher;->a([CIII)I

    move-result v3

    if-lez v3, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v0
.end method

.method public leftString(I)Ljava/lang/String;
    .locals 3

    if-gtz p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 2297
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v1, 0x0

    if-lt p1, v0, :cond_1

    .line 2298
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 2300
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-direct {v0, v2, v1, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 190
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    return v0
.end method

.method public midString(II)Ljava/lang/String;
    .locals 2

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-lez p2, :cond_3

    .line 2346
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    .line 2349
    :cond_1
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int v1, p1, p2

    if-gt v0, v1, :cond_2

    .line 2350
    new-instance p2, Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v1, p1

    invoke-direct {p2, v0, p1, v1}, Ljava/lang/String;-><init>([CII)V

    return-object p2

    .line 2352
    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_3
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method public minimizeCapacity()Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 4

    .line 250
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    array-length v0, v0

    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 251
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 252
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    .line 253
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-object p0
.end method

.method public readFrom(Ljava/lang/Readable;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 439
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    .line 440
    instance-of v1, p1, Ljava/io/Reader;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 441
    check-cast p1, Ljava/io/Reader;

    .line 442
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 444
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    iget-object v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    array-length v4, v4

    iget v5, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v4, v5

    invoke-virtual {p1, v1, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 445
    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    .line 446
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    goto :goto_0

    .line 448
    :cond_0
    instance-of v1, p1, Ljava/nio/CharBuffer;

    if-eqz v1, :cond_1

    .line 449
    check-cast p1, Ljava/nio/CharBuffer;

    .line 450
    invoke-virtual {p1}, Ljava/nio/CharBuffer;->remaining()I

    move-result v1

    .line 451
    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 452
    iget-object v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/CharBuffer;->get([CII)Ljava/nio/CharBuffer;

    .line 453
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr p1, v1

    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_2

    .line 456
    :cond_1
    :goto_1
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 457
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    iget-object v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    array-length v4, v4

    iget v5, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v4, v5

    invoke-static {v1, v3, v4}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 458
    invoke-interface {p1, v1}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 465
    :cond_2
    :goto_2
    iget p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr p1, v0

    return p1

    .line 462
    :cond_3
    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_1
.end method

.method public replace(IILjava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    .line 1950
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->validateRange(II)I

    move-result v2

    if-nez p3, :cond_0

    const/4 p2, 0x0

    const/4 v5, 0x0

    goto :goto_0

    .line 1951
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    move v5, p2

    :goto_0
    sub-int v3, v2, p1

    move-object v0, p0

    move v1, p1

    move-object v4, p3

    .line 1952
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    return-object p0
.end method

.method public replace(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    .line 2087
    invoke-virtual {p0, p3, p4}, Lorg/apache/commons/lang3/text/StrBuilder;->validateRange(II)I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p5

    .line 2088
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->replaceImpl(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public replaceAll(CC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 2

    if-eq p1, p2, :cond_1

    const/4 v0, 0x0

    .line 1967
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_1

    .line 1968
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1969
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char p2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public replaceAll(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 2005
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-lez v1, :cond_2

    if-nez p2, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    .line 2007
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    move v8, v2

    .line 2008
    :goto_1
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    :goto_2
    if-ltz v0, :cond_2

    add-int v4, v0, v1

    move-object v2, p0

    move v3, v0

    move v5, v1

    move-object v6, p2

    move v7, v8

    .line 2010
    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/lang3/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    add-int/2addr v0, v8

    .line 2011
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :cond_2
    return-object p0
.end method

.method public replaceAll(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    .line 2049
    iget v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v3, 0x0

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->replace(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public replaceFirst(CC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 2

    if-eq p1, p2, :cond_1

    const/4 v0, 0x0

    .line 1986
    :goto_0
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_1

    .line 1987
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1988
    iget-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char p2, p1, v0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method

.method public replaceFirst(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    .line 2025
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    move v5, v1

    :goto_0
    if-lez v5, :cond_2

    .line 2027
    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_2

    if-nez p2, :cond_1

    const/4 v7, 0x0

    goto :goto_1

    .line 2029
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    move v7, v0

    :goto_1
    add-int v4, v3, v5

    move-object v2, p0

    move-object v6, p2

    .line 2030
    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/lang3/text/StrBuilder;->replaceImpl(IIILjava/lang/String;I)V

    :cond_2
    return-object p0
.end method

.method public replaceFirst(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    .line 2064
    iget v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/lang3/text/StrBuilder;->replace(Lorg/apache/commons/lang3/text/StrMatcher;Ljava/lang/String;III)Lorg/apache/commons/lang3/text/StrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public reverse()Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    .line 2135
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    return-object p0

    .line 2139
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    div-int/lit8 v0, v0, 0x2

    .line 2140
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    .line 2141
    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2142
    aget-char v4, v1, v2

    .line 2143
    aget-char v5, v1, v3

    aput-char v5, v1, v2

    .line 2144
    aput-char v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public rightString(I)Ljava/lang/String;
    .locals 3

    if-gtz p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 2319
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-lt p1, v0, :cond_1

    .line 2320
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-direct {p1, v0, v1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p1

    .line 2322
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    sub-int/2addr v2, p1

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public setCharAt(IC)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    if-ltz p1, :cond_0

    .line 328
    invoke-virtual {p0}, Lorg/apache/commons/lang3/text/StrBuilder;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 331
    iget-object v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aput-char p2, v0, p1

    return-object p0

    .line 329
    :cond_0
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public setLength(I)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 3

    if-ltz p1, :cond_2

    .line 205
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge p1, v0, :cond_0

    .line 206
    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    goto :goto_1

    .line 207
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-le p1, v0, :cond_1

    .line 208
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/StrBuilder;->ensureCapacity(I)Lorg/apache/commons/lang3/text/StrBuilder;

    .line 209
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    .line 211
    iput p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :goto_0
    if-ge v0, p1, :cond_1

    .line 213
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0

    .line 203
    :cond_2
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public setNewLineText(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 0

    .line 154
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->newLine:Ljava/lang/String;

    return-object p0
.end method

.method public setNullText(Ljava/lang/String;)Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 1

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 178
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->nullText:Ljava/lang/String;

    return-object p0
.end method

.method public size()I
    .locals 1

    .line 268
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    return v0
.end method

.method public startsWith(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2191
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    return v2

    .line 2195
    :cond_1
    iget v3, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-le v1, v3, :cond_2

    return v0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 2199
    iget-object v4, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    aget-char v4, v4, v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_3

    return v0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1

    if-ltz p1, :cond_2

    .line 2244
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-gt p2, v0, :cond_1

    if-gt p1, p2, :cond_0

    .line 2250
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 2248
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    sub-int/2addr p2, p1

    invoke-direct {v0, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 2245
    :cond_1
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p1

    .line 2242
    :cond_2
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public substring(I)Ljava/lang/String;
    .locals 1

    .line 2261
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/lang3/text/StrBuilder;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public substring(II)Ljava/lang/String;
    .locals 2

    .line 2278
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->validateRange(II)I

    move-result p2

    .line 2279
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    sub-int/2addr p2, p1

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toCharArray()[C
    .locals 4

    .line 359
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    .line 360
    sget-object v0, Lorg/apache/commons/lang3/ArrayUtils;->r:[C

    return-object v0

    .line 362
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    new-array v0, v0, [C

    .line 363
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toCharArray(II)[C
    .locals 3

    .line 378
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/lang3/text/StrBuilder;->validateRange(II)I

    move-result p2

    sub-int/2addr p2, p1

    if-nez p2, :cond_0

    .line 381
    sget-object p1, Lorg/apache/commons/lang3/ArrayUtils;->r:[C

    return-object p1

    .line 383
    :cond_0
    new-array v0, p2, [C

    .line 384
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    invoke-static {v1, p1, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 2877
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toStringBuffer()Ljava/lang/StringBuffer;
    .locals 4

    .line 2887
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public toStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .line 2898
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget v2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method public trim()Lorg/apache/commons/lang3/text/StrBuilder;
    .locals 6

    .line 2157
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-nez v0, :cond_0

    return-object p0

    .line 2160
    :cond_0
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    .line 2161
    iget-object v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->buffer:[C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x20

    if-ge v3, v0, :cond_1

    .line 2163
    aget-char v5, v1, v3

    if-gt v5, v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v3, v0, :cond_2

    add-int/lit8 v5, v0, -0x1

    .line 2166
    aget-char v5, v1, v5

    if-gt v5, v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2169
    :cond_2
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-ge v0, v1, :cond_3

    .line 2170
    iget v1, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/lang3/text/StrBuilder;->delete(II)Lorg/apache/commons/lang3/text/StrBuilder;

    :cond_3
    if-lez v3, :cond_4

    .line 2173
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/lang3/text/StrBuilder;->delete(II)Lorg/apache/commons/lang3/text/StrBuilder;

    :cond_4
    return-object p0
.end method

.method protected validateIndex(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 2942
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-gt p1, v0, :cond_0

    return-void

    .line 2943
    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method protected validateRange(II)I
    .locals 1

    if-ltz p1, :cond_2

    .line 2926
    iget v0, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    if-le p2, v0, :cond_0

    .line 2927
    iget p2, p0, Lorg/apache/commons/lang3/text/StrBuilder;->size:I

    :cond_0
    if-gt p1, p2, :cond_1

    return p2

    .line 2930
    :cond_1
    new-instance p1, Ljava/lang/StringIndexOutOfBoundsException;

    const-string p2, "end < start"

    invoke-direct {p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2924
    :cond_2
    new-instance p2, Ljava/lang/StringIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method
