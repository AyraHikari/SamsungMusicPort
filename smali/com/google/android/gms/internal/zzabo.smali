.class public final Lcom/google/android/gms/internal/zzabo;
.super Lcom/google/android/gms/internal/zzagb;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# static fields
.field private static a:J

.field private static final b:Ljava/lang/Object;

.field private static c:Z

.field private static d:Lcom/google/android/gms/ads/internal/js/zzn;

.field private static e:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

.field private static f:Lcom/google/android/gms/ads/internal/gmsg/zzy;

.field private static g:Lcom/google/android/gms/ads/internal/gmsg/zzt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final h:Lcom/google/android/gms/internal/zzzx;

.field private final i:Lcom/google/android/gms/internal/zzaau;

.field private final j:Ljava/lang/Object;

.field private final k:Landroid/content/Context;

.field private l:Lcom/google/android/gms/ads/internal/js/zzaa;

.field private m:Lcom/google/android/gms/internal/zzix;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzabo;->a:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzabo;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/zzabo;->c:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzabo;->d:Lcom/google/android/gms/ads/internal/js/zzn;

    sput-object v0, Lcom/google/android/gms/internal/zzabo;->e:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    sput-object v0, Lcom/google/android/gms/internal/zzabo;->f:Lcom/google/android/gms/ads/internal/gmsg/zzy;

    sput-object v0, Lcom/google/android/gms/internal/zzabo;->g:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzaau;Lcom/google/android/gms/internal/zzzx;Lcom/google/android/gms/internal/zzix;)V
    .locals 7

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzagb;-><init>(Z)V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzabo;->j:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzabo;->h:Lcom/google/android/gms/internal/zzzx;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabo;->k:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabo;->i:Lcom/google/android/gms/internal/zzaau;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzabo;->m:Lcom/google/android/gms/internal/zzix;

    sget-object p3, Lcom/google/android/gms/internal/zzabo;->b:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    sget-boolean p4, Lcom/google/android/gms/internal/zzabo;->c:Z

    if-nez p4, :cond_0

    new-instance p4, Lcom/google/android/gms/ads/internal/gmsg/zzy;

    invoke-direct {p4}, Lcom/google/android/gms/ads/internal/gmsg/zzy;-><init>()V

    sput-object p4, Lcom/google/android/gms/internal/zzabo;->f:Lcom/google/android/gms/ads/internal/gmsg/zzy;

    new-instance p4, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p2, Lcom/google/android/gms/internal/zzaau;->j:Lcom/google/android/gms/internal/zzakd;

    invoke-direct {p4, p1, p2}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;)V

    sput-object p4, Lcom/google/android/gms/internal/zzabo;->e:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    new-instance p1, Lcom/google/android/gms/internal/zzabw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzabw;-><init>()V

    sput-object p1, Lcom/google/android/gms/internal/zzabo;->g:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    new-instance p1, Lcom/google/android/gms/ads/internal/js/zzn;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzabo;->k:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object p2, p0, Lcom/google/android/gms/internal/zzabo;->i:Lcom/google/android/gms/internal/zzaau;

    iget-object v3, p2, Lcom/google/android/gms/internal/zzaau;->j:Lcom/google/android/gms/internal/zzakd;

    sget-object p2, Lcom/google/android/gms/internal/zznh;->a:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/internal/zzabv;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzabv;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/zzabu;

    invoke-direct {v6}, Lcom/google/android/gms/internal/zzabu;-><init>()V

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/js/zzn;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Ljava/lang/String;Lcom/google/android/gms/internal/zzaiq;Lcom/google/android/gms/internal/zzaiq;)V

    sput-object p1, Lcom/google/android/gms/internal/zzabo;->d:Lcom/google/android/gms/ads/internal/js/zzn;

    sput-boolean v0, Lcom/google/android/gms/internal/zzabo;->c:Z

    :cond_0
    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzabo;Lcom/google/android/gms/ads/internal/js/zzaa;)Lcom/google/android/gms/ads/internal/js/zzaa;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabo;->l:Lcom/google/android/gms/ads/internal/js/zzaa;

    return-object p1
.end method

