.class Lorg/simpleframework/xml/stream/NodeExtractor;
.super Ljava/util/LinkedList;
.source "NodeExtractor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Lorg/w3c/dom/Node;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeExtractor;->extract(Lorg/w3c/dom/Document;)V

    return-void
.end method

.method private extract(Lorg/w3c/dom/Document;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 3
    invoke-direct {p0, p1}, Lorg/simpleframework/xml/stream/NodeExtractor;->extract(Lorg/w3c/dom/Node;)V

    :cond_0
    return-void
.end method

.method private extract(Lorg/w3c/dom/Node;)V
    .locals 5

    .line 4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 8
    invoke-virtual {p0, v2}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 9
    invoke-direct {p0, v2}, Lorg/simpleframework/xml/stream/NodeExtractor;->extract(Lorg/w3c/dom/Node;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
