.class public Lcom/google/android/gms/measurement/internal/zzbt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/measurement/internal/zzcq;


# static fields
.field private static volatile a:Lcom/google/android/gms/measurement/internal/zzbt;


# instance fields
.field private A:J

.field private volatile B:Ljava/lang/Boolean;

.field private C:I

.field private D:I

.field private final E:J

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Z

.field private final g:Lcom/google/android/gms/measurement/internal/zzk;

.field private final h:Lcom/google/android/gms/measurement/internal/zzn;

.field private final i:Lcom/google/android/gms/measurement/internal/zzba;

.field private final j:Lcom/google/android/gms/measurement/internal/zzap;

.field private final k:Lcom/google/android/gms/measurement/internal/zzbo;

.field private final l:Lcom/google/android/gms/measurement/internal/zzeq;

.field private final m:Lcom/google/android/gms/measurement/AppMeasurement;

.field private final n:Lcom/google/android/gms/measurement/internal/zzfk;

.field private final o:Lcom/google/android/gms/measurement/internal/zzan;

.field private final p:Lcom/google/android/gms/common/util/Clock;

.field private final q:Lcom/google/android/gms/measurement/internal/zzdo;

.field private final r:Lcom/google/android/gms/measurement/internal/zzcs;

.field private final s:Lcom/google/android/gms/measurement/internal/zza;

.field private t:Lcom/google/android/gms/measurement/internal/zzal;

.field private u:Lcom/google/android/gms/measurement/internal/zzdr;

.field private v:Lcom/google/android/gms/measurement/internal/zzx;

.field private w:Lcom/google/android/gms/measurement/internal/zzaj;

.field private x:Lcom/google/android/gms/measurement/internal/zzbg;

.field private y:Z

