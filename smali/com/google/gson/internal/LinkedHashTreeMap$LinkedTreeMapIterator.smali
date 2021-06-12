.class abstract Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/internal/LinkedHashTreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "LinkedTreeMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field b:Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field c:Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field d:I

.field final synthetic e:Lcom/google/gson/internal/LinkedHashTreeMap;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/LinkedHashTreeMap;)V
    .locals 0

    .line 765
    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->e:Lcom/google/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    iget-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->e:Lcom/google/gson/internal/LinkedHashTreeMap;

    iget-object p1, p1, Lcom/google/gson/internal/LinkedHashTreeMap;->header:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object p1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->d:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->b:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    const/4 p1, 0x0

    .line 762
    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->c:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 763
    iget-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->e:Lcom/google/gson/internal/LinkedHashTreeMap;

    iget p1, p1, Lcom/google/gson/internal/LinkedHashTreeMap;->modCount:I

    iput p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->d:I

    return-void
.end method


# virtual methods
.method final b()Lcom/google/gson/internal/LinkedHashTreeMap$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/internal/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 773
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->b:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 774
    iget-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->e:Lcom/google/gson/internal/LinkedHashTreeMap;

    iget-object v1, v1, Lcom/google/gson/internal/LinkedHashTreeMap;->header:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    if-eq v0, v1, :cond_1

    .line 777
    iget-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->e:Lcom/google/gson/internal/LinkedHashTreeMap;

    iget v1, v1, Lcom/google/gson/internal/LinkedHashTreeMap;->modCount:I

    iget v2, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->d:I

    if-ne v1, v2, :cond_0

    .line 780
    iget-object v1, v0, Lcom/google/gson/internal/LinkedHashTreeMap$Node;->d:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iput-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->b:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 781
    iput-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->c:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    return-object v0

    .line 778
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 775
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final hasNext()Z
    .locals 2

    .line 769
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->b:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    iget-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->e:Lcom/google/gson/internal/LinkedHashTreeMap;

    iget-object v1, v1, Lcom/google/gson/internal/LinkedHashTreeMap;->header:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final remove()V
    .locals 3

    .line 785
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->c:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->e:Lcom/google/gson/internal/LinkedHashTreeMap;

    iget-object v1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->c:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/internal/LinkedHashTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedHashTreeMap$Node;Z)V

    const/4 v0, 0x0

    .line 789
    iput-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->c:Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    .line 790
    iget-object v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->e:Lcom/google/gson/internal/LinkedHashTreeMap;

    iget v0, v0, Lcom/google/gson/internal/LinkedHashTreeMap;->modCount:I

    iput v0, p0, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;->d:I

    return-void

    .line 786
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
