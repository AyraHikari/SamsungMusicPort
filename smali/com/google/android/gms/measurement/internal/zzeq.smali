.class public final Lcom/google/android/gms/measurement/internal/zzeq;
.super Lcom/google/android/gms/measurement/internal/zzf;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:J

.field private final c:Lcom/google/android/gms/measurement/internal/zzv;

.field private final d:Lcom/google/android/gms/measurement/internal/zzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzbt;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzf;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzer;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzer;-><init>(Lcom/google/android/gms/measurement/internal/zzeq;Lcom/google/android/gms/measurement/internal/zzcq;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeq;->c:Lcom/google/android/gms/measurement/internal/zzv;

    .line 3
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzes;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->r:Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/measurement/internal/zzes;-><init>(Lcom/google/android/gms/measurement/internal/zzeq;Lcom/google/android/gms/measurement/internal/zzcq;)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeq;->d:Lcom/google/android/gms/measurement/internal/zzv;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->b:J

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/zzeq;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->z()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/zzeq;J)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzeq;->b(J)V

    return-void
.end method

.method private final b(J)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->y()V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Activity resumed, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzeq;->b:J

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->g()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzaj;->x()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzn;->p(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzeq;->a(J)V

    return-void

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeq;->c:Lcom/google/android/gms/measurement/internal/zzv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzv;->c()V

    .line 22
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeq;->d:Lcom/google/android/gms/measurement/internal/zzv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzv;->c()V

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide p1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->l:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbd;->a()J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->o:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbd;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzba;->m:Lcom/google/android/gms/measurement/internal/zzbc;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/google/android/gms/measurement/internal/zzbc;->a(Z)V

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzba;->p:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbd;->a(J)V

    .line 27
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzba;->m:Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzbc;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 28
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeq;->c:Lcom/google/android/gms/measurement/internal/zzv;

    .line 29
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzba;->k:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbd;->a()J

    move-result-wide v0

    .line 30
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzba;->p:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbd;->a()J

    move-result-wide v4

    sub-long/2addr v0, v4

    .line 31
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 32
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzv;->a(J)V

    return-void

    .line 33
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeq;->d:Lcom/google/android/gms/measurement/internal/zzv;

    const-wide/32 v0, 0x36ee80

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzba;->p:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbd;->a()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 35
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzv;->a(J)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/measurement/internal/zzeq;J)V
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzeq;->c(J)V

    return-void
.end method

.method private final c(J)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 52
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->y()V

    .line 53
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->c:Lcom/google/android/gms/measurement/internal/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzv;->c()V

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->d:Lcom/google/android/gms/measurement/internal/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzv;->c()V

    .line 55
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Activity paused, time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->p:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/zzba;->p:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzbd;->a()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzeq;->b:J

    sub-long/2addr p1, v3

    add-long/2addr v1, p1

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;->a(J)V

    :cond_0
    return-void
.end method

