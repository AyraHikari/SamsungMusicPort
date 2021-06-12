.class public Lcom/dawin/http/parser/MediaFileInfoParser;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field public mMediaFileUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/NodeList;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/dawin/http/parser/MediaFileInfoParser;->mMediaFileUrl:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dawin/http/parser/MediaFileInfoParser;->a:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    if-ge v0, p1, :cond_4

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p1

    const-string v3, "MediaFile"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dawin/http/parser/MediaFileInfoParser;->mMediaFileUrl:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    iput-boolean v1, p0, Lcom/dawin/http/parser/MediaFileInfoParser;->a:Z

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public getMediaFileUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dawin/http/parser/MediaFileInfoParser;->mMediaFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isParsingProblemOccured()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dawin/http/parser/MediaFileInfoParser;->a:Z

    return v0
.end method
