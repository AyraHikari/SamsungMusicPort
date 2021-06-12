.class final Lcom/google/android/gms/internal/zzyh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/util/concurrent/CountDownLatch;

.field private synthetic b:Lcom/google/android/gms/internal/zzyg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyg;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzyh;->b:Lcom/google/android/gms/internal/zzyg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyh;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyh;->b:Lcom/google/android/gms/internal/zzyg;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzyg;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzyh;->b:Lcom/google/android/gms/internal/zzyg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzyh;->b:Lcom/google/android/gms/internal/zzyg;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzyg;->a(Lcom/google/android/gms/internal/zzyg;)Lcom/google/android/gms/internal/zzanh;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzyh;->b:Lcom/google/android/gms/internal/zzyg;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzyg;->g:Lcom/google/android/gms/internal/zzuo;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzyh;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/ads/internal/zzaq;->a(Lcom/google/android/gms/internal/zzanh;Lcom/google/android/gms/internal/zzuo;Ljava/util/concurrent/CountDownLatch;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzyg;->a(Lcom/google/android/gms/internal/zzyg;Z)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
