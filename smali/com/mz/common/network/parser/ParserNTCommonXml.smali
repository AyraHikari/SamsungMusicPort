.class public abstract Lcom/mz/common/network/parser/ParserNTCommonXml;
.super Lcom/mz/common/network/parser/ParserNTCommon;
.source "SourceFile"


# instance fields
.field protected a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/mz/common/network/parser/ParserNTCommon;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/mz/common/network/parser/ParserNTCommonXml;->a:Z

    return-void
.end method


# virtual methods
.method protected a([CII)Ljava/lang/String;
    .locals 1

    .line 45
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method protected a(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z
    .locals 3

    .line 30
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 32
    invoke-static {p1}, Lcom/mz/common/network/parser/ParserNTCommonXml;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xml : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mz/common/MzLog;->d(Ljava/lang/String;)V

    .line 34
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance p1, Lorg/xml/sax/InputSource;

    invoke-direct {p1, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 36
    invoke-virtual {v0, p1, p2}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method
