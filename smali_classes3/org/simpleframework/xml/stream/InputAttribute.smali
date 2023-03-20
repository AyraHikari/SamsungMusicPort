.class Lorg/simpleframework/xml/stream/InputAttribute;
.super Ljava/lang/Object;
.source "InputAttribute.java"

# interfaces
.implements Lorg/simpleframework/xml/stream/InputNode;


# instance fields
.field private name:Ljava/lang/String;

.field private parent:Lorg/simpleframework/xml/stream/InputNode;

.field private prefix:Ljava/lang/String;

.field private reference:Ljava/lang/String;

.field private source:Ljava/lang/Object;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/simpleframework/xml/stream/InputAttribute;->parent:Lorg/simpleframework/xml/stream/InputNode;

    .line 3
    iput-object p3, p0, Lorg/simpleframework/xml/stream/InputAttribute;->value:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lorg/simpleframework/xml/stream/InputAttribute;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/stream/Attribute;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/Attribute;->getReference()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->reference:Ljava/lang/String;

    .line 7
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/Attribute;->getPrefix()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->prefix:Ljava/lang/String;

    .line 8
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/Attribute;->getSource()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->source:Ljava/lang/Object;

    .line 9
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->value:Ljava/lang/String;

    .line 10
    invoke-interface {p2}, Lorg/simpleframework/xml/stream/Attribute;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/simpleframework/xml/stream/InputAttribute;->name:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lorg/simpleframework/xml/stream/InputAttribute;->parent:Lorg/simpleframework/xml/stream/InputNode;

    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAttributes()Lorg/simpleframework/xml/stream/NodeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/simpleframework/xml/stream/NodeMap<",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/simpleframework/xml/stream/InputNodeMap;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/stream/InputNodeMap;-><init>(Lorg/simpleframework/xml/stream/InputNode;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNext()Lorg/simpleframework/xml/stream/InputNode;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNext(Ljava/lang/String;)Lorg/simpleframework/xml/stream/InputNode;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getParent()Lorg/simpleframework/xml/stream/InputNode;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->parent:Lorg/simpleframework/xml/stream/InputNode;

    return-object v0
.end method

.method public bridge synthetic getParent()Lorg/simpleframework/xml/stream/Node;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/simpleframework/xml/stream/InputAttribute;->getParent()Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    return-object v0
.end method

.method public getPosition()Lorg/simpleframework/xml/stream/Position;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->parent:Lorg/simpleframework/xml/stream/InputNode;

    invoke-interface {v0}, Lorg/simpleframework/xml/stream/InputNode;->getPosition()Lorg/simpleframework/xml/stream/Position;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getReference()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->reference:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/stream/InputAttribute;->value:Ljava/lang/String;

    return-object v0
.end method

.method public isElement()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRoot()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public skip()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/simpleframework/xml/stream/InputAttribute;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/simpleframework/xml/stream/InputAttribute;->value:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "attribute %s=\'%s\'"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
