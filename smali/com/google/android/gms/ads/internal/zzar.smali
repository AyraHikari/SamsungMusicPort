.class final Lcom/google/android/gms/ads/internal/zzar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanm;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/zzoj;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/google/android/gms/internal/zzanh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzoj;Ljava/lang/String;Lcom/google/android/gms/internal/zzanh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzar;->a:Lcom/google/android/gms/internal/zzoj;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzar;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzar;->c:Lcom/google/android/gms/internal/zzanh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/zzanh;Z)V
    .locals 2

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "headline"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzar;->a:Lcom/google/android/gms/internal/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzoj;->getHeadline()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "body"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzar;->a:Lcom/google/android/gms/internal/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzoj;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "call_to_action"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzar;->a:Lcom/google/android/gms/internal/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzoj;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "price"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzar;->a:Lcom/google/android/gms/internal/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzoj;->getPrice()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "star_rating"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzar;->a:Lcom/google/android/gms/internal/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzoj;->getStarRating()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "store"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzar;->a:Lcom/google/android/gms/internal/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzoj;->getStore()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "icon"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzar;->a:Lcom/google/android/gms/internal/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzoj;->zzjs()Lcom/google/android/gms/internal/zzpq;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzaq;->a(Lcom/google/android/gms/internal/zzpq;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzar;->a:Lcom/google/android/gms/internal/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzoj;->getImages()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzaq;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzpq;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzaq;->a(Lcom/google/android/gms/internal/zzpq;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    const-string v0, "images"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "extras"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzar;->a:Lcom/google/android/gms/internal/zzoj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzoj;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzar;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/zzaq;->a(Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "assets"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "template_id"

    const-string v0, "2"

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/zzar;->c:Lcom/google/android/gms/internal/zzanh;

    const-string v0, "google.afma.nativeExpressAds.loadAssets"

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/zzanh;->b(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Exception occurred when loading assets"

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/zzagf;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
