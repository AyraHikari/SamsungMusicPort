.class final Lcom/google/android/gms/internal/measurement/zzxn;
.super Lcom/google/android/gms/internal/measurement/zzxm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzxm<",
        "TFieldDescriptorType;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/measurement/zzxm;-><init>(ILcom/google/android/gms/internal/measurement/zzxn;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzxm;->b()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzxm;->c()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/measurement/zzxm;->b(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzvf;

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzvf;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 8
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzxm;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/measurement/zzvf;

    invoke-interface {v2}, Lcom/google/android/gms/internal/measurement/zzvf;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 13
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 15
    :cond_3
    invoke-super {p0}, Lcom/google/android/gms/internal/measurement/zzxm;->a()V

    return-void
.end method
