.class abstract Lcom/google/android/gms/measurement/internal/zzv;
.super Ljava/lang/Object;


# static fields
.field private static volatile b:Landroid/os/Handler;


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/zzcq;

.field private final c:Ljava/lang/Runnable;

.field private volatile d:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzcq;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzv;->a:Lcom/google/android/gms/measurement/internal/zzcq;

    .line 4
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzw;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/measurement/internal/zzw;-><init>(Lcom/google/android/gms/measurement/internal/zzv;Lcom/google/android/gms/measurement/internal/zzcq;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzv;->c:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/zzv;J)J
    .locals 0

    const-wide/16 p1, 0x0

    .line 27
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzv;->d:J

    return-wide p1
.end method

.method private final d()Landroid/os/Handler;
    .locals 3

    .line 20
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzv;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 21
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzv;->b:Landroid/os/Handler;

    return-object v0

    .line 22
    :cond_0
    const-class v0, Lcom/google/android/gms/measurement/internal/zzv;

    monitor-enter v0

    .line 23
    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzv;->b:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 24
    new-instance v1, Lcom/google/android/gms/internal/measurement/zzdx;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzv;->a:Lcom/google/android/gms/measurement/internal/zzcq;

    invoke-interface {v2}, Lcom/google/android/gms/measurement/internal/zzcq;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/measurement/zzdx;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/google/android/gms/measurement/internal/zzv;->b:Landroid/os/Handler;

    .line 25
    :cond_1
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzv;->b:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final a(J)V
    .locals 2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzv;->c()V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzv;->a:Lcom/google/android/gms/measurement/internal/zzcq;

    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzcq;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzv;->d:J

    .line 9
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzv;->d()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzv;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzv;->a:Lcom/google/android/gms/measurement/internal/zzcq;

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/measurement/internal/zzcq;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Failed to schedule delayed post. time"

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final b()Z
    .locals 4

    .line 16
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzv;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final c()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzv;->d:J

    .line 18
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzv;->d()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzv;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
