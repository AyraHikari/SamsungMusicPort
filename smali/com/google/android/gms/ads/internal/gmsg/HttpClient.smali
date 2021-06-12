.class public Lcom/google/android/gms/ads/internal/gmsg/HttpClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzt;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzzv;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;,
        Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;,
        Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;,
        Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzt<",
        "Lcom/google/android/gms/ads/internal/js/zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/internal/zzakd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzakd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;->b:Lcom/google/android/gms/internal/zzakd;

    return-void
.end method

.method private static a(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;
    .locals 8

    const-string v0, "http_request_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "post_body"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "Error constructing http request."

    invoke-static {v4, v1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v4, "headers"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v6, "key"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;

    invoke-direct {v7, v6, v5}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-instance p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-object p0
.end method

.method private final a(Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;)Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;->b()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;->b:Lcom/google/android/gms/internal/zzakd;

    iget-object v5, v5, Lcom/google/android/gms/internal/zzakd;->b:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v0, v2}, Lcom/google/android/gms/internal/zzahn;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;->c()Ljava/util/ArrayList;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;

    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v5, v3

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v5, v3}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    new-instance v5, Lcom/google/android/gms/internal/zzajv;

    invoke-direct {v5}, Lcom/google/android/gms/internal/zzajv;-><init>()V

    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/internal/zzajv;->a(Ljava/net/HttpURLConnection;[B)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v10, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v10, v11, v9}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance v6, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbs;->e()Lcom/google/android/gms/internal/zzahn;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-static {v8}, Lcom/google/android/gms/internal/zzahn;->a(Ljava/io/InputStreamReader;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, p1, v7, v3, v8}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;-><init>(Ljava/lang/String;ILjava/util/List;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->b()I

    move-result p1

    invoke-virtual {v5, v2, p1}, Lcom/google/android/gms/internal/zzajv;->a(Ljava/net/HttpURLConnection;I)V

    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/zzajv;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;

    invoke-direct {p1, p0, v4, v6, v1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;-><init>(Lcom/google/android/gms/ads/internal/gmsg/HttpClient;ZLcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    return-object p1

    :catch_0
    move-exception p1

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v2, v1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v2, v1

    :goto_3
    :try_start_2
    new-instance v3, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;-><init>(Lcom/google/android/gms/ads/internal/gmsg/HttpClient;ZLcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    return-object v3

    :catchall_1
    move-exception p1

    :goto_4
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw p1
.end method

.method private static a(Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;)Lorg/json/JSONObject;
    .locals 7

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "http_request_id"

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "body"

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->c()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "key"

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "value"

    invoke-virtual {v3}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zza;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    const-string v2, "headers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "response_code"

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;->b()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v1, "Error constructing JSON for http response."

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/ads/internal/js/zza;

    new-instance v0, Lcom/google/android/gms/ads/internal/gmsg/zzu;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/ads/internal/gmsg/zzu;-><init>(Lcom/google/android/gms/ads/internal/gmsg/HttpClient;Ljava/util/Map;Lcom/google/android/gms/ads/internal/js/zza;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzahh;->a(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzakv;

    return-void
.end method

.method public send(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, ""

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "http_request_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;->a(Lorg/json/JSONObject;)Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;->a(Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzb;)Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;->b()Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient;->a(Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzd;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "response"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "success"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    :cond_0
    const-string v1, "response"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "http_request_id"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "success"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "reason"

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/gmsg/HttpClient$zzc;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v3, v1

    :goto_0
    const-string v1, "Error executing http request."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :try_start_2
    const-string v1, "response"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "http_request_id"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "success"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "reason"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    const-string v1, "Error executing http request."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/zzagf;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method
