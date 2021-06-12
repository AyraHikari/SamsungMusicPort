.class Lcom/mz/common/network/parser/ParserSSPMovie$1;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mz/common/network/parser/ParserSSPMovie;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mz/common/network/parser/ParserSSPMovie;


# direct methods
.method constructor <init>(Lcom/mz/common/network/parser/ParserSSPMovie;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    .line 47
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {v0}, Lcom/mz/common/network/parser/ParserSSPMovie;->c(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-virtual {v1, p1, p2, p3}, Lcom/mz/common/network/parser/ParserSSPMovie;->a([CII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public endDocument()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    new-instance v1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;

    iget-object v2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    const-string v3, "endDocument"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;-><init>(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 106
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {p1, p3}, Lcom/mz/common/network/parser/ParserSSPMovie;->b(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {p1}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {p2}, Lcom/mz/common/network/parser/ParserSSPMovie;->b(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {p1}, Lcom/mz/common/network/parser/ParserSSPMovie;->c(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/StringBuffer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {p1}, Lcom/mz/common/network/parser/ParserSSPMovie;->c(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    array-length p1, p1

    if-lez p1, :cond_0

    const-string p1, "\n"

    iget-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {p2}, Lcom/mz/common/network/parser/ParserSSPMovie;->c(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/StringBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    new-instance p2, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;

    iget-object p3, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {v0}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    iget-object v2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {v2}, Lcom/mz/common/network/parser/ParserSSPMovie;->c(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, p3, v0, v1, v2}, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;-><init>(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;)V

    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;J)V

    .line 52
    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    new-instance v1, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;

    iget-object v2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    const-string v3, "startDocument"

    const-string v4, ""

    const-string v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;-><init>(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 63
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p1, p2}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/StringBuffer;)V

    .line 64
    iget-object p1, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {p1, p3}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/String;)V

    const-string p1, "VAST"

    .line 66
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {p2}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "version"

    .line 67
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    new-instance p3, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;

    iget-object p4, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {v0}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "version"

    invoke-direct {p3, p4, v0, v1, p1}, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;-><init>(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;)V

    goto/16 :goto_0

    :cond_0
    const-string p1, "Ad"

    .line 69
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {p2}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "id"

    .line 70
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    new-instance p3, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;

    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    iget-object v1, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {v1}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-direct {p3, v0, v1, v2, p1}, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;-><init>(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;)V

    const-string p1, "sequence"

    .line 72
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    new-instance p3, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;

    iget-object p4, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {v0}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sequence"

    invoke-direct {p3, p4, v0, v1, p1}, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;-><init>(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;)V

    goto/16 :goto_0

    :cond_1
    const-string p1, "adsystem"

    .line 74
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {p2}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "version"

    .line 75
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    new-instance p3, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;

    iget-object p4, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {v0}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "version"

    invoke-direct {p3, p4, v0, v1, p1}, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;-><init>(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;)V

    goto/16 :goto_0

    :cond_2
    const-string p1, "Creative"

    .line 77
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {p2}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "id"

    .line 78
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 79
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    new-instance p3, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;

    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    iget-object v1, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {v1}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-direct {p3, v0, v1, v2, p1}, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;-><init>(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;)V

    const-string p1, "sequence"

    .line 80
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 81
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    new-instance p3, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;

    iget-object p4, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {v0}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sequence"

    invoke-direct {p3, p4, v0, v1, p1}, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;-><init>(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;)V

    goto/16 :goto_0

    :cond_3
    const-string p1, "Linear"

    .line 82
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {p2}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "skipoffset"

    .line 83
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 84
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    new-instance p3, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;

    iget-object p4, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {v0}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "skipoffset"

    invoke-direct {p3, p4, v0, v1, p1}, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;-><init>(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;)V

    goto/16 :goto_0

    :cond_4
    const-string p1, "Tracking"

    .line 85
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {p2}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "event"

    .line 86
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    new-instance p3, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;

    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    iget-object v1, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {v1}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "event"

    invoke-direct {p3, v0, v1, v2, p1}, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;-><init>(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;)V

    const-string p1, "offset"

    .line 88
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    new-instance p3, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;

    iget-object p4, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {v0}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "offset"

    invoke-direct {p3, p4, v0, v1, p1}, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;-><init>(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;)V

    goto/16 :goto_0

    :cond_5
    const-string p1, "MediaFile"

    .line 90
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {p2}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "delivery"

    .line 91
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 92
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    new-instance p3, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;

    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    iget-object v1, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {v1}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "delivery"

    invoke-direct {p3, v0, v1, v2, p1}, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;-><init>(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;)V

    const-string p1, "type"

    .line 93
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 94
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    new-instance p3, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;

    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    iget-object v1, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {v1}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    invoke-direct {p3, v0, v1, v2, p1}, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;-><init>(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;)V

    const-string p1, "width"

    .line 95
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 96
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    new-instance p3, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;

    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    iget-object v1, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {v1}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "width"

    invoke-direct {p3, v0, v1, v2, p1}, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;-><init>(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;)V

    const-string p1, "height"

    .line 97
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 98
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    new-instance p3, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;

    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    iget-object v1, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {v1}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "height"

    invoke-direct {p3, v0, v1, v2, p1}, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;-><init>(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;)V

    const-string p1, "bitrate"

    .line 99
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    iget-object p2, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    new-instance p3, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;

    iget-object p4, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    iget-object v0, p0, Lcom/mz/common/network/parser/ParserSSPMovie$1;->a:Lcom/mz/common/network/parser/ParserSSPMovie;

    invoke-static {v0}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bitrate"

    invoke-direct {p3, p4, v0, v1, p1}, Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;-><init>(Lcom/mz/common/network/parser/ParserSSPMovie;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/mz/common/network/parser/ParserSSPMovie;->a(Lcom/mz/common/network/parser/ParserSSPMovie$ParsingData;)V

    :cond_6
    :goto_0
    return-void
.end method
