.class public Lcom/dawin/http/parser/BasicInfoParser;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field public mAdDuration:Ljava/lang/String;

.field public mAdId:Ljava/lang/String;

.field public mErrorUrl:Ljava/lang/String;

.field public mImpression:Ljava/lang/String;

.field public mSessionKey:Ljava/lang/String;

.field public mSkipOffset:Ljava/lang/String;

.field public mVideoClickThrough:Ljava/lang/String;

.field public mVideoClickTracking:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/http/parser/BasicInfoParser;->mAdId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/http/parser/BasicInfoParser;->mErrorUrl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/http/parser/BasicInfoParser;->mAdDuration:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/http/parser/BasicInfoParser;->mSkipOffset:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/http/parser/BasicInfoParser;->mVideoClickThrough:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/http/parser/BasicInfoParser;->mVideoClickTracking:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/http/parser/BasicInfoParser;->mImpression:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/http/parser/BasicInfoParser;->mSessionKey:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dawin/http/parser/BasicInfoParser;->a:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_d

    :try_start_0
    const-string v2, "Ad"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/dawin/http/parser/BasicInfoParser;->mAdId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    const-string v2, "-1"

    iput-object v2, p0, Lcom/dawin/http/parser/BasicInfoParser;->mAdId:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/dawin/http/parser/BasicInfoParser;->mAdId:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/dawin/http/parser/BasicInfoParser;->mAdId:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "-1"

    iput-object v2, p0, Lcom/dawin/http/parser/BasicInfoParser;->mAdId:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lcom/dawin/http/parser/BasicInfoParser;->mAdId:Ljava/lang/String;

    const-string v3, "-1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p1, "Not applicable ad"

    invoke-static {p1}, Lcom/dawin/util/e;->d(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_2
    const-string v2, "Error"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const-string v3, "Duration"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    const-string v4, "VideoClicks"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-interface {v4, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    const-string v5, "InLine"

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v6, v7, :cond_4

    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-interface {v2, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/dawin/http/parser/BasicInfoParser;->mErrorUrl:Ljava/lang/String;

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v2, v6, :cond_6

    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/dawin/util/CommonUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/dawin/http/parser/BasicInfoParser;->mAdDuration:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :try_start_2
    const-string v2, "Linear"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    const-string v2, "Linear"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    invoke-interface {p1, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dawin/http/parser/BasicInfoParser;->mSkipOffset:Ljava/lang/String;

    iget-object p1, p0, Lcom/dawin/http/parser/BasicInfoParser;->mSkipOffset:Ljava/lang/String;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/dawin/http/parser/BasicInfoParser;->mAdId:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    const-string p1, "00:00:05"

    iput-object p1, p0, Lcom/dawin/http/parser/BasicInfoParser;->mSkipOffset:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_8
    const/4 p1, 0x0

    :goto_3
    :try_start_3
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge p1, v2, :cond_b

    invoke-interface {v4, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-interface {v4, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ClickThrough"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    iput-object v3, p0, Lcom/dawin/http/parser/BasicInfoParser;->mVideoClickThrough:Ljava/lang/String;

    goto :goto_4

    :cond_9
    const-string v6, "ClickTracking"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iput-object v3, p0, Lcom/dawin/http/parser/BasicInfoParser;->mVideoClickTracking:Ljava/lang/String;

    :cond_a
    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_b
    :goto_5
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    if-ge v0, p1, :cond_e

    invoke-interface {v5, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-interface {v5, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Impression"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iput-object v2, p0, Lcom/dawin/http/parser/BasicInfoParser;->mImpression:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    iget-object p1, p0, Lcom/dawin/http/parser/BasicInfoParser;->mImpression:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/dawin/http/parser/BasicInfoParser;->mImpression:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v2, "key"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dawin/http/parser/BasicInfoParser;->mSessionKey:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Session Key : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/dawin/http/parser/BasicInfoParser;->mSessionKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dawin/util/e;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception p1

    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :cond_c
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    iput-boolean v1, p0, Lcom/dawin/http/parser/BasicInfoParser;->a:Z

    :cond_e
    :goto_7
    return-void
.end method


# virtual methods
.method public isParsingProblemOccured()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dawin/http/parser/BasicInfoParser;->a:Z

    return v0
.end method
