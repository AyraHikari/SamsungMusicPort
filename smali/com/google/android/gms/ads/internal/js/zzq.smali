.class final Lcom/google/android/gms/ads/internal/js/zzq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/android/gms/ads/internal/js/zzp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zzp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzq;->a:Lcom/google/android/gms/ads/internal/js/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzq;->a:Lcom/google/android/gms/ads/internal/js/zzp;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/js/zzp;->b:Lcom/google/android/gms/ads/internal/js/zzo;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/js/zzo;->c:Lcom/google/android/gms/ads/internal/js/zzn;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zzn;->c(Lcom/google/android/gms/ads/internal/js/zzn;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzq;->a:Lcom/google/android/gms/ads/internal/js/zzp;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/js/zzp;->b:Lcom/google/android/gms/ads/internal/js/zzo;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/js/zzo;->b:Lcom/google/android/gms/ads/internal/js/zzae;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzall;->e()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzq;->a:Lcom/google/android/gms/ads/internal/js/zzp;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/js/zzp;->b:Lcom/google/android/gms/ads/internal/js/zzo;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/js/zzo;->b:Lcom/google/android/gms/ads/internal/js/zzae;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzall;->e()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzq;->a:Lcom/google/android/gms/ads/internal/js/zzp;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/js/zzp;->b:Lcom/google/android/gms/ads/internal/js/zzo;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/js/zzo;->b:Lcom/google/android/gms/ads/internal/js/zzae;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzall;->d()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    new-instance v1, Lcom/google/android/gms/ads/internal/js/zzr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/js/zzr;-><init>(Lcom/google/android/gms/ads/internal/js/zzq;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/zzahn;->a(Ljava/lang/Runnable;)V

    const-string v1, "Could not receive loaded message in a timely manner. Rejecting."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
