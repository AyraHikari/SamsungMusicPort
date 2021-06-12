.class Lorg/simpleframework/xml/core/LabelMap;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Lorg/simpleframework/xml/core/Label;",
        ">;",
        "Ljava/lang/Iterable<",
        "Lorg/simpleframework/xml/core/Label;",
        ">;"
    }
.end annotation


# instance fields
.field private final policy:Lorg/simpleframework/xml/core/Policy;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/core/Policy;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/simpleframework/xml/core/LabelMap;->policy:Lorg/simpleframework/xml/core/Policy;

    return-void
.end method

.method private getArray(Ljava/util/Set;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 162
    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getKeys()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 99
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Label;

    if-eqz v2, :cond_0

    .line 101
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Label;->j()Ljava/lang/String;

    move-result-object v3

    .line 102
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Label;->i()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 108
    :cond_1
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/LabelMap;->getArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(Ljava/lang/String;)Lorg/simpleframework/xml/core/Label;
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/core/LabelMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/simpleframework/xml/core/Label;

    return-object p1
.end method

.method public getLabels()Lorg/simpleframework/xml/core/LabelMap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    new-instance v0, Lorg/simpleframework/xml/core/LabelMap;

    iget-object v1, p0, Lorg/simpleframework/xml/core/LabelMap;->policy:Lorg/simpleframework/xml/core/Policy;

    invoke-direct {v0, v1}, Lorg/simpleframework/xml/core/LabelMap;-><init>(Lorg/simpleframework/xml/core/Policy;)V

    .line 142
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Label;

    if-eqz v2, :cond_0

    .line 144
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Label;->j()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-virtual {v0, v3, v2}, Lorg/simpleframework/xml/core/LabelMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getPaths()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 121
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/LabelMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/simpleframework/xml/core/Label;

    if-eqz v2, :cond_0

    .line 123
    invoke-interface {v2}, Lorg/simpleframework/xml/core/Label;->j()Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_1
    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/LabelMap;->getArray(Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isStrict(Lorg/simpleframework/xml/core/Context;)Z
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/simpleframework/xml/core/LabelMap;->policy:Lorg/simpleframework/xml/core/Policy;

    if-nez v0, :cond_0

    .line 179
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->a()Z

    move-result p1

    return p1

    .line 181
    :cond_0
    invoke-interface {p1}, Lorg/simpleframework/xml/core/Context;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/simpleframework/xml/core/LabelMap;->policy:Lorg/simpleframework/xml/core/Policy;

    invoke-interface {p1}, Lorg/simpleframework/xml/core/Policy;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/simpleframework/xml/core/Label;",
            ">;"
        }
    .end annotation

    .line 71
    invoke-virtual {p0}, Lorg/simpleframework/xml/core/LabelMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
