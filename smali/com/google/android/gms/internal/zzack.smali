.class final Lcom/google/android/gms/internal/zzack;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzt;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzach;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzach;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzack;->a:Lcom/google/android/gms/internal/zzach;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/internal/zzack;->a:Lcom/google/android/gms/internal/zzach;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzach;->a(Lcom/google/android/gms/internal/zzach;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzack;->a:Lcom/google/android/gms/internal/zzach;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzach;->b(Lcom/google/android/gms/internal/zzach;)Lcom/google/android/gms/internal/zzalf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzalf;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p1

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzacn;

    const/4 v1, -0x2

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/zzacn;-><init>(ILjava/util/Map;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/zzack;->a:Lcom/google/android/gms/internal/zzach;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzach;->c(Lcom/google/android/gms/internal/zzach;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzacn;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    monitor-exit p1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/zzack;->a:Lcom/google/android/gms/internal/zzach;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzach;->b(Lcom/google/android/gms/internal/zzach;)Lcom/google/android/gms/internal/zzalf;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzalf;->b(Ljava/lang/Object;)V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