.method private final a(Lcom/google/android/gms/internal/zzaat;)Lcom/google/android/gms/internal/zzaax;
    .locals 8

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    invoke-static {}, Lcom/google/android/gms/internal/zzahn;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzabo;->a(Lcom/google/android/gms/internal/zzaat;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzaax;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v3

    sget-object v5, Lcom/google/android/gms/internal/zzabo;->f:Lcom/google/android/gms/ads/internal/gmsg/zzy;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/ads/internal/gmsg/zzy;->a(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/zzajr;->a:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/zzabq;

    invoke-direct {v7, p0, v1, v0}, Lcom/google/android/gms/internal/zzabq;-><init>(Lcom/google/android/gms/internal/zzabo;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-wide v0, Lcom/google/android/gms/internal/zzabo;->a:J

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v3

    sub-long/2addr v0, v6

    const/4 v3, -0x1

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v0, v1, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/zzaax;

    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    return-object p1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzabo;->k:Landroid/content/Context;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/zzacg;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzaat;Ljava/lang/String;)Lcom/google/android/gms/internal/zzaax;

    move-result-object p1

    iget v0, p1, Lcom/google/android/gms/internal/zzaax;->e:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaax;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/zzaax;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    :cond_2
    return-object p1

    :catch_0
    new-instance p1, Lcom/google/android/gms/internal/zzaax;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    return-object p1

    :catch_1
    new-instance p1, Lcom/google/android/gms/internal/zzaax;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    return-object p1

    :catch_2
    new-instance p1, Lcom/google/android/gms/internal/zzaax;

    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/zzaax;-><init>(I)V

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzabo;)Lcom/google/android/gms/internal/zzzx;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzabo;->h:Lcom/google/android/gms/internal/zzzx;

    return-object p0
.end method

.method private final a(Lcom/google/android/gms/internal/zzaat;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    iget-object v0, p1, Lcom/google/android/gms/internal/zzaat;->d:Lcom/google/android/gms/internal/zzjj;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjj;->d:Landroid/os/Bundle;

    const-string v1, "sdk_less_server_data"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->o()Lcom/google/android/gms/internal/zzacq;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzabo;->k:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzacq;->a(Landroid/content/Context;)Ljava/util/concurrent/Future;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/zzaco;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Error grabbing device info: "

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/zzabo;->k:Landroid/content/Context;

    new-instance v4, Lcom/google/android/gms/internal/zzabz;

    invoke-direct {v4}, Lcom/google/android/gms/internal/zzabz;-><init>()V

    iput-object p1, v4, Lcom/google/android/gms/internal/zzabz;->i:Lcom/google/android/gms/internal/zzaat;

    iput-object v2, v4, Lcom/google/android/gms/internal/zzabz;->j:Lcom/google/android/gms/internal/zzaco;

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/zzacg;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzabz;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzabo;->k:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "Cannot get advertising id info"

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    :goto_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "request_id"

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "request_param"

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "data"

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_2

    const-string p1, "adid"

    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "lat"

    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->b()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzahn;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    return-object v1
.end method

.method protected static a(Lcom/google/android/gms/ads/internal/js/zzc;)V
    .locals 2

    const-string v0, "/loadAd"

    sget-object v1, Lcom/google/android/gms/internal/zzabo;->f:Lcom/google/android/gms/ads/internal/gmsg/zzy;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzc;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/fetchHttpRequest"

    sget-object v1, Lcom/google/android/gms/internal/zzabo;->e:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzc;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/invalidRequest"

    sget-object v1, Lcom/google/android/gms/internal/zzabo;->g:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzc;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/internal/zzabo;)Lcom/google/android/gms/ads/internal/js/zzaa;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzabo;->l:Lcom/google/android/gms/ads/internal/js/zzaa;

    return-object p0
.end method

.method protected static b(Lcom/google/android/gms/ads/internal/js/zzc;)V
    .locals 2

    const-string v0, "/loadAd"

    sget-object v1, Lcom/google/android/gms/internal/zzabo;->f:Lcom/google/android/gms/ads/internal/gmsg/zzy;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzc;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/fetchHttpRequest"

    sget-object v1, Lcom/google/android/gms/internal/zzabo;->e:Lcom/google/android/gms/ads/internal/gmsg/HttpClient;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzc;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v0, "/invalidRequest"

    sget-object v1, Lcom/google/android/gms/internal/zzabo;->g:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/ads/internal/js/zzc;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    return-void
.end method

.method static synthetic e()Lcom/google/android/gms/ads/internal/gmsg/zzy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzabo;->f:Lcom/google/android/gms/ads/internal/gmsg/zzy;

    return-object v0
.end method

.method static synthetic f()Lcom/google/android/gms/ads/internal/js/zzn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzabo;->d:Lcom/google/android/gms/ads/internal/js/zzn;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 14

    const-string v0, "SdkLessAdLoaderBackgroundTask started."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->z()Lcom/google/android/gms/internal/zzaff;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabo;->k:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaff;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lcom/google/android/gms/internal/zzaat;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzabo;->i:Lcom/google/android/gms/internal/zzaau;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->z()Lcom/google/android/gms/internal/zzaff;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzabo;->k:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaff;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->z()Lcom/google/android/gms/internal/zzaff;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzabo;->k:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaff;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-wide/16 v4, -0x1

    move-object v2, v9

    move-object v8, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/zzaat;-><init>(Lcom/google/android/gms/internal/zzaau;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->z()Lcom/google/android/gms/internal/zzaff;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzabo;->k:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzaff;->f(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/zzabo;->a(Lcom/google/android/gms/internal/zzaat;)Lcom/google/android/gms/internal/zzaax;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->k()Lcom/google/android/gms/common/util/zzd;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zzd;->elapsedRealtime()J

    move-result-wide v7

    new-instance v0, Lcom/google/android/gms/internal/zzafp;

    iget v6, v3, Lcom/google/android/gms/internal/zzaax;->e:I

    iget-wide v10, v3, Lcom/google/android/gms/internal/zzaax;->n:J

    iget-object v12, p0, Lcom/google/android/gms/internal/zzabo;->m:Lcom/google/android/gms/internal/zzix;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v13, 0x0

    move-object v1, v0

    move-object v2, v9

    move-wide v9, v10

    move-object v11, v13

    invoke-direct/range {v1 .. v12}, Lcom/google/android/gms/internal/zzafp;-><init>(Lcom/google/android/gms/internal/zzaat;Lcom/google/android/gms/internal/zzaax;Lcom/google/android/gms/internal/zzui;Lcom/google/android/gms/internal/zzjn;IJJLorg/json/JSONObject;Lcom/google/android/gms/internal/zzix;)V

    sget-object v1, Lcom/google/android/gms/internal/zzajr;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzabp;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/zzabp;-><init>(Lcom/google/android/gms/internal/zzabo;Lcom/google/android/gms/internal/zzafp;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabo;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/zzajr;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzabt;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzabt;-><init>(Lcom/google/android/gms/internal/zzabo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
