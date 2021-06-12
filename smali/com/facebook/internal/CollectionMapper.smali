.class public Lcom/facebook/internal/CollectionMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/CollectionMapper$Collection;,
        Lcom/facebook/internal/CollectionMapper$ValueMapper;,
        Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;,
        Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;,
        Lcom/facebook/internal/CollectionMapper$OnErrorListener;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static iterate(Lcom/facebook/internal/CollectionMapper$Collection;Lcom/facebook/internal/CollectionMapper$ValueMapper;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/internal/CollectionMapper$Collection<",
            "TT;>;",
            "Lcom/facebook/internal/CollectionMapper$ValueMapper;",
            "Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;",
            ")V"
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/facebook/internal/Mutable;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/internal/Mutable;-><init>(Ljava/lang/Object;)V

    .line 39
    new-instance v1, Lcom/facebook/internal/Mutable;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/facebook/internal/Mutable;-><init>(Ljava/lang/Object;)V

    .line 40
    new-instance v3, Lcom/facebook/internal/CollectionMapper$1;

    invoke-direct {v3, v0, v1, p2}, Lcom/facebook/internal/CollectionMapper$1;-><init>(Lcom/facebook/internal/Mutable;Lcom/facebook/internal/Mutable;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 61
    invoke-interface {p0}, Lcom/facebook/internal/CollectionMapper$Collection;->keyIterator()Ljava/util/Iterator;

    move-result-object p2

    .line 62
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 63
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 68
    invoke-interface {p0, v0}, Lcom/facebook/internal/CollectionMapper$Collection;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 69
    new-instance v5, Lcom/facebook/internal/CollectionMapper$2;

    invoke-direct {v5, p0, v0, v3}, Lcom/facebook/internal/CollectionMapper$2;-><init>(Lcom/facebook/internal/CollectionMapper$Collection;Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;)V

    .line 82
    iget-object v0, v1, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    iget-object v0, v1, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v1, Lcom/facebook/internal/Mutable;->value:Ljava/lang/Object;

    .line 83
    invoke-interface {p1, v4, v5}, Lcom/facebook/internal/CollectionMapper$ValueMapper;->mapValue(Ljava/lang/Object;Lcom/facebook/internal/CollectionMapper$OnMapValueCompleteListener;)V

    goto :goto_1

    .line 85
    :cond_1
    invoke-interface {v3}, Lcom/facebook/internal/CollectionMapper$OnMapperCompleteListener;->onComplete()V

    return-void
.end method