.field private z:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzcr;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->y:Z

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzcr;->a:Landroid/content/Context;

    .line 5
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzk;

    invoke-direct {v1, v0}, Lcom/google/android/gms/measurement/internal/zzk;-><init>(Landroid/content/Context;)V

    .line 6
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->g:Lcom/google/android/gms/measurement/internal/zzk;

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->g:Lcom/google/android/gms/measurement/internal/zzk;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzaf;->a(Lcom/google/android/gms/measurement/internal/zzk;)V

    .line 8
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzcr;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->b:Landroid/content/Context;

    .line 9
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzcr;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->c:Ljava/lang/String;

    .line 10
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzcr;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->d:Ljava/lang/String;

    .line 11
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzcr;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->e:Ljava/lang/String;

    .line 12
    iget-boolean v0, p1, Lcom/google/android/gms/measurement/internal/zzcr;->e:Z

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->f:Z

    .line 13
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzcr;->f:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->B:Ljava/lang/Boolean;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzsl;->a(Landroid/content/Context;)V

    .line 16
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->d()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->p:Lcom/google/android/gms/common/util/Clock;

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->p:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->E:J

    .line 20
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzn;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 21
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->h:Lcom/google/android/gms/measurement/internal/zzn;

    .line 23
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzba;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzba;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->B()V

    .line 26
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->i:Lcom/google/android/gms/measurement/internal/zzba;

    .line 28
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzap;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzap;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->B()V

    .line 31
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->j:Lcom/google/android/gms/measurement/internal/zzap;

    .line 33
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzfk;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 35
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->B()V

    .line 36
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->n:Lcom/google/android/gms/measurement/internal/zzfk;

    .line 38
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzan;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzan;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 40
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->B()V

    .line 41
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->o:Lcom/google/android/gms/measurement/internal/zzan;

    .line 43
    new-instance v0, Lcom/google/android/gms/measurement/internal/zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zza;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 44
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->s:Lcom/google/android/gms/measurement/internal/zza;

    .line 46
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzdo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzdo;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->F()V

    .line 49
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->q:Lcom/google/android/gms/measurement/internal/zzdo;

    .line 51
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzcs;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->F()V

    .line 54
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->r:Lcom/google/android/gms/measurement/internal/zzcs;

    .line 56
    new-instance v0, Lcom/google/android/gms/measurement/AppMeasurement;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/AppMeasurement;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 57
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->m:Lcom/google/android/gms/measurement/AppMeasurement;

    .line 59
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzeq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzeq;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->F()V

    .line 62
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->l:Lcom/google/android/gms/measurement/internal/zzeq;

    .line 64
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzbo;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->B()V

    .line 67
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->k:Lcom/google/android/gms/measurement/internal/zzbo;

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->g:Lcom/google/android/gms/measurement/internal/zzk;

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Application;

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->h()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Application;

    if-eqz v1, :cond_2

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Application;

    .line 76
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzcs;->a:Lcom/google/android/gms/measurement/internal/zzdm;

    if-nez v2, :cond_0

    .line 77
    new-instance v2, Lcom/google/android/gms/measurement/internal/zzdm;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/measurement/internal/zzdm;-><init>(Lcom/google/android/gms/measurement/internal/zzcs;Lcom/google/android/gms/measurement/internal/zzct;)V

    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzcs;->a:Lcom/google/android/gms/measurement/internal/zzdm;

    .line 78
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzcs;->a:Lcom/google/android/gms/measurement/internal/zzdm;

    .line 79
    invoke-virtual {v1, v2}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 80
    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/zzcs;->a:Lcom/google/android/gms/measurement/internal/zzdm;

    .line 81
    invoke-virtual {v1, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 82
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Registered activity lifecycle callback"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->i()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Application context is not an Application"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 85
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->k:Lcom/google/android/gms/measurement/internal/zzbo;

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzbu;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzbu;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;Lcom/google/android/gms/measurement/internal/zzcr;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzbo;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final I()V
    .locals 2

    .line 317
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->y:Z

    if-eqz v0, :cond_0

    return-void

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppMeasurement is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzak;)Lcom/google/android/gms/measurement/internal/zzbt;
    .locals 11

    if-eqz p1, :cond_1

    .line 299
    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzak;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/measurement/internal/zzak;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 300
    :cond_0
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzak;

    iget-wide v2, p1, Lcom/google/android/gms/measurement/internal/zzak;->a:J

    iget-wide v4, p1, Lcom/google/android/gms/measurement/internal/zzak;->b:J

    iget-boolean v6, p1, Lcom/google/android/gms/measurement/internal/zzak;->c:Z

    iget-object v7, p1, Lcom/google/android/gms/measurement/internal/zzak;->d:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/google/android/gms/measurement/internal/zzak;->g:Landroid/os/Bundle;

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/measurement/internal/zzak;-><init>(JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    move-object p1, v0

    .line 301
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzbt;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    if-nez v0, :cond_3

    .line 304
    const-class v0, Lcom/google/android/gms/measurement/internal/zzbt;

    monitor-enter v0

    .line 305
    :try_start_0
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbt;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    if-nez v1, :cond_2

    .line 306
    new-instance v1, Lcom/google/android/gms/measurement/internal/zzcr;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/zzcr;-><init>(Landroid/content/Context;Lcom/google/android/gms/measurement/internal/zzak;)V

    .line 308
    new-instance p0, Lcom/google/android/gms/measurement/internal/zzbt;

    invoke-direct {p0, v1}, Lcom/google/android/gms/measurement/internal/zzbt;-><init>(Lcom/google/android/gms/measurement/internal/zzcr;)V

    .line 309
    sput-object p0, Lcom/google/android/gms/measurement/internal/zzbt;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    .line 310
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    if-eqz p1, :cond_4

    .line 311
    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzak;->g:Landroid/os/Bundle;

    if-eqz p0, :cond_4

    iget-object p0, p1, Lcom/google/android/gms/measurement/internal/zzak;->g:Landroid/os/Bundle;

    const-string v0, "dataCollectionDefaultEnabled"

    .line 312
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 313
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzbt;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    iget-object p1, p1, Lcom/google/android/gms/measurement/internal/zzak;->g:Landroid/os/Bundle;

    const-string v0, "dataCollectionDefaultEnabled"

    .line 314
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 315
    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbt;->b(Z)V

    .line 316
    :cond_4
    :goto_0
    sget-object p0, Lcom/google/android/gms/measurement/internal/zzbt;->a:Lcom/google/android/gms/measurement/internal/zzbt;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/measurement/internal/zzbt;Lcom/google/android/gms/measurement/internal/zzcr;)V
    .locals 0

    .line 406
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzbt;->a(Lcom/google/android/gms/measurement/internal/zzcr;)V

    return-void
.end method

