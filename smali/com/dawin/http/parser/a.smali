.class public Lcom/dawin/http/parser/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/w3c/dom/Element;

.field private b:Lcom/dawin/http/parser/BasicInfoParser;

.field private c:Lcom/dawin/http/parser/ExtensionInfoParser;

.field private d:Lcom/dawin/http/parser/MediaFileInfoParser;

.field private e:Lcom/dawin/http/parser/TrackingInfoParser;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    iput-object p1, p0, Lcom/dawin/http/parser/a;->a:Lorg/w3c/dom/Element;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    :goto_0
    new-instance p1, Lcom/dawin/http/parser/BasicInfoParser;

    iget-object v0, p0, Lcom/dawin/http/parser/a;->a:Lorg/w3c/dom/Element;

    invoke-direct {p1, v0}, Lcom/dawin/http/parser/BasicInfoParser;-><init>(Lorg/w3c/dom/Element;)V

    iput-object p1, p0, Lcom/dawin/http/parser/a;->b:Lcom/dawin/http/parser/BasicInfoParser;

    iget-object p1, p0, Lcom/dawin/http/parser/a;->b:Lcom/dawin/http/parser/BasicInfoParser;

    iget-object p1, p1, Lcom/dawin/http/parser/BasicInfoParser;->mAdId:Ljava/lang/String;

    const-string v0, "-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/dawin/http/parser/a;->a:Lorg/w3c/dom/Element;

    if-eqz p1, :cond_0

    :try_start_1
    new-instance p1, Lcom/dawin/http/parser/MediaFileInfoParser;

    iget-object v0, p0, Lcom/dawin/http/parser/a;->a:Lorg/w3c/dom/Element;

    const-string v1, "MediaFiles"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/dawin/http/parser/MediaFileInfoParser;-><init>(Lorg/w3c/dom/NodeList;)V

    iput-object p1, p0, Lcom/dawin/http/parser/a;->d:Lcom/dawin/http/parser/MediaFileInfoParser;

    new-instance p1, Lcom/dawin/http/parser/TrackingInfoParser;

    iget-object v0, p0, Lcom/dawin/http/parser/a;->a:Lorg/w3c/dom/Element;

    const-string v1, "TrackingEvents"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    iget-object v1, p0, Lcom/dawin/http/parser/a;->b:Lcom/dawin/http/parser/BasicInfoParser;

    iget-object v1, v1, Lcom/dawin/http/parser/BasicInfoParser;->mAdDuration:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/dawin/http/parser/TrackingInfoParser;-><init>(Lorg/w3c/dom/NodeList;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/dawin/http/parser/a;->e:Lcom/dawin/http/parser/TrackingInfoParser;

    new-instance p1, Lcom/dawin/http/parser/ExtensionInfoParser;

    iget-object v0, p0, Lcom/dawin/http/parser/a;->a:Lorg/w3c/dom/Element;

    const-string v1, "Extensions"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    iget-object v1, p0, Lcom/dawin/http/parser/a;->b:Lcom/dawin/http/parser/BasicInfoParser;

    iget-object v2, p0, Lcom/dawin/http/parser/a;->e:Lcom/dawin/http/parser/TrackingInfoParser;

    invoke-direct {p1, v0, v1, v2}, Lcom/dawin/http/parser/ExtensionInfoParser;-><init>(Lorg/w3c/dom/NodeList;Lcom/dawin/http/parser/BasicInfoParser;Lcom/dawin/http/parser/TrackingInfoParser;)V

    iput-object p1, p0, Lcom/dawin/http/parser/a;->c:Lcom/dawin/http/parser/ExtensionInfoParser;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_1

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method


# virtual methods
.method public a()Lcom/dawin/objects/AdInfos;
    .locals 5

    new-instance v0, Lcom/dawin/objects/AdInfos;

    iget-object v1, p0, Lcom/dawin/http/parser/a;->b:Lcom/dawin/http/parser/BasicInfoParser;

    iget-object v2, p0, Lcom/dawin/http/parser/a;->e:Lcom/dawin/http/parser/TrackingInfoParser;

    iget-object v3, p0, Lcom/dawin/http/parser/a;->d:Lcom/dawin/http/parser/MediaFileInfoParser;

    iget-object v4, p0, Lcom/dawin/http/parser/a;->c:Lcom/dawin/http/parser/ExtensionInfoParser;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/dawin/objects/AdInfos;-><init>(Lcom/dawin/http/parser/BasicInfoParser;Lcom/dawin/http/parser/TrackingInfoParser;Lcom/dawin/http/parser/MediaFileInfoParser;Lcom/dawin/http/parser/ExtensionInfoParser;)V

    return-object v0
.end method
