.class Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;
.super Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/internal/LinkedHashTreeMap<",
        "TK;TV;>.",
        "LinkedTreeMapIterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;


# direct methods
.method constructor <init>(Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;)V
    .locals 0

    .line 800
    iput-object p1, p0, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;->a:Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;

    iget-object p1, p1, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet;->a:Lcom/google/gson/internal/LinkedHashTreeMap;

    invoke-direct {p0, p1}, Lcom/google/gson/internal/LinkedHashTreeMap$LinkedTreeMapIterator;-><init>(Lcom/google/gson/internal/LinkedHashTreeMap;)V

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

    .line 802
    invoke-virtual {p0}, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;->b()Lcom/google/gson/internal/LinkedHashTreeMap$Node;

    move-result-object v0

    return-object v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 800
    invoke-virtual {p0}, Lcom/google/gson/internal/LinkedHashTreeMap$EntrySet$1;->a()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method
