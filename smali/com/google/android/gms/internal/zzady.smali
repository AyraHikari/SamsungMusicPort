.class public final Lcom/google/android/gms/internal/zzady;
.super Lcom/google/android/gms/internal/zzagb;

# interfaces
.implements Lcom/google/android/gms/internal/zzaee;
.implements Lcom/google/android/gms/internal/zzaeh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/zzafp;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/internal/zzael;

.field private final d:Lcom/google/android/gms/internal/zzaeh;

.field private final e:Ljava/lang/Object;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/android/gms/internal/zzuh;

.field private final i:J

.field private j:I

.field private k:I

.field private l:Lcom/google/android/gms/internal/zzaeb;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzuh;Lcom/google/android/gms/internal/zzafp;Lcom/google/android/gms/internal/zzael;Lcom/google/android/gms/internal/zzaeh;J)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzagb;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzady;->j:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/zzady;->k:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzady;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzady;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzady;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzady;->h:Lcom/google/android/gms/internal/zzuh;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzady;->a:Lcom/google/android/gms/internal/zzafp;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzady;->c:Lcom/google/android/gms/internal/zzael;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzady;->e:Ljava/lang/Object;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzady;->d:Lcom/google/android/gms/internal/zzaeh;

    iput-wide p8, p0, Lcom/google/android/gms/internal/zzady;->i:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzady;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzady;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzady;Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zzva;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzady;->a(Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zzva;)V

    return-void
.end method

