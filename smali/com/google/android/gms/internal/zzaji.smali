.class public final Lcom/google/android/gms/internal/zzaji;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzaji;->b:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaji;->c:Ljava/lang/Object;

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzaji;->a:J

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaji;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzaji;->b:J

    iget-wide v5, p0, Lcom/google/android/gms/internal/zzaji;->a:J

    const/4 v7, 0x0

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-lez v3, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :cond_0
    iput-wide v1, p0, Lcom/google/android/gms/internal/zzaji;->b:J

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
