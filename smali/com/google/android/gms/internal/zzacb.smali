.class public final Lcom/google/android/gms/internal/zzacb;
.super Lcom/google/android/gms/internal/zzabc;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field private static final sLock:Ljava/lang/Object;

.field private static zzcrk:Lcom/google/android/gms/internal/zzacb;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzcrl:Lcom/google/android/gms/internal/zzaca;

.field private final zzcrm:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzacb;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaca;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzabc;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzacb;->zzcrm:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzacb;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzacb;->zzcrl:Lcom/google/android/gms/internal/zzaca;

    return-void
.end method

.method private static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaca;Lcom/google/android/gms/internal/zzaat;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/zzaax;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    const-string v3, "Starting ad request from service using: google.afma.request.getAdDictionary"

    invoke-static {v3}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    new-instance v8, Lcom/google/android/gms/internal/zznu;

    sget-object v3, Lcom/google/android/gms/internal/zznh;->H:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "load_ad"

    iget-object v5, v0, Lcom/google/android/gms/internal/zzaat;->e:Lcom/google/android/gms/internal/zzjn;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzjn;->b:Ljava/lang/String;

    invoke-direct {v8, v3, v4, v5}, Lcom/google/android/gms/internal/zznu;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    iget v3, v0, Lcom/google/android/gms/internal/zzaat;->b:I

    const/16 v4, 0xa

    if-le v3, v4, :cond_0

    iget-wide v3, v0, Lcom/google/android/gms/internal/zzaat;->B:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-wide v3, v0, Lcom/google/android/gms/internal/zzaat;->B:J

    invoke-virtual {v8, v3, v4}, Lcom/google/android/gms/internal/zznu;->a(J)Lcom/google/android/gms/internal/zzns;

    move-result-object v3

    const-string v4, "cts"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Lcom/google/android/gms/internal/zznu;->a(Lcom/google/android/gms/internal/zzns;[Ljava/lang/String;)Z

    :cond_0
    invoke-virtual {v8}, Lcom/google/android/gms/internal/zznu;->a()Lcom/google/android/gms/internal/zzns;

    move-result-object v9

    iget-object v3, v7, Lcom/google/android/gms/internal/zzaca;->h:Lcom/google/android/gms/internal/zzxk;

    invoke-interface {v3, v1}, Lcom/google/android/gms/internal/zzxk;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/zznh;->ck:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v4, v5, v6, v2}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v3

    iget-object v4, v7, Lcom/google/android/gms/internal/zzaca;->g:Lcom/google/android/gms/internal/zzacx;

    invoke-interface {v4, v1}, Lcom/google/android/gms/internal/zzacx;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v4

    sget-object v5, Lcom/google/android/gms/internal/zznh;->bh:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v4, v5, v6, v10, v2}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v4

    iget-object v5, v7, Lcom/google/android/gms/internal/zzaca;->c:Lcom/google/android/gms/internal/zzafj;

    iget-object v6, v0, Lcom/google/android/gms/internal/zzaat;->h:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/zzafj;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v5

    iget-object v6, v7, Lcom/google/android/gms/internal/zzaca;->i:Lcom/google/android/gms/internal/zzafn;

    iget-object v10, v0, Lcom/google/android/gms/internal/zzaat;->i:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/internal/zzaat;->h:Landroid/content/pm/PackageInfo;

    invoke-interface {v6, v10, v11}, Lcom/google/android/gms/internal/zzafn;->a(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->o()Lcom/google/android/gms/internal/zzacq;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/google/android/gms/internal/zzacq;->a(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11}, Lcom/google/android/gms/internal/zzakl;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaku;

    move-result-object v12

    iget-object v13, v0, Lcom/google/android/gms/internal/zzaat;->d:Lcom/google/android/gms/internal/zzjj;

    iget-object v13, v13, Lcom/google/android/gms/internal/zzjj;->d:Landroid/os/Bundle;

    if-eqz v13, :cond_1

    const-string v15, "_ad"

    invoke-virtual {v13, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    goto :goto_0

    :cond_1
    const/4 v13, 0x0

    :goto_0
    iget-boolean v15, v0, Lcom/google/android/gms/internal/zzaat;->H:Z

    if-eqz v15, :cond_2

    if-nez v13, :cond_2

    iget-object v12, v7, Lcom/google/android/gms/internal/zzaca;->f:Lcom/google/android/gms/internal/zzue;

    iget-object v13, v0, Lcom/google/android/gms/internal/zzaat;->g:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v12, v13}, Lcom/google/android/gms/internal/zzue;->a(Landroid/content/pm/ApplicationInfo;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v12

    :cond_2
    sget-object v13, Lcom/google/android/gms/internal/zznh;->cb:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v15

    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v12, v14, v15, v13, v2}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v12

    invoke-static {v11}, Lcom/google/android/gms/internal/zzakl;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaku;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/internal/zznh;->ax:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v13, v7, Lcom/google/android/gms/internal/zzaca;->i:Lcom/google/android/gms/internal/zzafn;

    invoke-interface {v13, v1}, Lcom/google/android/gms/internal/zzafn;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v13

    sget-object v14, Lcom/google/android/gms/internal/zznh;->ay:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v13, v14, v15, v11, v2}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v13

    :cond_3
    iget v11, v0, Lcom/google/android/gms/internal/zzaat;->b:I

    const/4 v14, 0x4

    if-lt v11, v14, :cond_4

    iget-object v11, v0, Lcom/google/android/gms/internal/zzaat;->p:Landroid/os/Bundle;

    if-eqz v11, :cond_4

    iget-object v11, v0, Lcom/google/android/gms/internal/zzaat;->p:Landroid/os/Bundle;

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_1
    sget-object v14, Lcom/google/android/gms/internal/zznh;->X:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v1, v14, v15}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    const-string v14, "connectivity"

    invoke-virtual {v1, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/ConnectivityManager;

    invoke-virtual {v14}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v14

    if-nez v14, :cond_5

    const-string v14, "Device is offline."

    invoke-static {v14}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    :cond_5
    iget v14, v0, Lcom/google/android/gms/internal/zzaat;->b:I

    const/4 v15, 0x7

    if-lt v14, v15, :cond_6

    iget-object v14, v0, Lcom/google/android/gms/internal/zzaat;->w:Ljava/lang/String;

    goto :goto_2

    :cond_6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_2
    new-instance v15, Lcom/google/android/gms/internal/zzach;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaat;->g:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v15, v1, v14, v2}, Lcom/google/android/gms/internal/zzach;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaat;->d:Lcom/google/android/gms/internal/zzjj;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzjj;->d:Landroid/os/Bundle;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaat;->d:Lcom/google/android/gms/internal/zzjj;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzjj;->d:Landroid/os/Bundle;

    const-string v15, "_ad"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzacg;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzaat;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaax;

    move-result-object v0

    return-object v0

    :cond_7
    iget-object v2, v7, Lcom/google/android/gms/internal/zzaca;->d:Lcom/google/android/gms/internal/zzmw;

    iget-object v15, v0, Lcom/google/android/gms/internal/zzaat;->x:Ljava/util/List;

    invoke-interface {v2, v15}, Lcom/google/android/gms/internal/zzmw;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    sget-object v15, Lcom/google/android/gms/internal/zznh;->ck:Lcom/google/android/gms/internal/zzmx;

    move-object/from16 v16, v8

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v8

    invoke-virtual {v8, v15}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    move-object/from16 v17, v9

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v15, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v18, v14

    const/4 v14, 0x0

    invoke-static {v3, v14, v8, v9, v15}, Lcom/google/android/gms/internal/zzakl;->a(Ljava/util/concurrent/Future;Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-static {v4, v14}, Lcom/google/android/gms/internal/zzakl;->a(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/zzacy;

    invoke-static {v12, v14}, Lcom/google/android/gms/internal/zzakl;->a(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/Location;

    invoke-static {v13, v14}, Lcom/google/android/gms/internal/zzakl;->a(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    invoke-static {v6, v14}, Lcom/google/android/gms/internal/zzakl;->a(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v14}, Lcom/google/android/gms/internal/zzakl;->a(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v10, v14}, Lcom/google/android/gms/internal/zzakl;->a(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/zzaco;

    if-nez v10, :cond_8

    const-string v0, "Error fetching device info. This is not recoverable."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaax;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    return-object v0

    :cond_8
    new-instance v12, Lcom/google/android/gms/internal/zzabz;

    invoke-direct {v12}, Lcom/google/android/gms/internal/zzabz;-><init>()V

    iput-object v0, v12, Lcom/google/android/gms/internal/zzabz;->i:Lcom/google/android/gms/internal/zzaat;

    iput-object v10, v12, Lcom/google/android/gms/internal/zzabz;->j:Lcom/google/android/gms/internal/zzaco;

    iput-object v4, v12, Lcom/google/android/gms/internal/zzabz;->e:Lcom/google/android/gms/internal/zzacy;

    iput-object v8, v12, Lcom/google/android/gms/internal/zzabz;->d:Landroid/location/Location;

    iput-object v3, v12, Lcom/google/android/gms/internal/zzabz;->b:Landroid/os/Bundle;

    iput-object v6, v12, Lcom/google/android/gms/internal/zzabz;->g:Ljava/lang/String;

    iput-object v9, v12, Lcom/google/android/gms/internal/zzabz;->h:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v2, :cond_9

    iget-object v3, v12, Lcom/google/android/gms/internal/zzabz;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_9
    iput-object v2, v12, Lcom/google/android/gms/internal/zzabz;->c:Ljava/util/List;

    iput-object v11, v12, Lcom/google/android/gms/internal/zzabz;->a:Landroid/os/Bundle;

    iput-object v5, v12, Lcom/google/android/gms/internal/zzabz;->f:Ljava/lang/String;

    iget-object v2, v7, Lcom/google/android/gms/internal/zzaca;->b:Lcom/google/android/gms/internal/zzin;

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/zzin;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v12, Lcom/google/android/gms/internal/zzabz;->k:Lorg/json/JSONObject;

    iget-boolean v2, v7, Lcom/google/android/gms/internal/zzaca;->j:Z

    iput-boolean v2, v12, Lcom/google/android/gms/internal/zzabz;->l:Z

    invoke-static {v1, v12}, Lcom/google/android/gms/internal/zzacg;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzabz;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/zzaax;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    return-object v0

    :cond_a
    iget v3, v0, Lcom/google/android/gms/internal/zzaat;->b:I

    const/4 v4, 0x7

    if-ge v3, v4, :cond_b

    :try_start_0
    const-string v3, "request_id"

    move-object/from16 v14, v18

    invoke-virtual {v2, v3, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    :cond_b
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    const-string v3, "arc"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    invoke-virtual {v8, v9, v3}, Lcom/google/android/gms/internal/zznu;->a(Lcom/google/android/gms/internal/zzns;[Ljava/lang/String;)Z

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zznu;->a()Lcom/google/android/gms/internal/zzns;

    iget-object v3, v7, Lcom/google/android/gms/internal/zzaca;->k:Lcom/google/android/gms/internal/zzacf;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzacf;->a()Lcom/google/android/gms/internal/zztp;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/zztp;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/zzacc;->a:Lcom/google/android/gms/internal/zzakg;

    move-object/from16 v4, p3

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzakg;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v2

    const-wide/16 v10, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v10, v11, v3, v4}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/zzakv;

    move-result-object v2

    iget-object v3, v7, Lcom/google/android/gms/internal/zzaca;->e:Lcom/google/android/gms/internal/zzacv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzacv;->a()Lcom/google/android/gms/internal/zzakv;

    move-result-object v3

    if-eqz v3, :cond_c

    const-string v4, "AdRequestServiceImpl.loadAd.flags"

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzakj;->a(Lcom/google/android/gms/internal/zzakv;Ljava/lang/String;)V

    :cond_c
    const/4 v14, 0x0

    invoke-static {v2, v14}, Lcom/google/android/gms/internal/zzakl;->a(Ljava/util/concurrent/Future;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/google/android/gms/internal/zzacn;

    if-nez v6, :cond_d

    new-instance v0, Lcom/google/android/gms/internal/zzaax;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    return-object v0

    :cond_d
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzacn;->a()I

    move-result v2

    const/4 v3, -0x2

    if-eq v2, v3, :cond_e

    new-instance v0, Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzacn;->a()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    return-object v0

    :cond_e
    invoke-virtual {v8}, Lcom/google/android/gms/internal/zznu;->d()Lcom/google/android/gms/internal/zzns;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzacn;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzacn;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzacg;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzaat;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaax;

    move-result-object v11

    move-object v14, v11

    :cond_f
    if-nez v14, :cond_10

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzacn;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    iget-object v2, v0, Lcom/google/android/gms/internal/zzaat;->l:Lcom/google/android/gms/internal/zzakd;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzakd;->b:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzacn;->e()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    move-object/from16 v7, p1

    invoke-static/range {v0 .. v7}, Lcom/google/android/gms/internal/zzacb;->zza(Lcom/google/android/gms/internal/zzaat;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzacn;Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/internal/zzaca;)Lcom/google/android/gms/internal/zzaax;

    move-result-object v14

    :cond_10
    if-nez v14, :cond_11

    new-instance v14, Lcom/google/android/gms/internal/zzaax;

    const/4 v0, 0x0

    invoke-direct {v14, v0}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    :cond_11
    const-string v0, "tts"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v9, v0}, Lcom/google/android/gms/internal/zznu;->a(Lcom/google/android/gms/internal/zzns;[Ljava/lang/String;)Z

    invoke-virtual {v8}, Lcom/google/android/gms/internal/zznu;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/google/android/gms/internal/zzaax;->x:Ljava/lang/String;

    return-object v14
.end method

.method public static zza(Lcom/google/android/gms/internal/zzaat;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzacn;Lcom/google/android/gms/internal/zznu;Lcom/google/android/gms/internal/zzaca;)Lcom/google/android/gms/internal/zzaax;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    if-eqz v1, :cond_0

    invoke-virtual/range {p6 .. p6}, Lcom/google/android/gms/internal/zznu;->a()Lcom/google/android/gms/internal/zzns;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    :try_start_0
    new-instance v4, Lcom/google/android/gms/internal/zzacl;

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzacn;->c()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v0, v5}, Lcom/google/android/gms/internal/zzacl;-><init>(Lcom/google/android/gms/internal/zzaat;Ljava/lang/String;)V

    const-string v5, "AdRequestServiceImpl: Sending request: "

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    :goto_1
    invoke-static {v5}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    new-instance v5, Ljava/net/URL;

    move-object/from16 v6, p3

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    move-result-object v11

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-virtual {v11, v12, v13, v8, v10}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzacn;->g()Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "x-afma-drt-cookie"

    move-object/from16 v14, p4

    invoke-virtual {v10, v11, v14}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    move-object/from16 v14, p4

    :goto_3
    iget-object v11, v0, Lcom/google/android/gms/internal/zzaat;->I:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_3

    const-string v15, "Sending webview cookie in ad request header."

    invoke-static {v15}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    const-string v15, "Cookie"

    invoke-virtual {v10, v15, v11}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v11, 0x1

    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzacn;->d()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    invoke-virtual {v10, v11}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzacn;->d()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v8, v11

    invoke-virtual {v10, v8}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v8, v11}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {v8}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object/from16 v17, v8

    goto :goto_4

    :catchall_1
    move-exception v0

    const/16 v17, 0x0

    :goto_4
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_4
    const/4 v11, 0x0

    :goto_5
    new-instance v2, Lcom/google/android/gms/internal/zzajv;

    iget-object v8, v0, Lcom/google/android/gms/internal/zzaat;->w:Ljava/lang/String;

    invoke-direct {v2, v8}, Lcom/google/android/gms/internal/zzajv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v11}, Lcom/google/android/gms/internal/zzajv;->a(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v8

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v2, v10, v8}, Lcom/google/android/gms/internal/zzajv;->a(Ljava/net/HttpURLConnection;I)V

    const/16 v0, 0xc8

    const/16 v12, 0x12c

    if-lt v8, v0, :cond_6

    if-ge v8, v12, :cond_6

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    invoke-static {v5}, Lcom/google/android/gms/internal/zzahn;->a(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-static {v5}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/zzajv;->a(Ljava/lang/String;)V

    invoke-static {v0, v11, v9, v8}, Lcom/google/android/gms/internal/zzacb;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    invoke-virtual {v4, v0, v11, v9}, Lcom/google/android/gms/internal/zzacl;->a(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    const-string v0, "ufe"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/google/android/gms/internal/zznu;->a(Lcom/google/android/gms/internal/zzns;[Ljava/lang/String;)Z

    :cond_5
    invoke-virtual/range {p5 .. p5}, Lcom/google/android/gms/internal/zzacn;->j()Z

    move-result v0

    invoke-virtual {v4, v6, v7, v0}, Lcom/google/android/gms/internal/zzacl;->a(JZ)Lcom/google/android/gms/internal/zzaax;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    return-object v0

    :catchall_2
    move-exception v0

    move-object/from16 v17, v5

    goto :goto_6

    :catchall_3
    move-exception v0

    const/16 v17, 0x0

    :goto_6
    :try_start_9
    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/common/util/zzn;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :cond_6
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v11, v2, v8}, Lcom/google/android/gms/internal/zzacb;->zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V

    if-lt v8, v12, :cond_9

    const/16 v0, 0x190

    if-ge v8, v0, :cond_9

    const-string v0, "Location"

    invoke-virtual {v10, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v0, "No location header to follow redirect."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaax;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    return-object v0

    :cond_7
    :try_start_b
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    add-int/2addr v9, v0

    sget-object v0, Lcom/google/android/gms/internal/zznh;->cL:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v9, v0, :cond_8

    const-string v0, "Too many redirects."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaax;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    return-object v0

    :cond_8
    :try_start_d
    invoke-virtual {v4, v11}, Lcom/google/android/gms/internal/zzacl;->a(Ljava/util/Map;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0

    move-object/from16 v0, p0

    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_9
    const/16 v0, 0x2e

    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Received error HTTP response code: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaax;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_4
    move-exception v0

    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "Error while connecting to ad server: "

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->e(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzaax;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    return-object v0
.end method

.method public static zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaca;)Lcom/google/android/gms/internal/zzacb;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzacb;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzacb;->zzcrk:Lcom/google/android/gms/internal/zzacb;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/android/gms/internal/zznh;->a(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/gms/internal/zzacb;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzacb;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaca;)V

    sput-object v1, Lcom/google/android/gms/internal/zzacb;->zzcrk:Lcom/google/android/gms/internal/zzacb;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzahn;->c(Landroid/content/Context;)Z

    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/internal/zzagd;->a(Landroid/content/Context;)V

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/zzacb;->zzcrk:Lcom/google/android/gms/internal/zzacb;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static zza(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Http Response: {\n  URL:\n    "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n  Headers:"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "    "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "      "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "  Body:"

    invoke-static {p0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    if-eqz p2, :cond_3

    const/4 p0, 0x0

    :goto_2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const v0, 0x186a0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ge p0, p1, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit16 v0, p0, 0x3e8

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    move p0, v0

    goto :goto_2

    :cond_3
    const-string p0, "    null"

    invoke-static {p0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    :cond_4
    const/16 p0, 0x22

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "  Response Code:\n    "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\n}"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method static final synthetic zzm(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzakv;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzacn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzacn;-><init>(Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzakl;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaku;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/zzaat;Lcom/google/android/gms/internal/zzabe;)V
    .locals 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->i()Lcom/google/android/gms/internal/zzaft;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzacb;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzaat;->l:Lcom/google/android/gms/internal/zzakd;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzaft;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;)V

    new-instance v0, Lcom/google/android/gms/internal/zzacd;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzacd;-><init>(Lcom/google/android/gms/internal/zzacb;Lcom/google/android/gms/internal/zzaat;Lcom/google/android/gms/internal/zzabe;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzahh;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzakv;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->s()Lcom/google/android/gms/internal/zzajf;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzajf;->a()Landroid/os/Looper;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->s()Lcom/google/android/gms/internal/zzajf;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzajf;->b()Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/zzace;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzace;-><init>(Lcom/google/android/gms/internal/zzacb;Ljava/util/concurrent/Future;)V

    const-wide/32 v1, 0xea60

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/zzabm;Lcom/google/android/gms/internal/zzabh;)V
    .locals 0

    const-string p1, "Nonagon code path entered in octagon"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->a(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/zzaat;)Lcom/google/android/gms/internal/zzaax;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacb;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzacb;->zzcrl:Lcom/google/android/gms/internal/zzaca;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzacb;->zzcrm:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, p1, v2}, Lcom/google/android/gms/internal/zzacb;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzaca;Lcom/google/android/gms/internal/zzaat;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/zzaax;

    move-result-object p1

    return-object p1
.end method
