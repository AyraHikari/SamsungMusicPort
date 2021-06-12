.class public Lcom/dawin/http/parser/ExtensionInfoParser;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/dawin/objects/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/dawin/objects/a;

.field private c:Z

.field private d:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/NodeList;Lcom/dawin/http/parser/BasicInfoParser;Lcom/dawin/http/parser/TrackingInfoParser;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/dawin/http/parser/ExtensionInfoParser;->b:Lcom/dawin/objects/a;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/dawin/http/parser/ExtensionInfoParser;->c:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/dawin/http/parser/ExtensionInfoParser;->d:I

    :try_start_0
    iget-object p2, p2, Lcom/dawin/http/parser/BasicInfoParser;->mSkipOffset:Ljava/lang/String;

    invoke-static {p2}, Lcom/dawin/util/CommonUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/dawin/http/parser/ExtensionInfoParser;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/dawin/http/parser/ExtensionInfoParser;->a:Ljava/util/ArrayList;

    new-instance p2, Lcom/dawin/objects/a;

    invoke-direct {p2}, Lcom/dawin/objects/a;-><init>()V

    iput-object p2, p0, Lcom/dawin/http/parser/ExtensionInfoParser;->b:Lcom/dawin/objects/a;

    if-eqz p1, :cond_34

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p2

    if-lez p2, :cond_34

    invoke-interface {p1, p3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x1

    if-ge p2, v0, :cond_33

    invoke-interface {p1, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Extension"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    :try_start_1
    new-instance v0, Lcom/dawin/objects/c;

    invoke-direct {v0}, Lcom/dawin/objects/c;-><init>()V

    invoke-interface {p1, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-ge v3, v4, :cond_d

    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v5, "button"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v4, 0x3e8

    iput v4, v0, Lcom/dawin/objects/c;->b:I

    goto/16 :goto_2

    :cond_0
    const-string v5, "banner"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v4, 0x7d0

    iput v4, v0, Lcom/dawin/objects/c;->b:I

    goto/16 :goto_2

    :cond_1
    const-string v6, "action"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    const-string v5, "click"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/16 v4, 0x2711

    iput v4, v0, Lcom/dawin/objects/c;->c:I

    goto/16 :goto_2

    :cond_2
    const-string v5, "call"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/16 v4, 0x2712

    iput v4, v0, Lcom/dawin/objects/c;->c:I

    goto/16 :goto_2

    :cond_3
    const-string v5, "down"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/16 v4, 0x2713

    iput v4, v0, Lcom/dawin/objects/c;->c:I

    goto/16 :goto_2

    :cond_4
    const-string v5, "skip"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v4, 0x7530

    iput v4, v0, Lcom/dawin/objects/c;->c:I

    goto :goto_2

    :cond_5
    const-string v5, "skipwait"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const v4, 0x9c40

    iput v4, v0, Lcom/dawin/objects/c;->c:I

    goto :goto_2

    :cond_6
    const-string v5, "time"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const v4, 0xc350

    iput v4, v0, Lcom/dawin/objects/c;->c:I

    goto :goto_2

    :cond_7
    const-string v5, "landing"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v4, 0x4e20

    iput v4, v0, Lcom/dawin/objects/c;->c:I

    goto :goto_2

    :cond_8
    const-string v5, "none"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const v4, 0x1869f

    iput v4, v0, Lcom/dawin/objects/c;->c:I

    goto :goto_2

    :cond_9
    const-string v6, "viewstart"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    iput-object v4, v0, Lcom/dawin/objects/c;->q:Ljava/lang/String;

    goto :goto_2

    :cond_a
    const-string v6, "viewend"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iput-object v4, v0, Lcom/dawin/objects/c;->r:Ljava/lang/String;

    goto :goto_2

    :cond_b
    const-string v6, "src"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/dawin/http/parser/ExtensionInfoParser;->b:Lcom/dawin/objects/a;

    invoke-virtual {v5, v4}, Lcom/dawin/objects/a;->a(Ljava/lang/String;)V

    iput-boolean v1, v0, Lcom/dawin/objects/c;->k:Z

    :cond_c
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_d
    invoke-interface {p1, p2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_3
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_31

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/16 v3, 0xc8

    iput v3, v0, Lcom/dawin/objects/c;->a:I

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/dawin/objects/c;->p:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    const/4 v4, 0x0

    :goto_4
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_30

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "width"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    iput-object v5, v0, Lcom/dawin/objects/c;->h:Ljava/lang/String;

    goto :goto_5

    :cond_e
    const-string v7, "height"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iput-object v5, v0, Lcom/dawin/objects/c;->i:Ljava/lang/String;

    goto :goto_5

    :cond_f
    const-string v7, "left"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    iput-object v5, v0, Lcom/dawin/objects/c;->d:Ljava/lang/String;

    goto :goto_5

    :cond_10
    const-string v7, "top"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    iput-object v5, v0, Lcom/dawin/objects/c;->e:Ljava/lang/String;

    goto :goto_5

    :cond_11
    const-string v7, "right"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    iput-object v5, v0, Lcom/dawin/objects/c;->f:Ljava/lang/String;

    goto :goto_5

    :cond_12
    const-string v7, "bottom"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    iput-object v5, v0, Lcom/dawin/objects/c;->g:Ljava/lang/String;

    :cond_13
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_14
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const/16 v3, 0x64

    iput v3, v0, Lcom/dawin/objects/c;->a:I

    new-instance v3, Lcom/dawin/objects/c$a;

    invoke-direct {v3}, Lcom/dawin/objects/c$a;-><init>()V

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/dawin/objects/c$a;->c:Ljava/lang/String;

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    const/4 v5, 0x0

    :goto_6
    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_21

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "font"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    iput-object v6, v3, Lcom/dawin/objects/c$a;->d:Ljava/lang/String;

    goto/16 :goto_7

    :cond_15
    const-string v8, "format"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    iput-object v6, v3, Lcom/dawin/objects/c$a;->b:Ljava/lang/String;

    goto/16 :goto_7

    :cond_16
    const-string v8, "counter"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    iput-object v6, v3, Lcom/dawin/objects/c$a;->a:Ljava/lang/String;

    goto :goto_7

    :cond_17
    const-string v8, "size"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    iput-object v6, v3, Lcom/dawin/objects/c$a;->e:Ljava/lang/String;

    goto :goto_7

    :cond_18
    const-string v8, "color"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    iput-object v6, v3, Lcom/dawin/objects/c$a;->f:Ljava/lang/String;

    goto :goto_7

    :cond_19
    const-string v8, "style"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    iput-object v6, v3, Lcom/dawin/objects/c$a;->g:Ljava/lang/String;

    goto :goto_7

    :cond_1a
    const-string v8, "edgecolor"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    iput-object v6, v3, Lcom/dawin/objects/c$a;->h:Ljava/lang/String;

    goto :goto_7

    :cond_1b
    const-string v8, "edgesize"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    iput-object v6, v3, Lcom/dawin/objects/c$a;->i:Ljava/lang/String;

    goto :goto_7

    :cond_1c
    const-string v8, "left"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    iput-object v6, v3, Lcom/dawin/objects/c$a;->j:Ljava/lang/String;

    goto :goto_7

    :cond_1d
    const-string v8, "top"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    iput-object v6, v3, Lcom/dawin/objects/c$a;->k:Ljava/lang/String;

    goto :goto_7

    :cond_1e
    const-string v8, "right"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    iput-object v6, v3, Lcom/dawin/objects/c$a;->l:Ljava/lang/String;

    goto :goto_7

    :cond_1f
    const-string v8, "bottom"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    iput-object v6, v3, Lcom/dawin/objects/c$a;->m:Ljava/lang/String;

    :cond_20
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_6

    :cond_21
    iget-object v4, v0, Lcom/dawin/objects/c;->j:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    :cond_22
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Background"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    const/4 v4, 0x0

    :goto_8
    invoke-interface {v3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    if-ge v4, v5, :cond_30

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "color"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    iput-object v5, v0, Lcom/dawin/objects/c;->l:Ljava/lang/String;

    goto :goto_9

    :cond_23
    const-string v7, "edgecolor"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    iput-object v5, v0, Lcom/dawin/objects/c;->m:Ljava/lang/String;

    goto :goto_9

    :cond_24
    const-string v7, "edgesize"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    iput-object v5, v0, Lcom/dawin/objects/c;->n:Ljava/lang/String;

    goto :goto_9

    :cond_25
    const-string v7, "left"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26

    iput-object v5, v0, Lcom/dawin/objects/c;->d:Ljava/lang/String;

    goto :goto_9

    :cond_26
    const-string v7, "top"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27

    iput-object v5, v0, Lcom/dawin/objects/c;->e:Ljava/lang/String;

    goto :goto_9

    :cond_27
    const-string v7, "right"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    iput-object v5, v0, Lcom/dawin/objects/c;->f:Ljava/lang/String;

    goto :goto_9

    :cond_28
    const-string v7, "bottom"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_29

    iput-object v5, v0, Lcom/dawin/objects/c;->g:Ljava/lang/String;

    goto :goto_9

    :cond_29
    const-string v7, "width"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    iput-object v5, v0, Lcom/dawin/objects/c;->h:Ljava/lang/String;

    goto :goto_9

    :cond_2a
    const-string v7, "height"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2b

    iput-object v5, v0, Lcom/dawin/objects/c;->i:Ljava/lang/String;

    goto :goto_9

    :cond_2b
    const-string v7, "radius"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c

    iput-object v5, v0, Lcom/dawin/objects/c;->o:Ljava/lang/String;

    :cond_2c
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    :cond_2d
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Impression"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/dawin/objects/c;->s:Ljava/lang/String;

    goto :goto_a

    :cond_2e
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ClickThrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/dawin/objects/c;->t:Ljava/lang/String;

    goto :goto_a

    :cond_2f
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ClickTracking"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/dawin/objects/c;->u:Ljava/lang/String;

    :cond_30
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_31
    iget-object v1, p0, Lcom/dawin/http/parser/ExtensionInfoParser;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_32
    :goto_b
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_33
    iget-object p1, p0, Lcom/dawin/http/parser/ExtensionInfoParser;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_34

    iput-boolean v1, p0, Lcom/dawin/http/parser/ExtensionInfoParser;->c:Z

    :cond_34
    return-void
.end method


# virtual methods
.method public getExtensionBitmap()Lcom/dawin/objects/a;
    .locals 1

    iget-object v0, p0, Lcom/dawin/http/parser/ExtensionInfoParser;->b:Lcom/dawin/objects/a;

    return-object v0
.end method

.method public getExtensionInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/dawin/objects/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dawin/http/parser/ExtensionInfoParser;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIsAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/dawin/http/parser/ExtensionInfoParser;->c:Z

    return v0
.end method

.method public getSkipShowTime()I
    .locals 1

    iget v0, p0, Lcom/dawin/http/parser/ExtensionInfoParser;->d:I

    return v0
.end method
