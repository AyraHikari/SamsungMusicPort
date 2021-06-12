.class Lorg/simpleframework/xml/core/ModelMap;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lorg/simpleframework/xml/core/ModelList;",
        ">;",
        "Ljava/lang/Iterable<",
        "Lorg/simpleframework/xml/core/ModelList;",
        ">;"
    }
.end annotation


# instance fields
.field private final detail:Lorg/simpleframework/xml/core/Detail;


# direct methods
.method public constructor <init>(Lorg/simpleframework/xml/core/Detail;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/simpleframework/xml/core/ModelMap;->detail:Lorg/simpleframework/xml/core/Detail;

    return-void
.end method


# virtual methods
.method public getModels()Lorg/simpleframework/xml/core/ModelMap;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    new-instance v0, Lorg/simpleframework/xml/core/ModelMap;

    iget-object v1, p0, Lorg/simpleframework/xml/core/ModelMap;->detail:Lorg/simpleframework/xml/core/Detail;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/ModelMap;-><init>(Lorg/simpleframework/xml/core/Detail;)V

    .line 65
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 66
    invoke-virtual {p0, v2}, Lorg/simpleframework/xml/core/ModelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/simpleframework/xml/core/ModelList;

    if-eqz v3, :cond_0

    .line 69
    invoke-virtual {v3}, Lorg/simpleframework/xml/core/ModelList;->build()Lorg/simpleframework/xml/core/ModelList;

    move-result-object v3

    .line 71
    :cond_0
    invoke-virtual {v0, v2}, Lorg/simpleframework/xml/core/ModelMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 74
    invoke-virtual {v0, v2, v3}, Lorg/simpleframework/xml/core/ModelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_1
    new-instance v0, Lorg/simpleframework/xml/core/PathException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/simpleframework/xml/core/ModelMap;->detail:Lorg/simpleframework/xml/core/Detail;

    aput-object v3, v1, v2

    const-string v2, "Path with name \'%s\' is a duplicate in %s "

    invoke-direct {v0, v2, v1}, Lorg/simpleframework/xml/core/PathException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :cond_2
    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/simpleframework/xml/core/ModelList;",
            ">;"
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;I)Lorg/simpleframework/xml/core/Model;
    .locals 0

    .line 91
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ModelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/simpleframework/xml/core/ModelList;

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1, p2}, Lorg/simpleframework/xml/core/ModelList;->lookup(I)Lorg/simpleframework/xml/core/Model;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public register(Ljava/lang/String;Lorg/simpleframework/xml/core/Model;)V
    .locals 1

    .line 109
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/ModelMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/ModelList;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lorg/simpleframework/xml/core/ModelList;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/ModelList;-><init>()V

    .line 113
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/ModelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_0
    invoke-virtual {v0, p2}, Lorg/simpleframework/xml/core/ModelList;->register(Lorg/simpleframework/xml/core/Model;)V

    return-void
.end method
