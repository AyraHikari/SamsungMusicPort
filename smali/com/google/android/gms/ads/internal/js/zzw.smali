.class final Lcom/google/android/gms/ads/internal/js/zzw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzalk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzalk<",
        "Lcom/google/android/gms/ads/internal/js/zzc;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/google/android/gms/ads/internal/js/zzae;

.field private synthetic b:Lcom/google/android/gms/ads/internal/js/zzn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zzn;Lcom/google/android/gms/ads/internal/js/zzae;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzw;->b:Lcom/google/android/gms/ads/internal/js/zzn;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/js/zzw;->a:Lcom/google/android/gms/ads/internal/js/zzae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/js/zzw;->b:Lcom/google/android/gms/ads/internal/js/zzn;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/js/zzn;->c(Lcom/google/android/gms/ads/internal/js/zzn;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzw;->b:Lcom/google/android/gms/ads/internal/js/zzn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/js/zzn;->a(Lcom/google/android/gms/ads/internal/js/zzn;I)I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzw;->b:Lcom/google/android/gms/ads/internal/js/zzn;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zzn;->g(Lcom/google/android/gms/ads/internal/js/zzn;)Lcom/google/android/gms/ads/internal/js/zzae;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzw;->a:Lcom/google/android/gms/ads/internal/js/zzae;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzw;->b:Lcom/google/android/gms/ads/internal/js/zzn;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/js/zzn;->g(Lcom/google/android/gms/ads/internal/js/zzn;)Lcom/google/android/gms/ads/internal/js/zzae;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzw;->b:Lcom/google/android/gms/ads/internal/js/zzn;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/js/zzn;->g(Lcom/google/android/gms/ads/internal/js/zzn;)Lcom/google/android/gms/ads/internal/js/zzae;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/zzae;->c()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/js/zzw;->b:Lcom/google/android/gms/ads/internal/js/zzn;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/js/zzw;->a:Lcom/google/android/gms/ads/internal/js/zzae;

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/js/zzn;->a(Lcom/google/android/gms/ads/internal/js/zzn;Lcom/google/android/gms/ads/internal/js/zzae;)Lcom/google/android/gms/ads/internal/js/zzae;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
