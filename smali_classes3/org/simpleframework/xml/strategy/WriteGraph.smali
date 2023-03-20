.class Lorg/simpleframework/xml/strategy/WriteGraph;
.super Ljava/util/IdentityHashMap;
.source "WriteGraph.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/IdentityHashMap<",
        "Ljava/lang/Object;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final label:Ljava/lang/String;

.field private final length:Ljava/lang/String;

.field private final mark:Ljava/lang/String;

.field private final refer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Contract;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/IdentityHashMap;-><init>()V

    .line 2
    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->getReference()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/WriteGraph;->refer:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->getIdentity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/WriteGraph;->mark:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->getLength()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/WriteGraph;->length:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->getLabel()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/strategy/WriteGraph;->label:Ljava/lang/String;

    return-void
.end method

.method private writeArray(Ljava/lang/Class;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Ljava/lang/Class;
    .locals 1

    .line 1
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-virtual {p0, p2}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lorg/simpleframework/xml/strategy/WriteGraph;->length:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Lorg/simpleframework/xml/stream/NodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method private writeReference(Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Ljava/util/IdentityHashMap;->size()I

    move-result v1

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lorg/simpleframework/xml/strategy/WriteGraph;->refer:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lorg/simpleframework/xml/stream/NodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lorg/simpleframework/xml/strategy/WriteGraph;->mark:Ljava/lang/String;

    invoke-interface {p2, v1, v0}, Lorg/simpleframework/xml/stream/NodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    .line 6
    invoke-virtual {p0, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public write(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->getType()Ljava/lang/Class;

    move-result-object p1

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-direct {p0, v0, p2, p3}, Lorg/simpleframework/xml/strategy/WriteGraph;->writeArray(Ljava/lang/Class;Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eq v0, p1, :cond_1

    .line 5
    iget-object p1, p0, Lorg/simpleframework/xml/strategy/WriteGraph;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Lorg/simpleframework/xml/stream/NodeMap;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    .line 6
    :cond_1
    invoke-direct {p0, p2, p3}, Lorg/simpleframework/xml/strategy/WriteGraph;->writeReference(Ljava/lang/Object;Lorg/simpleframework/xml/stream/NodeMap;)Z

    move-result p1

    return p1
.end method
