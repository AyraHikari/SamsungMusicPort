.class public final Lcom/google/android/gms/internal/zzua;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zztp;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zztp<",
        "TI;TO;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/zztr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zztr<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/zzts;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzts<",
            "TI;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/android/gms/ads/internal/js/zzn;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/js/zzn;Ljava/lang/String;Lcom/google/android/gms/internal/zzts;Lcom/google/android/gms/internal/zztr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/js/zzn;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzts<",
            "TI;>;",
            "Lcom/google/android/gms/internal/zztr<",
            "TO;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzua;->c:Lcom/google/android/gms/ads/internal/js/zzn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzua;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzua;->b:Lcom/google/android/gms/internal/zzts;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzua;->a:Lcom/google/android/gms/internal/zztr;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzua;)Lcom/google/android/gms/internal/zztr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzua;->a:Lcom/google/android/gms/internal/zztr;

    return-object p0
.end method

.method private final a(Lcom/google/android/gms/ads/internal/js/zzaa;Lcom/google/android/gms/ads/internal/js/zzaj;Ljava/lang/Object;Lcom/google/android/gms/internal/zzalf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/ads/internal/js/zzaa;",
            "Lcom/google/android/gms/ads/internal/js/zzaj;",
            "TI;",
            "Lcom/google/android/gms/internal/zzalf<",
            "TO;>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    invoke-static {}, Lcom/google/android/gms/internal/zzahn;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/ads/internal/gmsg/zzd;->o:Lcom/google/android/gms/ads/internal/gmsg/zzad;

    new-instance v2, Lcom/google/android/gms/internal/zzud;

    invoke-direct {v2, p0, p1, p4}, Lcom/google/android/gms/internal/zzud;-><init>(Lcom/google/android/gms/internal/zzua;Lcom/google/android/gms/ads/internal/js/zzaa;Lcom/google/android/gms/internal/zzalf;)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/ads/internal/gmsg/zzad;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzae;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "args"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzua;->b:Lcom/google/android/gms/internal/zzts;

    invoke-interface {v2, p3}, Lcom/google/android/gms/internal/zzts;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/google/android/gms/internal/zzua;->d:Ljava/lang/String;

    invoke-interface {p2, p3, v1}, Lcom/google/android/gms/ads/internal/js/zzaj;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    :try_start_1
    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/zzalf;->a(Ljava/lang/Throwable;)V

    const-string p3, "Unable to invokeJavaScript"

    invoke-static {p3, p2}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/js/zzaa;->a()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/js/zzaa;->a()V

    throw p2
.end method

.method static synthetic a(Lcom/google/android/gms/internal/zzua;Lcom/google/android/gms/ads/internal/js/zzaa;Lcom/google/android/gms/ads/internal/js/zzaj;Ljava/lang/Object;Lcom/google/android/gms/internal/zzalf;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzua;->a(Lcom/google/android/gms/ads/internal/js/zzaa;Lcom/google/android/gms/ads/internal/js/zzaj;Ljava/lang/Object;Lcom/google/android/gms/internal/zzalf;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzakv;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/zzakv<",
            "TO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzua;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzakv;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzakv;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)",
            "Lcom/google/android/gms/internal/zzakv<",
            "TO;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzalf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzalf;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzua;->c:Lcom/google/android/gms/ads/internal/js/zzn;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/js/zzn;->b(Lcom/google/android/gms/internal/zzcv;)Lcom/google/android/gms/ads/internal/js/zzaa;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzub;

    invoke-direct {v2, p0, v1, p1, v0}, Lcom/google/android/gms/internal/zzub;-><init>(Lcom/google/android/gms/internal/zzua;Lcom/google/android/gms/ads/internal/js/zzaa;Ljava/lang/Object;Lcom/google/android/gms/internal/zzalf;)V

    new-instance p1, Lcom/google/android/gms/internal/zzuc;

    invoke-direct {p1, p0, v0, v1}, Lcom/google/android/gms/internal/zzuc;-><init>(Lcom/google/android/gms/internal/zzua;Lcom/google/android/gms/internal/zzalf;Lcom/google/android/gms/ads/internal/js/zzaa;)V

    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/zzall;->a(Lcom/google/android/gms/internal/zzalk;Lcom/google/android/gms/internal/zzali;)V

    return-object v0
.end method
