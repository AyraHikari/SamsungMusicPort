.class public Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;
.super Lorg/apache/commons/lang3/text/translate/CodePointTranslator;
.source "SourceFile"


# instance fields
.field private final b:I

.field private final c:I

.field private final d:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const v1, 0x7fffffff

    const/4 v2, 0x1

    .line 54
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;-><init>(IIZ)V

    return-void
.end method

.method private constructor <init>(IIZ)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CodePointTranslator;-><init>()V

    .line 45
    iput p1, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->b:I

    .line 46
    iput p2, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->c:I

    .line 47
    iput-boolean p3, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->d:Z

    return-void
.end method

.method public static a(II)Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;
    .locals 2

    .line 85
    new-instance v0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;-><init>(IIZ)V

    return-object v0
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
    iget-boolean v0, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 105
    iget v0, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->b:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->c:I

    if-le p1, v0, :cond_2

    :cond_0
    return v1

    .line 109
    :cond_1
    iget v0, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->b:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lorg/apache/commons/lang3/text/translate/NumericEntityEscaper;->c:I

    if-gt p1, v0, :cond_2

    return v1

    :cond_2
    const-string v0, "&#"

    .line 114
    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v0, 0xa

    .line 115
    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 p1, 0x3b

    .line 116
    invoke-virtual {p2, p1}, Ljava/io/Writer;->write(I)V

    const/4 p1, 0x1

    return p1
.end method
