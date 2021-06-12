.class public final Lcom/google/android/gms/internal/zzid;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:Ljava/lang/Object;

.field private c:Lcom/google/android/gms/internal/zzik;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private e:Lcom/google/android/gms/internal/zzio;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzie;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzie;-><init>(Lcom/google/android/gms/internal/zzid;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzid;->a:Ljava/lang/Runnable;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzid;->b:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzid;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzid;->c()V

    return-void
.end method

.method private final b()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzid;->d:Landroid/content/Context;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzid;->c:Lcom/google/android/gms/internal/zzik;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/zzig;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzig;-><init>(Lcom/google/android/gms/internal/zzid;)V

    new-instance v2, Lcom/google/android/gms/internal/zzih;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzih;-><init>(Lcom/google/android/gms/internal/zzid;)V

    new-instance v3, Lcom/google/android/gms/internal/zzik;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzid;->d:Landroid/content/Context;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->s()Lcom/google/android/gms/internal/zzajf;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzajf;->a()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/google/android/gms/internal/zzik;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/internal/zzg;)V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzid;->c:Lcom/google/android/gms/internal/zzik;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzid;->c:Lcom/google/android/gms/internal/zzik;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzd;->zzakj()V

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

.method static synthetic b(Lcom/google/android/gms/internal/zzid;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzid;->b()V

    return-void
.end method

.method private final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzid;->c:Lcom/google/android/gms/internal/zzik;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzid;->c:Lcom/google/android/gms/internal/zzik;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzd;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzid;->c:Lcom/google/android/gms/internal/zzik;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzd;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzid;->c:Lcom/google/android/gms/internal/zzik;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/zzd;->disconnect()V

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzid;->c:Lcom/google/android/gms/internal/zzik;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzid;->e:Lcom/google/android/gms/internal/zzio;

    invoke-static {}, Landroid/os/Binder;->flushPendingCommands()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/zzil;)Lcom/google/android/gms/internal/zzii;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzid;->e:Lcom/google/android/gms/internal/zzio;

    if-nez v1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzii;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzii;-><init>()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzid;->e:Lcom/google/android/gms/internal/zzio;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/zzio;->zza(Lcom/google/android/gms/internal/zzil;)Lcom/google/android/gms/internal/zzii;

    move-result-object p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p1

    const-string v1, "Unable to call into cache service."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/google/android/gms/internal/zzii;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzii;-><init>()V

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a()V
    .locals 5

    sget-object v0, Lcom/google/android/gms/internal/zznh;->cp:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzid;->b()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    sget-object v1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzid;->a:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    sget-object v1, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzid;->a:Ljava/lang/Runnable;

    sget-object v3, Lcom/google/android/gms/internal/zznh;->cq:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzid;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzid;->d:Landroid/content/Context;

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzid;->d:Landroid/content/Context;

    sget-object p1, Lcom/google/android/gms/internal/zznh;->co:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzid;->b()V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/zznh;->cn:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/zzif;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzif;-><init>(Lcom/google/android/gms/internal/zzid;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->h()Lcom/google/android/gms/internal/zzhg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzhg;->a(Lcom/google/android/gms/internal/zzhj;)V

    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