.method private final d(J)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v0

    .line 63
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v2

    const-string v3, "Session started, time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->g()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaj;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzn;->o(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v6, 0x3e8

    if-eqz v0, :cond_0

    .line 65
    div-long v0, p1, v6

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->f()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v2

    const-string v3, "auto"

    const-string v4, "_sid"

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object v0, v2

    move-object v1, v3

    move-object v2, v4

    move-object v3, v5

    move-wide v4, p1

    .line 68
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzcs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->f()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v0

    const-string v1, "auto"

    const-string v2, "_sid"

    const/4 v3, 0x0

    move-wide v4, p1

    .line 71
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzcs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->m:Lcom/google/android/gms/measurement/internal/zzbc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbc;->a(Z)V

    .line 73
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 74
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->g()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaj;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzn;->o(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    div-long v0, p1, v6

    const-string v2, "_sid"

    .line 76
    invoke-virtual {v5, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->f()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v0

    const-string v1, "auto"

    const-string v2, "_s"

    move-wide v3, p1

    .line 78
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzcs;->a(Ljava/lang/String;Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->o:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzbd;->a(J)V

    return-void
.end method

.method private final y()V
    .locals 2

    .line 6
    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->a:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzdx;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzdx;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->a:Landroid/os/Handler;

    .line 9
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final z()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 109
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    const/4 v0, 0x0

    .line 110
    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/zzeq;->a(Z)Z

    .line 111
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->e()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zza;->a(J)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()V
    .locals 0

    .line 114
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->a()V

    return-void
.end method

.method final a(J)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 37
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzeq;->y()V

    .line 39
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->c:Lcom/google/android/gms/measurement/internal/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzv;->c()V

    .line 40
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->d:Lcom/google/android/gms/measurement/internal/zzv;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzv;->c()V

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->l:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbd;->a()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 42
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzba;->o:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbd;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->m:Lcom/google/android/gms/measurement/internal/zzbc;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbc;->a(Z)V

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->p:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzbd;->a(J)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->m:Lcom/google/android/gms/measurement/internal/zzbc;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbc;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/zzeq;->d(J)V

    return-void

    .line 47
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeq;->d:Lcom/google/android/gms/measurement/internal/zzv;

    const-wide/32 v0, 0x36ee80

    .line 48
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/gms/measurement/internal/zzba;->p:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/zzbd;->a()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 49
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzv;->a(J)V

    return-void
.end method

.method public final a(Z)Z
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 84
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->E()V

    .line 86
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v0

    .line 87
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzba;->o:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzbd;->a(J)V

    .line 88
    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzeq;->b:J

    sub-long v2, v0, v2

    if-nez p1, :cond_0

    const-wide/16 v4, 0x3e8

    cmp-long p1, v2, v4

    if-gez p1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v0, "Screen exposed for less than 1000 ms. Event not sent. time"

    .line 92
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzba;->p:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbd;->a(J)V

    .line 95
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v4, "Recording user engagement, ms"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_et"

    .line 97
    invoke-virtual {p1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 99
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->i()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzdo;->x()Lcom/google/android/gms/measurement/internal/zzdn;

    move-result-object v2

    const/4 v3, 0x1

    .line 100
    invoke-static {v2, p1, v3}, Lcom/google/android/gms/measurement/internal/zzdo;->a(Lcom/google/android/gms/measurement/internal/zzdn;Landroid/os/Bundle;Z)V

    .line 101
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zze;->f()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v2

    const-string v4, "auto"

    const-string v5, "_e"

    .line 102
    invoke-virtual {v2, v4, v5, p1}, Lcom/google/android/gms/measurement/internal/zzcs;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 103
    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzeq;->b:J

    .line 104
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeq;->d:Lcom/google/android/gms/measurement/internal/zzv;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzv;->c()V

    .line 105
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzeq;->d:Lcom/google/android/gms/measurement/internal/zzv;

    const-wide/16 v0, 0x0

    const-wide/32 v4, 0x36ee80

    .line 106
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzba;->p:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbd;->a()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 107
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzv;->a(J)V

    return v3
.end method

.method public final bridge synthetic b()V
    .locals 0

    .line 115
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->b()V

    return-void
.end method

.method public final bridge synthetic c()V
    .locals 0

    .line 116
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->c()V

    return-void
.end method

.method public final bridge synthetic d()V
    .locals 0

    .line 117
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->d()V

    return-void
.end method

.method public final bridge synthetic e()Lcom/google/android/gms/measurement/internal/zza;
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->e()Lcom/google/android/gms/measurement/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic f()Lcom/google/android/gms/measurement/internal/zzcs;
    .locals 1

    .line 119
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->f()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic g()Lcom/google/android/gms/measurement/internal/zzaj;
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->g()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic h()Lcom/google/android/gms/measurement/internal/zzdr;
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->h()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic i()Lcom/google/android/gms/measurement/internal/zzdo;
    .locals 1

    .line 122
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->i()Lcom/google/android/gms/measurement/internal/zzdo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic j()Lcom/google/android/gms/measurement/internal/zzal;
    .locals 1

    .line 123
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->j()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic k()Lcom/google/android/gms/measurement/internal/zzeq;
    .locals 1

    .line 124
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->k()Lcom/google/android/gms/measurement/internal/zzeq;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()Lcom/google/android/gms/measurement/internal/zzx;
    .locals 1

    .line 125
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->l()Lcom/google/android/gms/measurement/internal/zzx;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic m()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 126
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic n()Landroid/content/Context;
    .locals 1

    .line 127
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->n()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic o()Lcom/google/android/gms/measurement/internal/zzan;
    .locals 1

    .line 128
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->o()Lcom/google/android/gms/measurement/internal/zzan;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/zzfk;
    .locals 1

    .line 129
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->p()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/measurement/internal/zzbo;
    .locals 1

    .line 130
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Lcom/google/android/gms/measurement/internal/zzap;
    .locals 1

    .line 131
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/zzba;
    .locals 1

    .line 132
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->s()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/zzn;
    .locals 1

    .line 133
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->t()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/zzk;
    .locals 1

    .line 134
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzf;->u()Lcom/google/android/gms/measurement/internal/zzk;

    move-result-object v0

    return-object v0
.end method

.method protected final v()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final x()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 81
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzco;->m()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/zzeq;->d(J)V

    return-void
.end method
