.class public Lorg/simpleframework/xml/util/Resolver;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/util/Resolver$Stack;,
        Lorg/simpleframework/xml/util/Resolver$Cache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lorg/simpleframework/xml/util/Match;",
        ">",
        "Ljava/util/AbstractSet<",
        "TM;>;"
    }
.end annotation


# instance fields
.field protected final a:Lorg/simpleframework/xml/util/Resolver$Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Resolver<",
            "TM;>.Cache;"
        }
    .end annotation
.end field

.field protected final b:Lorg/simpleframework/xml/util/Resolver$Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/simpleframework/xml/util/Resolver<",
            "TM;>.Stack;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Lorg/simpleframework/xml/util/Match;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)Z"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver;->b:Lorg/simpleframework/xml/util/Resolver$Stack;

    invoke-virtual {v0, p1}, Lorg/simpleframework/xml/util/Resolver$Stack;->push(Lorg/simpleframework/xml/util/Match;)V

    const/4 p1, 0x1

    return p1
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 62
    check-cast p1, Lorg/simpleframework/xml/util/Match;

    invoke-virtual {p0, p1}, Lorg/simpleframework/xml/util/Resolver;->a(Lorg/simpleframework/xml/util/Match;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver;->a:Lorg/simpleframework/xml/util/Resolver$Cache;

    invoke-virtual {v0}, Lorg/simpleframework/xml/util/Resolver$Cache;->clear()V

    .line 222
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver;->b:Lorg/simpleframework/xml/util/Resolver$Stack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/util/Resolver$Stack;->clear()V

    return-void
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TM;>;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver;->b:Lorg/simpleframework/xml/util/Resolver$Stack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/util/Resolver$Stack;->sequence()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/simpleframework/xml/util/Resolver;->b:Lorg/simpleframework/xml/util/Resolver$Stack;

    invoke-virtual {v0}, Lorg/simpleframework/xml/util/Resolver$Stack;->size()I

    move-result v0

    return v0
.end method
