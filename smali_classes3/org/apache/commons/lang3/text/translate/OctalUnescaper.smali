.class public Lorg/apache/commons/lang3/text/translate/OctalUnescaper;
.super Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

    return-void
.end method

.method private a(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x37

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p1, v0, :cond_0

    const/16 v0, 0x33

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    if-lez v0, :cond_1

    add-int/lit8 v3, p2, 0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;->a(C)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, p2, 0x2

    add-int/lit8 p2, p2, 0x3

    .line 48
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-le v0, v1, :cond_0

    .line 50
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-direct {p0, v5}, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;->a(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    if-le v0, v4, :cond_0

    .line 52
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;->b(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/lang3/text/translate/OctalUnescaper;->a(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x8

    invoke-static {p1, p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(I)V

    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/2addr p1, v1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
