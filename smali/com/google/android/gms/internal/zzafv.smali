.class final Lcom/google/android/gms/internal/zzafv;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/Object;

.field private volatile b:I

.field private volatile c:J


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzafv;->a:Ljava/lang/Object;

    sget v0, Lcom/google/android/gms/internal/zzafw;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/zzafv;->b:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzafv;->c:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzafu;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzafv;-><init>()V

    return-void
.end method

.method private final a(II)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzafv;->d()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafv;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, p0, Lcom/google/android/gms/internal/zzafv;->b:I

    if-eq v3, p1, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    iput p2, p0, Lcom/google/android/gms/internal/zzafv;->b:I

    iget p1, p0, Lcom/google/android/gms/internal/zzafv;->b:I

    sget p2, Lcom/google/android/gms/internal/zzafw;->c:I

    if-ne p1, p2, :cond_1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzafv;->c:J

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final d()V
    .locals 8

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzafv;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget v3, p0, Lcom/google/android/gms/internal/zzafv;->b:I

    sget v4, Lcom/google/android/gms/internal/zzafw;->c:I

    if-ne v3, v4, :cond_0

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzafv;->c:J

    sget-object v5, Lcom/google/android/gms/internal/zznh;->cM:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x0

    add-long/2addr v3, v5

    cmp-long v0, v3, v0

    if-gtz v0, :cond_0

    sget v0, Lcom/google/android/gms/internal/zzafw;->a:I

    iput v0, p0, Lcom/google/android/gms/internal/zzafv;->b:I

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    sget p1, Lcom/google/android/gms/internal/zzafw;->a:I

    sget v0, Lcom/google/android/gms/internal/zzafw;->b:I

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzafv;->a(II)V

    return-void

    :cond_0
    sget p1, Lcom/google/android/gms/internal/zzafw;->b:I

    sget v0, Lcom/google/android/gms/internal/zzafw;->a:I

    goto :goto_0
.end method

.method public final a()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzafv;->d()V

    iget v0, p0, Lcom/google/android/gms/internal/zzafv;->b:I

    sget v1, Lcom/google/android/gms/internal/zzafw;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzafv;->d()V

    iget v0, p0, Lcom/google/android/gms/internal/zzafv;->b:I

    sget v1, Lcom/google/android/gms/internal/zzafw;->c:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 2

    sget v0, Lcom/google/android/gms/internal/zzafw;->b:I

    sget v1, Lcom/google/android/gms/internal/zzafw;->c:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzafv;->a(II)V

    return-void
.end method
