.class Lorg/simpleframework/xml/stream/OutputStack;
.super Ljava/util/ArrayList;
.source "OutputStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simpleframework/xml/stream/OutputStack$Sequence;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lorg/simpleframework/xml/stream/OutputNode;",
        ">;"
    }
.end annotation


# instance fields
.field private final active:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/simpleframework/xml/stream/OutputStack;->active:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public bottom()Lorg/simpleframework/xml/stream/OutputNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/OutputNode;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/simpleframework/xml/stream/OutputNode;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/simpleframework/xml/stream/OutputStack$Sequence;

    invoke-direct {v0, p0}, Lorg/simpleframework/xml/stream/OutputStack$Sequence;-><init>(Lorg/simpleframework/xml/stream/OutputStack;)V

    return-object v0
.end method

.method public pop()Lorg/simpleframework/xml/stream/OutputNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Lorg/simpleframework/xml/stream/OutputStack;->purge(I)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    return-object v0
.end method

.method public purge(I)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/simpleframework/xml/stream/OutputNode;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputStack;->active:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p1
.end method

.method public push(Lorg/simpleframework/xml/stream/OutputNode;)Lorg/simpleframework/xml/stream/OutputNode;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/simpleframework/xml/stream/OutputStack;->active:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public top()Lorg/simpleframework/xml/stream/OutputNode;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/simpleframework/xml/stream/OutputNode;

    return-object v0
.end method
