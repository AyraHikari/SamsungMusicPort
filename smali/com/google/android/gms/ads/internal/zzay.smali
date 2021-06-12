.class final Lcom/google/android/gms/ads/internal/zzay;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/ads/internal/zzax;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzax;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzay;->a:Lcom/google/android/gms/ads/internal/zzax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzay;->a:Lcom/google/android/gms/ads/internal/zzax;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzax;->b:Lcom/google/android/gms/ads/internal/zzaw;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzaw;->zza(Lcom/google/android/gms/ads/internal/zzaw;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzay;->a:Lcom/google/android/gms/ads/internal/zzax;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzax;->a:Ljava/lang/Runnable;

    const-string v2, "Adapters must be initialized on the main thread."

    invoke-static {v2}, Lcom/google/android/gms/common/internal/zzbq;->zzge(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaft;->r()Lcom/google/android/gms/internal/zzafs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzafs;->e()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not initialize rewarded ads."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Lcom/google/android/gms/internal/zzade;->zzoa()Lcom/google/android/gms/internal/zzade;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzn;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzui;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzui;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/zzuh;

    iget-object v6, v5, Lcom/google/android/gms/internal/zzuh;->j:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzuh;->c:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v6, :cond_4

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :try_start_1
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/zzade;->zzbq(Ljava/lang/String;)Lcom/google/android/gms/internal/zzael;

    move-result-object v5

    if-nez v5, :cond_8

    goto :goto_2

    :cond_8
    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzael;->a()Lcom/google/android/gms/internal/zzva;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzva;->isInitialized()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-interface {v6}, Lcom/google/android/gms/internal/zzva;->zzmi()Z

    move-result v7

    if-nez v7, :cond_9

    goto :goto_2

    :cond_9
    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzael;->b()Lcom/google/android/gms/internal/zzaeg;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v6, v0, v5, v3}, Lcom/google/android/gms/internal/zzva;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/zzaem;Ljava/util/List;)V

    const-string v3, "Initialized rewarded video mediation adapter "

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_a
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    :goto_3
    invoke-static {v3}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x38

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Failed to initialize rewarded video mediation adapter \""

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_b
    :goto_4
    return-void
.end method
