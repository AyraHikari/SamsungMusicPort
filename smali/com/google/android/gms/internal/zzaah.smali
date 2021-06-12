.class final Lcom/google/android/gms/internal/zzaah;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzalh;

.field private synthetic b:Lcom/google/android/gms/internal/zzzy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzzy;Lcom/google/android/gms/internal/zzalh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaah;->b:Lcom/google/android/gms/internal/zzzy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaah;->a:Lcom/google/android/gms/internal/zzalh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaah;->b:Lcom/google/android/gms/internal/zzzy;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzzy;->a(Lcom/google/android/gms/internal/zzzy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaah;->b:Lcom/google/android/gms/internal/zzzy;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaah;->b:Lcom/google/android/gms/internal/zzzy;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaah;->b:Lcom/google/android/gms/internal/zzzy;

    invoke-static {v3}, Lcom/google/android/gms/internal/zzzy;->b(Lcom/google/android/gms/internal/zzzy;)Lcom/google/android/gms/internal/zzaau;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaau;->j:Lcom/google/android/gms/internal/zzakd;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaah;->a:Lcom/google/android/gms/internal/zzalh;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/zzzy;->a(Lcom/google/android/gms/internal/zzakd;Lcom/google/android/gms/internal/zzalh;)Lcom/google/android/gms/internal/zzaif;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/zzzy;->a:Lcom/google/android/gms/internal/zzaif;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaah;->b:Lcom/google/android/gms/internal/zzzy;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzzy;->a:Lcom/google/android/gms/internal/zzaif;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaah;->b:Lcom/google/android/gms/internal/zzzy;

    const/4 v2, 0x0

    const-string v3, "Could not start the ad request service."

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzzy;->a(Lcom/google/android/gms/internal/zzzy;ILjava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaah;->b:Lcom/google/android/gms/internal/zzzy;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzzy;->c(Lcom/google/android/gms/internal/zzzy;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
