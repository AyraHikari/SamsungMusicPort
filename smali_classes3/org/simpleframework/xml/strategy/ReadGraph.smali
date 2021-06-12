.class Lorg/simpleframework/xml/strategy/ReadGraph;
.super Ljava/util/HashMap;
.source "SourceFile"


# instance fields
.field private final label:Ljava/lang/String;

.field private final length:Ljava/lang/String;

.field private final loader:Lorg/simpleframework/xml/strategy/Loader;

.field private final mark:Ljava/lang/String;

.field private final refer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/strategy/Contract;Lorg/simpleframework/xml/strategy/Loader;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 75
    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->refer:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->mark:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->length:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lorg/simpleframework/xml/strategy/Contract;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->label:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->loader:Lorg/simpleframework/xml/strategy/Loader;

    return-void
.end method

.method private readArray(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 216
    iget-object p1, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->length:Ljava/lang/String;

    invoke-interface {p3, p1}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 220
    invoke-interface {p1}, Lorg/simpleframework/xml/stream/Node;->b()Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 223
    :goto_0
    new-instance p3, Lorg/simpleframework/xml/strategy/ArrayValue;

    invoke-direct {p3, p2, p1}, Lorg/simpleframework/xml/strategy/ArrayValue;-><init>(Ljava/lang/Class;I)V

    return-object p3
.end method

.method private readInstance(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->mark:Ljava/lang/String;

    invoke-interface {p3, v0}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v0

    if-nez v0, :cond_0

    .line 123
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/strategy/ReadGraph;->readReference(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object p1

    return-object p1

    .line 125
    :cond_0
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/Node;->b()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/strategy/ReadGraph;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/simpleframework/xml/strategy/ReadGraph;->readValue(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;Ljava/lang/String;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object p1

    return-object p1

    .line 128
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->refer:Ljava/lang/String;

    invoke-interface {p3, v0}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/strategy/ReadGraph;->readValue(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object p1

    return-object p1

    .line 151
    :cond_0
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/Node;->b()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/strategy/ReadGraph;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 154
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/strategy/ReadGraph;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    new-instance p1, Lorg/simpleframework/xml/strategy/Reference;

    invoke-direct {p1, p3, p2}, Lorg/simpleframework/xml/strategy/Reference;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    return-object p1

    .line 155
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 173
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->b()Ljava/lang/Class;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/strategy/ReadGraph;->readArray(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object p1

    return-object p1

    .line 178
    :cond_0
    new-instance p1, Lorg/simpleframework/xml/strategy/ObjectValue;

    invoke-direct {p1, p2}, Lorg/simpleframework/xml/strategy/ObjectValue;-><init>(Ljava/lang/Class;)V

    return-object p1
.end method

.method private readValue(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;Ljava/lang/String;)Lorg/simpleframework/xml/strategy/Value;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 195
    invoke-direct {p0, p1, p2, p3}, Lorg/simpleframework/xml/strategy/ReadGraph;->readValue(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object p1

    if-eqz p4, :cond_0

    .line 198
    new-instance p2, Lorg/simpleframework/xml/strategy/Allocate;

    invoke-direct {p2, p1, p0, p4}, Lorg/simpleframework/xml/strategy/Allocate;-><init>(Lorg/simpleframework/xml/strategy/Value;Ljava/util/Map;Ljava/lang/String;)V

    return-object p2

    :cond_0
    return-object p1
.end method


# virtual methods
.method public read(Lorg/simpleframework/xml/strategy/Type;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->label:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/simpleframework/xml/stream/NodeMap;->remove(Ljava/lang/String;)Lorg/simpleframework/xml/stream/Node;

    move-result-object v0

    .line 95
    invoke-interface {p1}, Lorg/simpleframework/xml/strategy/Type;->b()Ljava/lang/Class;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    :cond_0
    if-eqz v0, :cond_1

    .line 101
    invoke-interface {v0}, Lorg/simpleframework/xml/stream/Node;->b()Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lorg/simpleframework/xml/strategy/ReadGraph;->loader:Lorg/simpleframework/xml/strategy/Loader;

    invoke-virtual {v1, v0}, Lorg/simpleframework/xml/strategy/Loader;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 104
    :cond_1
    invoke-direct {p0, p1, v1, p2}, Lorg/simpleframework/xml/strategy/ReadGraph;->readInstance(Lorg/simpleframework/xml/strategy/Type;Ljava/lang/Class;Lorg/simpleframework/xml/stream/NodeMap;)Lorg/simpleframework/xml/strategy/Value;

    move-result-object p1

    return-object p1
.end method
