.class final Lcom/google/android/gms/internal/zzpa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanm;


# instance fields
.field private synthetic a:Ljava/util/Map;

.field private synthetic b:Lcom/google/android/gms/internal/zzoz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzoz;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpa;->b:Lcom/google/android/gms/internal/zzoz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpa;->a:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/zzanh;Z)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/zzpa;->b:Lcom/google/android/gms/internal/zzoz;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzoz;->b:Lcom/google/android/gms/internal/zzoy;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzpa;->a:Ljava/util/Map;

    const-string v0, "id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzoy;->a(Lcom/google/android/gms/internal/zzoy;Ljava/lang/String;)Ljava/lang/String;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string p2, "messageType"

    const-string v0, "htmlLoaded"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "id"

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpa;->b:Lcom/google/android/gms/internal/zzoz;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzoz;->b:Lcom/google/android/gms/internal/zzoy;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzoy;->b(Lcom/google/android/gms/internal/zzoy;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzpa;->b:Lcom/google/android/gms/internal/zzoz;

    iget-object p2, p2, Lcom/google/android/gms/internal/zzoz;->a:Lcom/google/android/gms/internal/zzzb;

    const-string v0, "sendMessageToNativeJs"

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/zzzb;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Unable to dispatch sendMessageToNativeJs event"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
