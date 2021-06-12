.class Lcom/google/gson/internal/LinkedTreeMap$EntrySet$1;
.super Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/LinkedTreeMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/LinkedTreeMap<",
        "TK;TV;>.",
        "LinkedTreeMapIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/LinkedTreeMap$EntrySet;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/google/gson/internal/LinkedTreeMap$EntrySet$1;->a:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;

    iget-object p1, p1, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;->a:Lcom/google/gson/internal/LinkedTreeMap;

    invoke-direct {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap$LinkedTreeMapIterator;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 568
    invoke-virtual {p0}, Lcom/google/gson/internal/LinkedTreeMap$EntrySet$1;->b()Lcom/google/gson/internal/LinkedTreeMap$Node;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 566
    invoke-virtual {p0}, Lcom/google/gson/internal/LinkedTreeMap$EntrySet$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
