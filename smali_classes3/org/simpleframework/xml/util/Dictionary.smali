.class public Lorg/simpleframework/xml/util/Dictionary;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/util/Dictionary$Table;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/simpleframework/xml/util/Entry;",
        ">",
        "Ljava/util/AbstractSet<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final a:Lorg/simpleframework/xml/util/Dictionary$Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Dictionary$Table<",
            "TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Lorg/simpleframework/xml/util/Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/simpleframework/xml/util/Dictionary;->a:Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-interface {p1}, Lorg/simpleframework/xml/util/Entry;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/simpleframework/xml/util/Dictionary$Table;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 53
    check-cast p1, Lorg/simpleframework/xml/util/Entry;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/Dictionary;->a(Lorg/simpleframework/xml/util/Entry;)Z

    move-result p1

    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lorg/simpleframework/xml/util/Dictionary;->a:Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-virtual {v0}, Lorg/simpleframework/xml/util/Dictionary$Table;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/simpleframework/xml/util/Dictionary;->a:Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-virtual {v0}, Lorg/simpleframework/xml/util/Dictionary$Table;->size()I

    move-result v0

    return v0
.end method
