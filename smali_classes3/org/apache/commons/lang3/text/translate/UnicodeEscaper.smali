.class public Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;
.super Lorg/apache/commons/lang3/text/translate/CodePointTranslator;
.source "SourceFile"


# instance fields
.field private final b:I

.field private final c:I

.field private final d:Z


# direct methods
.method protected constructor <init>(IIZ)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CodePointTranslator;-><init>()V

    .line 52
    iput p1, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->b:I

    .line 53
    iput p2, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->c:I

    .line 54
    iput-boolean p3, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->d:Z

    return-void
.end method


# virtual methods
.method public a(ILjava/io/Writer;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-boolean v0, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 105
    iget v0, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->b:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->c:I

    if-le p1, v0, :cond_2

    :cond_0
    return v1

    .line 109
    :cond_1
    iget v0, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->b:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->c:I

    if-gt p1, v0, :cond_2

    return v1

    :cond_2
    const v0, 0xffff

    if-le p1, v0, :cond_3

    .line 116
    invoke-virtual {p0, p1}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "\\u"

    .line 118
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 119
    sget-object v0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->a:[C

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 120
    sget-object v0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->a:[C

    shr-int/lit8 v1, p1, 0x8

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 121
    sget-object v0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->a:[C

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-char v0, v0, v1

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 122
    sget-object v0, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->a:[C

    and-int/lit8 p1, p1, 0xf

    aget-char p1, v0, p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(I)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected b(I)Ljava/lang/String;
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
