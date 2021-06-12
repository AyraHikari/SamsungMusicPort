.class final Lcom/google/android/gms/internal/zzaag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzzy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzzy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaag;->a:Lcom/google/android/gms/internal/zzzy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaag;->a:Lcom/google/android/gms/internal/zzzy;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzy;->a(Lcom/google/android/gms/internal/zzzy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaag;->a:Lcom/google/android/gms/internal/zzzy;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzzy;->a:Lcom/google/android/gms/internal/zzaif;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaag;->a:Lcom/google/android/gms/internal/zzzy;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzagb;->b()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaag;->a:Lcom/google/android/gms/internal/zzzy;

    const/4 v2, 0x2

    const-string v3, "Timed out waiting for ad response."

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzzy;->a(Lcom/google/android/gms/internal/zzzy;ILjava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
