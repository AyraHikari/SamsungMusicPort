.class final Lcom/google/android/gms/internal/zzxy;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzafo;

.field private synthetic b:Lcom/google/android/gms/internal/zzxw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzxw;Lcom/google/android/gms/internal/zzafo;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzxy;->b:Lcom/google/android/gms/internal/zzxw;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzxy;->a:Lcom/google/android/gms/internal/zzafo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzxy;->b:Lcom/google/android/gms/internal/zzxw;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzxw;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzxy;->b:Lcom/google/android/gms/internal/zzxw;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzxy;->a:Lcom/google/android/gms/internal/zzafo;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzxw;->a:Lcom/google/android/gms/internal/zzyb;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzyb;->zzb(Lcom/google/android/gms/internal/zzafo;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
