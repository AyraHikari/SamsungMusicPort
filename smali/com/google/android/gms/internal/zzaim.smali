.class public final Lcom/google/android/gms/internal/zzaim;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaim;->a:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaim;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaim;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaim;->d:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaim;->e:Ljava/lang/String;

    return-void
.end method

.method private final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaim;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaim;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    const-string v1, "debug_signals_id.txt"

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzahn;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaim;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaim;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    invoke-static {}, Lcom/google/android/gms/internal/zzahn;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaim;->b:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    const-string v1, "debug_signals_id.txt"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaim;->b:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/zzahn;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/zzaim;->b:Ljava/lang/String;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 8

    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_0

    const-string p1, "Can not create dialog without Activity Context"

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzahn;->a:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/gms/internal/zzain;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zzain;-><init>(Lcom/google/android/gms/internal/zzaim;Landroid/content/Context;Ljava/lang/String;ZZ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zznh;->cB:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/zzaim;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzaim;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const-string p1, "Not linked for in app preview."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    return p3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "gct"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "status"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaim;->e:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p2, p0, Lcom/google/android/gms/internal/zzaim;->a:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzaim;->c:Ljava/lang/String;

    monitor-exit p2

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catch_0
    move-exception p1

    const-string p2, "Fail to get in app preview response json."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return p3
.end method

.method private final c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "linkedDeviceId"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaim;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "adSlotPath"

    invoke-virtual {p2, p1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string p1, "afmaVersion"

    invoke-virtual {p2, p1, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private final c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zznh;->cC:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/zzaim;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzaim;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    const-string p1, "Not linked for debug signals."

    invoke-static {p1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    return p3

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "debug_mode"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/zzaim;->a:Ljava/lang/Object;

    monitor-enter p2

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzaim;->d:Z

    monitor-exit p2

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catch_0
    move-exception p1

    const-string p2, "Fail to get debug mode response json."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return p3
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "User-Agent"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/internal/zzaiv;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/zzaiv;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/zzaiv;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/google/android/gms/internal/zzakv;

    move-result-object p0

    const/4 p2, 0x1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zznh;->cE:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzakv;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    const-string p2, "Error retriving a response from: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v1, "Interrupted while retriving a response from: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "Timeout while retriving a response from: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {p0, p2}, Lcom/google/android/gms/internal/zzakv;->cancel(Z)Z

    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private final e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    sget-object v0, Lcom/google/android/gms/internal/zznh;->cA:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/gms/internal/zzaim;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaim;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaim;->c:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzaim;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string p2, "In-app preview failed to load because of a system error. Please try again later."

    invoke-direct {p0, p1, p2, v1, v1}, Lcom/google/android/gms/internal/zzaim;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void

    :cond_0
    const-string v0, "2"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaim;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string p2, "Creative is not pushed for this device."

    invoke-static {p2}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    const-string p2, "There was no creative pushed from DFP to the device."

    invoke-direct {p0, p1, p2, v2, v2}, Lcom/google/android/gms/internal/zzaim;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void

    :cond_1
    const-string v0, "1"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaim;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "The app is not linked for creative preview."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzaim;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string p2, "0"

    iget-object p3, p0, Lcom/google/android/gms/internal/zzaim;->e:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "Device is linked for in app preview."

    invoke-static {p2}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    const-string p2, "The device is successfully linked for creative preview."

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/google/android/gms/internal/zzaim;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    :cond_3
    return-void
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaim;->b()Z

    move-result v0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzaim;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/google/android/gms/internal/zzaim;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p2, "Device is linked for debug signals."

    invoke-static {p2}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;)V

    const-string p2, "The device is successfully linked for troubleshooting."

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzaim;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzaim;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zznh;->cD:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, p4, p2}, Lcom/google/android/gms/internal/zzaim;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    invoke-virtual {p4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p4

    const-string v0, "debugData"

    invoke-virtual {p4, v0, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    invoke-virtual {p4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzahn;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaim;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzaim;->d:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
