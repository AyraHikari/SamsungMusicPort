.class public Lorg/simpleframework/xml/util/Dictionary;
.super Ljava/util/AbstractSet;
.source "Dictionary.java"


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
.field public final map:Lorg/simpleframework/xml/util/Dictionary$Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Dictionary$Table<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 2
    new-instance v0, Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-direct {v0}, Lorg/simpleframework/xml/util/Dictionary$Table;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    return-void
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lorg/simpleframework/xml/util/Entry;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/Dictionary;->add(Lorg/simpleframework/xml/util/Entry;)Z

    move-result p1

    return p1
.end method

.method public add(Lorg/simpleframework/xml/util/Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-interface {p1}, Lorg/simpleframework/xml/util/Entry;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public get(Ljava/lang/String;)Lorg/simpleframework/xml/util/Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/simpleframework/xml/util/Entry;

    return-object p1
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

    iget-object v0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lorg/simpleframework/xml/util/Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/simpleframework/xml/util/Entry;

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/simpleframework/xml/util/Dictionary;->map:Lorg/simpleframework/xml/util/Dictionary$Table;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
