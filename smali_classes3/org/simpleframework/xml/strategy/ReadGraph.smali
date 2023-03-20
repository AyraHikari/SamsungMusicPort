.class Lorg/simpleframework/xml/strategy/ReadGraph;
.super Ljava/util/HashMap;
.source "ReadGraph.java"


# instance fields
.field private final label:Ljava/lang/String;

.field private final length:Ljava/lang/String;

.field private final loader:Lorg/simpleframework/xml/strategy/Loader;

.field private final mark:Ljava/lang/String;

.field private final refer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Contract;Lorg/simpleframework/xml/strategy/Loader;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->getReference()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->refer:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->getIdentity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->mark:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->getLength()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->length:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->getLabel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->label:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->loader:Lorg/simpleframework/xml/strategy/Loader;

    return-void
.end method

.method private readArray(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;
    .locals 0

    .line 1
    iget-object p1, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->length:Ljava/lang/String;

    invoke-interface {p3, p1}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/Node;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    new-instance p3, Lorg/simpleframework/xml/strategy/ArrayValue;

    invoke-direct {p3, p2, p1}, Lorg/simpleframework/xml/strategy/ArrayValue;-><init>(Ljava/lang/Class;I)V

    return-object p3
.end method

.method private readInstance(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->mark:Ljava/lang/String;

    invoke-interface {p3, v0}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/strategy/ReadGraph;->readReference(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/simpleframework/xml/strategy/ReadGraph;->readValue(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;Ljava/lang/String;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Lorg/simpleframework/xml/strategy/CycleException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object v0, p2, p3

    const-string p3, "Element \'%s\' already exists"

    invoke-direct {p1, p3, p2}, Lorg/simpleframework/xml/strategy/CycleException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1
.end method

.method private readReference(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->refer:Ljava/lang/String;

    invoke-interface {p3, v0}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/strategy/ReadGraph;->readValue(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/Node;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    new-instance p1, Lorg/simpleframework/xml/strategy/Reference;

    invoke-direct {p1, p3, p2}, Lorg/simpleframework/xml/strategy/Reference;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    return-object p1

    .line 7
    :cond_1
    new-instance p2, Lorg/simpleframework/xml/strategy/CycleException;

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    const-string p1, "Invalid reference \'%s\' found"

    invoke-direct {p2, p1, p3}, Lorg/simpleframework/xml/strategy/CycleException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p2
.end method

.method private readValue(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;
    .locals 1

    .line 1
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/strategy/ReadGraph;->readArray(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Lorg/simpleframework/xml/strategy/ObjectValue;

    invoke-direct {p1, p2}, Lorg/simpleframework/xml/strategy/ObjectValue;-><init>(Ljava/lang/Class;)V

    return-object p1
.end method

.method private readValue(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;Ljava/lang/String;)Lorg/simpleframework/xml/strategy/Value;
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/strategy/ReadGraph;->readValue(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object p1

    if-eqz p4, :cond_0

    .line 6
    new-instance p2, Lorg/simpleframework/xml/strategy/Allocate;

    invoke-direct {p2, p1, p0, p4}, Lorg/simpleframework/xml/strategy/Allocate;-><init>(Lorg/simpleframework/xml/strategy/Value;Ljava/util/Map;Ljava/lang/String;)V

    return-object p2

    :cond_0
    return-object p1
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->label:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/Node;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->loader:Lorg/simpleframework/xml/strategy/Loader;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/strategy/Loader;->load(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 7
    :cond_1
    invoke-direct {p0, p1, v1, p2}, Lorg/simpleframework/xml/strategy/ReadGraph;->readInstance(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object p1

    return-object p1
.end method
