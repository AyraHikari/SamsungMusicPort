.class public final Lcom/google/android/gms/internal/zzzf;
.super Lcom/google/android/gms/internal/zzyk;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzyk<",
        "Lcom/google/android/gms/internal/zzzf;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:J

.field private static final d:Ljava/lang/Object;

.field private static e:Z

.field private static f:Lcom/google/android/gms/ads/internal/js/zzn;


# instance fields
.field private a:Lcom/google/android/gms/ads/internal/js/JavascriptEngineFactory;

.field private b:Lcom/google/android/gms/internal/zzakv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzakv<",
            "Lcom/google/android/gms/internal/zzanh;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/ads/internal/gmsg/zzz;

.field private final h:Lcom/google/android/gms/internal/zzox;

.field private final i:Landroid/content/Context;

.field private final j:Lcom/google/android/gms/internal/zzakd;

.field private final k:Lcom/google/android/gms/ads/internal/zzba;

.field private final l:Lcom/google/android/gms/internal/zzcv;

.field private final m:Ljava/lang/Object;

.field private n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzzf;->c:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzzf;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/zzzf;->e:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzzf;->f:Lcom/google/android/gms/ads/internal/js/zzn;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzba;Ljava/lang/String;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/internal/zzakd;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzyk;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzzf;->m:Ljava/lang/Object;

    const-string v0, "Webview loading for native ads."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzf;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzzf;->k:Lcom/google/android/gms/ads/internal/zzba;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzzf;->l:Lcom/google/android/gms/internal/zzcv;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzzf;->j:Lcom/google/android/gms/internal/zzakd;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzzf;->n:Ljava/lang/String;

    new-instance p1, Lcom/google/android/gms/ads/internal/js/JavascriptEngineFactory;

    invoke-direct {p1}, Lcom/google/android/gms/ads/internal/js/JavascriptEngineFactory;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzf;->a:Lcom/google/android/gms/ads/internal/js/JavascriptEngineFactory;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->f()Lcom/google/android/gms/internal/zzanr;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzf;->i:Landroid/content/Context;

    iget-object p4, p0, Lcom/google/android/gms/internal/zzzf;->j:Lcom/google/android/gms/internal/zzakd;

    sget-object p5, Lcom/google/android/gms/internal/zznh;->bK:Lcom/google/android/gms/internal/zzmx;

    invoke-static {}, Lcom/google/android/gms/internal/zzkb;->f()Lcom/google/android/gms/internal/zznf;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/zznf;->a(Lcom/google/android/gms/internal/zzmx;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->l:Lcom/google/android/gms/internal/zzcv;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzf;->k:Lcom/google/android/gms/ads/internal/zzba;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zza;->zzbq()Lcom/google/android/gms/ads/internal/zzv;

    move-result-object v1

    invoke-static {p1, p4, p5, v0, v1}, Lcom/google/android/gms/internal/zzanr;->a(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;Ljava/lang/String;Lcom/google/android/gms/internal/zzcv;Lcom/google/android/gms/ads/internal/zzv;)Lcom/google/android/gms/internal/zzakv;

    move-result-object p1

    new-instance p4, Lcom/google/android/gms/ads/internal/gmsg/zzz;

    iget-object p5, p0, Lcom/google/android/gms/internal/zzzf;->i:Landroid/content/Context;

    invoke-direct {p4, p5}, Lcom/google/android/gms/ads/internal/gmsg/zzz;-><init>(Landroid/content/Context;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzzf;->g:Lcom/google/android/gms/ads/internal/gmsg/zzz;

    new-instance p4, Lcom/google/android/gms/internal/zzox;

    invoke-direct {p4, p2, p3}, Lcom/google/android/gms/internal/zzox;-><init>(Lcom/google/android/gms/internal/zzot;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzzf;->h:Lcom/google/android/gms/internal/zzox;

    new-instance p2, Lcom/google/android/gms/internal/zzzg;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/zzzg;-><init>(Lcom/google/android/gms/internal/zzzf;)V

    sget-object p3, Lcom/google/android/gms/internal/zzala;->b:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzakg;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/zzakv;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzzf;->b:Lcom/google/android/gms/internal/zzakv;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzzf;->b:Lcom/google/android/gms/internal/zzakv;

    const-string p2, "WebViewNativeAdsUtil.constructor"

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzakj;->a(Lcom/google/android/gms/internal/zzakv;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final synthetic a(Lcom/google/android/gms/internal/zzanh;)Lcom/google/android/gms/internal/zzakv;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "Javascript has loaded for native ads."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzagf;->d(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzf;->k:Lcom/google/android/gms/ads/internal/zzba;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzzf;->k:Lcom/google/android/gms/ads/internal/zzba;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzzf;->k:Lcom/google/android/gms/ads/internal/zzba;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzzf;->k:Lcom/google/android/gms/ads/internal/zzba;

    new-instance v8, Lcom/google/android/gms/ads/internal/zzw;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->i:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v8, v0, v6, v6}, Lcom/google/android/gms/ads/internal/zzw;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzafb;Lcom/google/android/gms/internal/zzaaz;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/zzani;->a(Lcom/google/android/gms/internal/zzje;Lcom/google/android/gms/ads/internal/overlay/zzn;Lcom/google/android/gms/ads/internal/gmsg/zzb;Lcom/google/android/gms/ads/internal/overlay/zzq;ZLcom/google/android/gms/ads/internal/gmsg/zzx;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/zzxc;Lcom/google/android/gms/internal/zzafb;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    const-string v1, "/logScionEvent"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzf;->g:Lcom/google/android/gms/ads/internal/gmsg/zzz;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzani;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzanh;->u()Lcom/google/android/gms/internal/zzani;

    move-result-object v0

    const-string v1, "/logScionEvent"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzzf;->h:Lcom/google/android/gms/internal/zzox;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzani;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakl;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaku;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzakv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/zzakv<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->b:Lcom/google/android/gms/internal/zzakv;

    new-instance v1, Lcom/google/android/gms/internal/zzzh;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzzh;-><init>(Lcom/google/android/gms/internal/zzzf;Lorg/json/JSONObject;)V

    sget-object p1, Lcom/google/android/gms/internal/zzala;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzakg;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/zzakv;

    move-result-object p1

    return-object p1
.end method

.method final synthetic a(Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzanh;)Lcom/google/android/gms/internal/zzakv;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "ads_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzf;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "google.afma.nativeAds.handleImpressionPing"

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/zzanh;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakl;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaku;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->b:Lcom/google/android/gms/internal/zzakv;

    new-instance v1, Lcom/google/android/gms/internal/zzzo;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzzo;-><init>(Lcom/google/android/gms/internal/zzzf;)V

    sget-object v2, Lcom/google/android/gms/internal/zzala;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzaki;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method final synthetic a(Lcom/google/android/gms/internal/zzanh;Lcom/google/android/gms/internal/zzyl;Lcom/google/android/gms/internal/zzalf;Lcom/google/android/gms/internal/zzanh;Ljava/util/Map;)V
    .locals 3

    :try_start_0
    const-string p4, "success"

    invoke-interface {p5, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-string v0, "failure"

    invoke-interface {p5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p5, 0x0

    goto :goto_0

    :cond_0
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p4, 0x1

    move-object p4, p5

    const/4 p5, 0x1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->n:Ljava/lang/String;

    const-string v1, "ads_id"

    const-string v2, ""

    invoke-virtual {p4, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "/nativeAdPreProcess"

    iget-object p2, p2, Lcom/google/android/gms/internal/zzyl;->a:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/zzanh;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "success"

    invoke-virtual {p1, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "json"

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/zzalf;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Error while preprocessing json."

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/zzalf;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->b:Lcom/google/android/gms/internal/zzakv;

    new-instance v1, Lcom/google/android/gms/internal/zzzl;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzzl;-><init>(Lcom/google/android/gms/internal/zzzf;Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    sget-object p1, Lcom/google/android/gms/internal/zzala;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzaki;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->b:Lcom/google/android/gms/internal/zzakv;

    new-instance v1, Lcom/google/android/gms/internal/zzzn;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzzn;-><init>(Lcom/google/android/gms/internal/zzzf;Ljava/lang/String;Lorg/json/JSONObject;)V

    sget-object p1, Lcom/google/android/gms/internal/zzala;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzaki;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final b(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzakv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/zzakv<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->b:Lcom/google/android/gms/internal/zzakv;

    new-instance v1, Lcom/google/android/gms/internal/zzzi;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzzi;-><init>(Lcom/google/android/gms/internal/zzzf;Lorg/json/JSONObject;)V

    sget-object p1, Lcom/google/android/gms/internal/zzala;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzakg;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/zzakv;

    move-result-object p1

    return-object p1
.end method

.method final synthetic b(Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzanh;)Lcom/google/android/gms/internal/zzakv;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "ads_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzf;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "google.afma.nativeAds.handleClickGmsg"

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/zzanh;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzakl;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzaku;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->b:Lcom/google/android/gms/internal/zzakv;

    new-instance v1, Lcom/google/android/gms/internal/zzzm;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzzm;-><init>(Lcom/google/android/gms/internal/zzzf;Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    sget-object p1, Lcom/google/android/gms/internal/zzala;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzaki;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final c(Lorg/json/JSONObject;)Lcom/google/android/gms/internal/zzakv;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/zzakv<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzzf;->b:Lcom/google/android/gms/internal/zzakv;

    new-instance v1, Lcom/google/android/gms/internal/zzzj;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzzj;-><init>(Lcom/google/android/gms/internal/zzzf;Lorg/json/JSONObject;)V

    sget-object p1, Lcom/google/android/gms/internal/zzala;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/zzakl;->a(Lcom/google/android/gms/internal/zzakv;Lcom/google/android/gms/internal/zzakg;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/zzakv;

    move-result-object p1

    return-object p1
.end method

.method final synthetic c(Lorg/json/JSONObject;Lcom/google/android/gms/internal/zzanh;)Lcom/google/android/gms/internal/zzakv;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "ads_id"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzzf;->n:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v0, Lcom/google/android/gms/internal/zzalf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzalf;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzyl;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzyl;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/zzzk;

    invoke-direct {v2, p0, p2, v1, v0}, Lcom/google/android/gms/internal/zzzk;-><init>(Lcom/google/android/gms/internal/zzzf;Lcom/google/android/gms/internal/zzanh;Lcom/google/android/gms/internal/zzyl;Lcom/google/android/gms/internal/zzalf;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/zzyl;->a:Lcom/google/android/gms/ads/internal/gmsg/zzt;

    const-string v1, "/nativeAdPreProcess"

    invoke-interface {p2, v1, v2}, Lcom/google/android/gms/internal/zzanh;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzt;)V

    const-string v1, "google.afma.nativeAds.preProcessJsonGmsg"

    invoke-interface {p2, v1, p1}, Lcom/google/android/gms/internal/zzanh;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-object v0
.end method
