.class Lorg/simpleframework/xml/core/ModelList;
.super Ljava/util/ArrayList;
.source "ModelList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lorg/simpleframework/xml/core/Model;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lorg/simpleframework/xml/core/ModelList;
    .locals 3

    .line 1
    new-instance v0, Lorg/simpleframework/xml/core/ModelList;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/ModelList;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Model;

    .line 3
    invoke-virtual {v0, v2}, Lorg/simpleframework/xml/core/ModelList;->register(Lorg/simpleframework/xml/core/Model;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/simpleframework/xml/core/Model;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lorg/simpleframework/xml/core/Model;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public lookup(I)Lorg/simpleframework/xml/core/Model;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/simpleframework/xml/core/Model;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public register(Lorg/simpleframework/xml/core/Model;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Model;->getIndex()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    if-lt v2, v1, :cond_0

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_1

    .line 4
    invoke-virtual {p0, v3, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public take()Lorg/simpleframework/xml/core/Model;
    .locals 2

    .line 1
    :cond_0
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/ModelList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/core/Model;

    .line 3
    invoke-interface {v0}, Lorg/simpleframework/xml/core/Model;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
