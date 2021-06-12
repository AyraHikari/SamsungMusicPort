.class final Lcom/google/android/gms/internal/measurement/zzxo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final synthetic c:Lcom/google/android/gms/internal/measurement/zzxm;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzxm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzxo;->c:Lcom/google/android/gms/internal/measurement/zzxm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zzxo;->c:Lcom/google/android/gms/internal/measurement/zzxm;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzxm;->b(Lcom/google/android/gms/internal/measurement/zzxm;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/measurement/zzxo;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzxm;Lcom/google/android/gms/internal/measurement/zzxn;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zzxo;-><init>(Lcom/google/android/gms/internal/measurement/zzxm;)V

    return-void
.end method

.method private final a()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxo;->b:Ljava/util/Iterator;

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxo;->c:Lcom/google/android/gms/internal/measurement/zzxm;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzxm;->d(Lcom/google/android/gms/internal/measurement/zzxm;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxo;->b:Ljava/util/Iterator;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxo;->b:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 3
    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzxo;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/measurement/zzxo;->a:I

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zzxo;->c:Lcom/google/android/gms/internal/measurement/zzxm;

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzxm;->b(Lcom/google/android/gms/internal/measurement/zzxm;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzxo;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzxo;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzxo;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzxo;->c:Lcom/google/android/gms/internal/measurement/zzxm;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzxm;->b(Lcom/google/android/gms/internal/measurement/zzxm;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/zzxo;->a:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/measurement/zzxo;->a:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final remove()V
    .locals 1

    .line 4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