.method private static a(Lcom/google/android/gms/measurement/internal/zzco;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 331
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final a(Lcom/google/android/gms/measurement/internal/zzcr;)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 89
    invoke-static {}, Lcom/google/android/gms/measurement/internal/zzn;->e()Ljava/lang/String;

    .line 91
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzx;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzx;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 93
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzcp;->B()V

    .line 94
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->v:Lcom/google/android/gms/measurement/internal/zzx;

    .line 96
    new-instance p1, Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-direct {p1, p0}, Lcom/google/android/gms/measurement/internal/zzaj;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 98
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzf;->F()V

    .line 99
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->w:Lcom/google/android/gms/measurement/internal/zzaj;

    .line 101
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzal;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzal;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->F()V

    .line 104
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->t:Lcom/google/android/gms/measurement/internal/zzal;

    .line 106
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzdr;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 108
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->F()V

    .line 109
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->u:Lcom/google/android/gms/measurement/internal/zzdr;

    .line 110
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->n:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->C()V

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->i:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->C()V

    .line 113
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzbg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/measurement/internal/zzbg;-><init>(Lcom/google/android/gms/measurement/internal/zzbt;)V

    .line 114
    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->x:Lcom/google/android/gms/measurement/internal/zzbg;

    .line 115
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->w:Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzf;->G()V

    .line 116
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->v()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "App measurement is starting up, version"

    .line 117
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbt;->h:Lcom/google/android/gms/measurement/internal/zzn;

    .line 118
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzn;->f()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->g:Lcom/google/android/gms/measurement/internal/zzk;

    .line 122
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->v()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "To enable debug logging run: adb shell setprop log.tag.FA VERBOSE"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->g:Lcom/google/android/gms/measurement/internal/zzk;

    .line 126
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzaj;->x()Ljava/lang/String;

    move-result-object p1

    .line 128
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->j()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzfk;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->v()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v0, "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none."

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->v()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 136
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 137
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->w()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v0, "Debug-level message logging enabled"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 138
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->C:I

    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->D:I

    if-eq p1, v0, :cond_3

    .line 139
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object p1

    const-string v0, "Not all components initialized"

    iget v1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->C:I

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/google/android/gms/measurement/internal/zzbt;->D:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    const/4 p1, 0x1

    .line 142
    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->y:Z

    return-void
.end method

.method private static b(Lcom/google/android/gms/measurement/internal/zzcp;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 322
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzcp;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 323
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static b(Lcom/google/android/gms/measurement/internal/zzf;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzf;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 328
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Component not initialized: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Component not created"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A()Lcom/google/android/gms/measurement/internal/zza;
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->s:Lcom/google/android/gms/measurement/internal/zza;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->s:Lcom/google/android/gms/measurement/internal/zza;

    return-object v0

    .line 297
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Component not created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final B()Z
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->B:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->B:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final C()Z
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 337
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 338
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->I()V

    .line 340
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->h:Lcom/google/android/gms/measurement/internal/zzn;

    .line 341
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzn;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->h:Lcom/google/android/gms/measurement/internal/zzn;

    .line 345
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzn;->i()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 347
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 348
    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/GoogleServices;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 350
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->B:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    .line 351
    sget-object v1, Lcom/google/android/gms/measurement/internal/zzaf;->al:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzaf$zza;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 353
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->B:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 354
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->c()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/measurement/internal/zzba;->c(Z)Z

    move-result v0

    return v0
.end method

.method final D()J
    .locals 5

    .line 355
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->c()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->h:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbd;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 356
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 357
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->E:J

    return-wide v0

    .line 358
    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->E:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method final E()V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->g:Lcom/google/android/gms/measurement/internal/zzk;

    return-void
.end method

.method final F()V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->g:Lcom/google/android/gms/measurement/internal/zzk;

    .line 367
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected call on client side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final G()V
    .locals 1

    .line 372
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->D:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->D:I

    return-void
.end method

.method protected final H()Z
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 374
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->I()V

    .line 376
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 377
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->z:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->A:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->z:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->z:Ljava/lang/Boolean;

    .line 378
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 379
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->p:Lcom/google/android/gms/common/util/Clock;

    .line 380
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzbt;->A:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->p:Lcom/google/android/gms/common/util/Clock;

    .line 383
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->A:J

    .line 385
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->g:Lcom/google/android/gms/measurement/internal/zzk;

    .line 389
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->j()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfk;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 390
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->j()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/measurement/internal/zzfk;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->b:Landroid/content/Context;

    .line 392
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->h:Lcom/google/android/gms/measurement/internal/zzn;

    .line 394
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzn;->y()Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->b:Landroid/content/Context;

    .line 396
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbj;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->b:Landroid/content/Context;

    .line 398
    invoke-static {v0, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 399
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->z:Ljava/lang/Boolean;

    .line 400
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->z:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 402
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->j()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->z()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaj;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->z()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzaj;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/measurement/internal/zzfk;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 403
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->z()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 404
    :cond_4
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->z:Ljava/lang/Boolean;

    .line 405
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->z:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected final a()V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 146
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->c()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->c:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbd;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->c()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->c:Lcom/google/android/gms/measurement/internal/zzbd;

    .line 148
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->p:Lcom/google/android/gms/common/util/Clock;

    .line 149
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/measurement/internal/zzbd;->a(J)V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->c()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->h:Lcom/google/android/gms/measurement/internal/zzbd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbd;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 152
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->x()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Persisting first open"

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzbt;->E:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->c()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->h:Lcom/google/android/gms/measurement/internal/zzbd;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->E:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzbd;->a(J)V

    .line 154
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->H()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 155
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->C()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 156
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->j()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    const-string v2, "android.permission.INTERNET"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v2, "App is missing INTERNET permission"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 158
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->j()Lcom/google/android/gms/measurement/internal/zzfk;

    move-result-object v0

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzfk;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 159
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v2, "App is missing ACCESS_NETWORK_STATE permission"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 161
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->g:Lcom/google/android/gms/measurement/internal/zzk;

    .line 164
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->b:Landroid/content/Context;

    .line 165
    invoke-static {v0}, Lcom/google/android/gms/common/wrappers/Wrappers;->a(Landroid/content/Context;)Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/wrappers/PackageManagerWrapper;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 166
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->h:Lcom/google/android/gms/measurement/internal/zzn;

    .line 167
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzn;->y()Z

    move-result v0

    if-nez v0, :cond_5

    .line 169
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->b:Landroid/content/Context;

    .line 170
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbj;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 171
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v2, "AppMeasurementReceiver not registered/enabled"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->b:Landroid/content/Context;

    .line 174
    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_5

    .line 175
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "AppMeasurementService not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 176
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->j_()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v1, "Uploading is not possible. App measurement disabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    return-void

    .line 178
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->g:Lcom/google/android/gms/measurement/internal/zzk;

    .line 181
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->z()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 182
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->z()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 183
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->j()Lcom/google/android/gms/measurement/internal/zzfk;

    .line 184
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->z()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->y()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->c()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzba;->g()Ljava/lang/String;

    move-result-object v2

    .line 186
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->z()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaj;->z()Ljava/lang/String;

    move-result-object v3

    .line 187
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->c()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzba;->h()Ljava/lang/String;

    move-result-object v4

    .line 188
    invoke-static {v0, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzfk;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 189
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->r()Lcom/google/android/gms/measurement/internal/zzap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzap;->v()Lcom/google/android/gms/measurement/internal/zzar;

    move-result-object v0

    const-string v2, "Rechecking which service to use due to a GMP App Id change"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzar;->a(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->c()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzba;->j()V

    .line 192
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->h:Lcom/google/android/gms/measurement/internal/zzn;

    .line 193
    sget-object v2, Lcom/google/android/gms/measurement/internal/zzaf;->ah:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzn;->a(Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 194
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->l()Lcom/google/android/gms/measurement/internal/zzal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzal;->x()V

    .line 195
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->u:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdr;->C()V

    .line 196
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->u:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzdr;->A()V

    .line 197
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->c()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->h:Lcom/google/android/gms/measurement/internal/zzbd;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzbt;->E:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzbd;->a(J)V

    .line 198
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->c()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->j:Lcom/google/android/gms/measurement/internal/zzbf;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzbf;->a(Ljava/lang/String;)V

    .line 199
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->c()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->z()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzba;->c(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->c()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->z()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzba;->d(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->h:Lcom/google/android/gms/measurement/internal/zzn;

    .line 203
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->z()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzn;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 204
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->l:Lcom/google/android/gms/measurement/internal/zzeq;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzbt;->E:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzeq;->a(J)V

    .line 205
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->h()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->c()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/zzba;->j:Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzbf;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/zzcs;->a(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->g:Lcom/google/android/gms/measurement/internal/zzk;

    .line 209
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->z()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 210
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->z()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzaj;->z()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 211
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->C()Z

    move-result v0

    .line 212
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->c()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzba;->w()Z

    move-result v2

    if-nez v2, :cond_c

    .line 213
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbt;->h:Lcom/google/android/gms/measurement/internal/zzn;

    .line 214
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzn;->h()Z

    move-result v2

    if-nez v2, :cond_c

    .line 215
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->c()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v2

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/zzba;->d(Z)V

    .line 217
    :cond_c
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzbt;->h:Lcom/google/android/gms/measurement/internal/zzn;

    .line 218
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->z()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/zzaj;->x()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/measurement/internal/zzaf;->am:Lcom/google/android/gms/measurement/internal/zzaf$zza;

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzn;->d(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzaf$zza;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 219
    invoke-virtual {p0, v1}, Lcom/google/android/gms/measurement/internal/zzbt;->a(Z)V

    .line 221
    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->h:Lcom/google/android/gms/measurement/internal/zzn;

    .line 222
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->z()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzaj;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/zzn;->j(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-eqz v0, :cond_f

    .line 224
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->h()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcs;->y()V

    .line 225
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->x()Lcom/google/android/gms/measurement/internal/zzdr;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzdr;->a(Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_10
    return-void
.end method

.method final a(Lcom/google/android/gms/measurement/internal/zzcp;)V
    .locals 0

    .line 368
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->C:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->C:I

    return-void
.end method

.method final a(Lcom/google/android/gms/measurement/internal/zzf;)V
    .locals 0

    .line 370
    iget p1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->C:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->C:I

    return-void
.end method

.method final a(Z)V
    .locals 12

    .line 228
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->q()Lcom/google/android/gms/measurement/internal/zzbo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzco;->d()V

    .line 229
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->c()Lcom/google/android/gms/measurement/internal/zzba;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/zzba;->n:Lcom/google/android/gms/measurement/internal/zzbf;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzbf;->a()Ljava/lang/String;

    move-result-object v4

    if-nez p1, :cond_1

    if-eqz v4, :cond_1

    const-string p1, "unset"

    .line 232
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->h()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v5

    const-string v6, "app"

    const-string v7, "_ap"

    const/4 v8, 0x0

    .line 234
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->p:Lcom/google/android/gms/common/util/Clock;

    .line 235
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v9

    .line 236
    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/measurement/internal/zzcs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->h()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v1

    const-string v2, "app"

    const-string v3, "_ap"

    .line 238
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->p:Lcom/google/android/gms/common/util/Clock;

    .line 239
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v5

    .line 240
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzcs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_4

    .line 244
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->h:Lcom/google/android/gms/measurement/internal/zzn;

    const-string v0, "google_analytics_default_allow_ad_personalization_signals"

    .line 246
    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/zzn;->b(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 248
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->h()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v0

    const-string v1, "auto"

    const-string v2, "_ap"

    .line 249
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/16 v3, 0x1

    goto :goto_2

    :cond_2
    const-wide/16 v3, 0x0

    :goto_2
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 250
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->p:Lcom/google/android/gms/common/util/Clock;

    .line 251
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v4

    .line 252
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/zzcs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    return-void

    .line 253
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzbt;->h()Lcom/google/android/gms/measurement/internal/zzcs;

    move-result-object v6

    const-string v7, "auto"

    const-string v8, "_ap"

    const/4 v9, 0x0

    .line 254
    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->p:Lcom/google/android/gms/common/util/Clock;

    .line 255
    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->a()J

    move-result-wide v10

    .line 256
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/measurement/internal/zzcs;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;J)V

    :cond_4
    return-void
.end method

.method public final b()Lcom/google/android/gms/measurement/internal/zzn;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->h:Lcom/google/android/gms/measurement/internal/zzn;

    return-object v0
.end method

.method final b(Z)V
    .locals 0
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 333
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzbt;->B:Ljava/lang/Boolean;

    return-void
.end method

.method public final c()Lcom/google/android/gms/measurement/internal/zzba;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->i:Lcom/google/android/gms/measurement/internal/zzba;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->a(Lcom/google/android/gms/measurement/internal/zzco;)V

    .line 261
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->i:Lcom/google/android/gms/measurement/internal/zzba;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/measurement/internal/zzap;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->j:Lcom/google/android/gms/measurement/internal/zzap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->j:Lcom/google/android/gms/measurement/internal/zzap;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzcp;->z()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->j:Lcom/google/android/gms/measurement/internal/zzap;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final e()Lcom/google/android/gms/measurement/internal/zzeq;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->l:Lcom/google/android/gms/measurement/internal/zzeq;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->b(Lcom/google/android/gms/measurement/internal/zzf;)V

    .line 268
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->l:Lcom/google/android/gms/measurement/internal/zzeq;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/measurement/internal/zzbg;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->x:Lcom/google/android/gms/measurement/internal/zzbg;

    return-object v0
.end method

.method final g()Lcom/google/android/gms/measurement/internal/zzbo;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->k:Lcom/google/android/gms/measurement/internal/zzbo;

    return-object v0
.end method

.method public final h()Lcom/google/android/gms/measurement/internal/zzcs;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->r:Lcom/google/android/gms/measurement/internal/zzcs;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->b(Lcom/google/android/gms/measurement/internal/zzf;)V

    .line 272
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->r:Lcom/google/android/gms/measurement/internal/zzcs;

    return-object v0
.end method

.method public final i()Lcom/google/android/gms/measurement/AppMeasurement;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->m:Lcom/google/android/gms/measurement/AppMeasurement;

    return-object v0
.end method

.method public final j()Lcom/google/android/gms/measurement/internal/zzfk;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->n:Lcom/google/android/gms/measurement/internal/zzfk;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->a(Lcom/google/android/gms/measurement/internal/zzco;)V

    .line 275
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->n:Lcom/google/android/gms/measurement/internal/zzfk;

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/measurement/internal/zzan;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->o:Lcom/google/android/gms/measurement/internal/zzan;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->a(Lcom/google/android/gms/measurement/internal/zzco;)V

    .line 277
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->o:Lcom/google/android/gms/measurement/internal/zzan;

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/measurement/internal/zzal;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->t:Lcom/google/android/gms/measurement/internal/zzal;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->b(Lcom/google/android/gms/measurement/internal/zzf;)V

    .line 279
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->t:Lcom/google/android/gms/measurement/internal/zzal;

    return-object v0
.end method

.method public final m()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->p:Lcom/google/android/gms/common/util/Clock;

    return-object v0
.end method

.method public final n()Landroid/content/Context;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Lcom/google/android/gms/measurement/internal/zzbo;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->k:Lcom/google/android/gms/measurement/internal/zzbo;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->b(Lcom/google/android/gms/measurement/internal/zzcp;)V

    .line 266
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->k:Lcom/google/android/gms/measurement/internal/zzbo;

    return-object v0
.end method

.method public final r()Lcom/google/android/gms/measurement/internal/zzap;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->j:Lcom/google/android/gms/measurement/internal/zzap;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->b(Lcom/google/android/gms/measurement/internal/zzcp;)V

    .line 263
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->j:Lcom/google/android/gms/measurement/internal/zzap;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Lcom/google/android/gms/measurement/internal/zzk;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->g:Lcom/google/android/gms/measurement/internal/zzk;

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .line 285
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->f:Z

    return v0
.end method

.method public final w()Lcom/google/android/gms/measurement/internal/zzdo;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->q:Lcom/google/android/gms/measurement/internal/zzdo;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->b(Lcom/google/android/gms/measurement/internal/zzf;)V

    .line 288
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->q:Lcom/google/android/gms/measurement/internal/zzdo;

    return-object v0
.end method

.method public final x()Lcom/google/android/gms/measurement/internal/zzdr;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->u:Lcom/google/android/gms/measurement/internal/zzdr;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->b(Lcom/google/android/gms/measurement/internal/zzf;)V

    .line 290
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->u:Lcom/google/android/gms/measurement/internal/zzdr;

    return-object v0
.end method

.method public final y()Lcom/google/android/gms/measurement/internal/zzx;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->v:Lcom/google/android/gms/measurement/internal/zzx;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->b(Lcom/google/android/gms/measurement/internal/zzcp;)V

    .line 292
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->v:Lcom/google/android/gms/measurement/internal/zzx;

    return-object v0
.end method

.method public final z()Lcom/google/android/gms/measurement/internal/zzaj;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->w:Lcom/google/android/gms/measurement/internal/zzaj;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzbt;->b(Lcom/google/android/gms/measurement/internal/zzf;)V

    .line 294
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzbt;->w:Lcom/google/android/gms/measurement/internal/zzaj;

    return-object v0
.end method
