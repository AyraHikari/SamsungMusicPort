.class public Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;
.super Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;
.source "SourceFile"


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/lang3/text/translate/UnicodeEscaper;-><init>(IIZ)V

    return-void
.end method

.method public static a(II)Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;
    .locals 2

    .line 80
    new-instance v0, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
.method protected b(I)Ljava/lang/String;
    .locals 2

    .line 110
    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-char v1, p1, v1

    invoke-static {v1}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-char p1, p1, v1

    invoke-static {p1}, Lorg/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