.method private final a(Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zzva;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzady;->c:Lcom/google/android/gms/internal/zzael;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzael;->b()Lcom/google/android/gms/internal/zzaeg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzaeg;->zza(Lcom/google/android/gms/internal/zzaeh;)V

    :try_start_0
    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzady;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzady;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzady;->h:Lcom/google/android/gms/internal/zzuh;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzuh;->a:Ljava/lang/String;

    invoke-interface {p2, p1, v0, v1}, Lcom/google/android/gms/internal/zzva;->zza(Lcom/google/android/gms/internal/zzjj;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzady;->g:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/google/android/gms/internal/zzva;->zzc(Lcom/google/android/gms/internal/zzjj;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Fail to load ad from adapter."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzady;->f:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzady;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private final a(J)Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzady;->i:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    sub-long/2addr v0, v2

    const/4 p1, 0x0

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-gtz p2, :cond_0

    const/4 p2, 0x4

    :goto_0
    iput p2, p0, Lcom/google/android/gms/internal/zzady;->k:I

    return p1

    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/zzady;->e:Ljava/lang/Object;

    invoke-virtual {p2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    const/4 p2, 0x5

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/zzady;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzady;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/zzady;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzady;->f:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzady;->c:Lcom/google/android/gms/internal/zzael;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzady;->c:Lcom/google/android/gms/internal/zzael;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzael;->b()Lcom/google/android/gms/internal/zzaeg;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzady;->c:Lcom/google/android/gms/internal/zzael;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzael;->a()Lcom/google/android/gms/internal/zzva;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzady;->c:Lcom/google/android/gms/internal/zzael;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzael;->b()Lcom/google/android/gms/internal/zzaeg;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaeg;->zza(Lcom/google/android/gms/internal/zzaeh;)V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzaeg;->zza(Lcom/google/android/gms/internal/zzaee;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzady;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzafp;->a:Lcom/google/android/gms/internal/zzaat;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaat;->d:Lcom/google/android/gms/internal/zzjj;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzady;->c:Lcom/google/android/gms/internal/zzael;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzael;->a()Lcom/google/android/gms/internal/zzva;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Lcom/google/android/gms/internal/zzva;->isInitialized()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/google/android/gms/internal/zzajr;->a:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/zzadz;

    invoke-direct {v5, p0, v2, v3}, Lcom/google/android/gms/internal/zzadz;-><init>(Lcom/google/android/gms/internal/zzady;Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zzva;)V

    :goto_0
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    sget-object v4, Lcom/google/android/gms/internal/zzajr;->a:Landroid/os/Handler;

    new-instance v5, Lcom/google/android/gms/internal/zzaea;

    invoke-direct {v5, p0, v3, v2, v0}, Lcom/google/android/gms/internal/zzaea;-><init>(Lcom/google/android/gms/internal/zzady;Lcom/google/android/gms/internal/zzva;Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zzaeg;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Fail to check if adapter is initialized."

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzady;->f:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/zzady;->a(Ljava/lang/String;I)V

    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v2

    :goto_2
    iget-object v4, p0, Lcom/google/android/gms/internal/zzady;->e:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget v5, p0, Lcom/google/android/gms/internal/zzady;->j:I

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    new-instance v5, Lcom/google/android/gms/internal/zzaed;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzaed;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v7

    const/4 v9, 0x0

    sub-long/2addr v7, v2

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/zzaed;->a(J)Lcom/google/android/gms/internal/zzaed;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/internal/zzady;->j:I

    if-ne v6, v3, :cond_2

    const/4 v3, 0x6

    goto :goto_3

    :cond_2
    iget v3, p0, Lcom/google/android/gms/internal/zzady;->k:I

    :goto_3
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaed;->a(I)Lcom/google/android/gms/internal/zzaed;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzady;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaed;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaed;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzady;->h:Lcom/google/android/gms/internal/zzuh;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzuh;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaed;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaed;->a()Lcom/google/android/gms/internal/zzaeb;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzady;->l:Lcom/google/android/gms/internal/zzaeb;

    :goto_4
    monitor-exit v4

    goto :goto_5

    :cond_3
    invoke-direct {p0, v2, v3}, Lcom/google/android/gms/internal/zzady;->a(J)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Lcom/google/android/gms/internal/zzaed;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzaed;-><init>()V

    iget v7, p0, Lcom/google/android/gms/internal/zzady;->k:I

    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/zzaed;->a(I)Lcom/google/android/gms/internal/zzaed;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object v7

    invoke-interface {v7}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v7

    const/4 v9, 0x0

    sub-long/2addr v7, v2

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/internal/zzaed;->a(J)Lcom/google/android/gms/internal/zzaed;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzady;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaed;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaed;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzady;->h:Lcom/google/android/gms/internal/zzuh;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzuh;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzaed;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaed;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaed;->a()Lcom/google/android/gms/internal/zzaeb;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/zzady;->l:Lcom/google/android/gms/internal/zzaeb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaeg;->zza(Lcom/google/android/gms/internal/zzaeh;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaeg;->zza(Lcom/google/android/gms/internal/zzaee;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzady;->j:I

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzady;->d:Lcom/google/android/gms/internal/zzaeh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzady;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzaeh;->a(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzady;->d:Lcom/google/android/gms/internal/zzaeh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzady;->f:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/internal/zzady;->k:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzaeh;->a(Ljava/lang/String;I)V

    return-void

    :cond_5
    :try_start_2
    monitor-exit v4

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_6
    :goto_6
    return-void
.end method

.method public final a(I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzady;->f:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzady;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzady;->e:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x1

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/zzady;->j:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzady;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzady;->e:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x2

    :try_start_0
    iput v0, p0, Lcom/google/android/gms/internal/zzady;->j:I

    iput p2, p0, Lcom/google/android/gms/internal/zzady;->k:I

    iget-object p2, p0, Lcom/google/android/gms/internal/zzady;->e:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final e()Lcom/google/android/gms/internal/zzaeb;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzady;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzady;->l:Lcom/google/android/gms/internal/zzaeb;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()Lcom/google/android/gms/internal/zzuh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzady;->h:Lcom/google/android/gms/internal/zzuh;

    return-object v0
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzady;->a:Lcom/google/android/gms/internal/zzafp;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzafp;->a:Lcom/google/android/gms/internal/zzaat;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaat;->d:Lcom/google/android/gms/internal/zzjj;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzady;->c:Lcom/google/android/gms/internal/zzael;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzael;->a()Lcom/google/android/gms/internal/zzva;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/zzady;->a(Lcom/google/android/gms/internal/zzjj;Lcom/google/android/gms/internal/zzva;)V

    return-void
.end method
