.class public final Lcom/google/android/gms/internal/zzhf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:I

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzhe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhf;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhf;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/zzhe;
    .locals 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "Queue empty"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-lt v1, v3, :cond_3

    const/high16 v1, -0x80000000

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhf;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/zzhe;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzhe;->i()I

    move-result v7

    if-le v7, v1, :cond_1

    move v4, v5

    move-object v2, v6

    move v1, v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->c:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    monitor-exit v0

    return-object v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->c:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzhe;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzhe;->e()V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Lcom/google/android/gms/internal/zzhe;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Lcom/google/android/gms/internal/zzhe;)Z
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzhe;

    sget-object v3, Lcom/google/android/gms/internal/zznh;->Q:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzaft;->a()Z

    move-result v3

    if-nez v3, :cond_1

    if-eq p1, v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzhe;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzhe;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    monitor-exit v0

    return v4

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/zznh;->S:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzaft;->b()Z

    move-result v3

    if-nez v3, :cond_0

    if-eq p1, v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzhe;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzhe;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    monitor-exit v0

    return v4

    :cond_2
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Lcom/google/android/gms/internal/zzhe;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x29

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Queue is full, current size = "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->c:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/zzhf;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/zzhf;->b:I

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzhe;->a(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhf;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
