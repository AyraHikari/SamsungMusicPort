.class public Lcom/samsung/android/sdk/spage/card/ConnectivityData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/ConnectivityData;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/sdk/spage/card/ConnectivityData;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lorg/json/JSONObject;
    .locals 3

    .line 68
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "fileUri"

    .line 71
    iget-object v2, p0, Lcom/samsung/android/sdk/spage/card/ConnectivityData;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "state"

    .line 72
    iget-object v2, p0, Lcom/samsung/android/sdk/spage/card/ConnectivityData;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mimeType"

    .line 73
    iget-object v2, p0, Lcom/samsung/android/sdk/spage/card/ConnectivityData;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "event"

    .line 74
    iget-object v2, p0, Lcom/samsung/android/sdk/spage/card/ConnectivityData;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "ConnectivityData"

    const-string v2, "error while  adding data"

    .line 76
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/ConnectivityData;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/samsung/android/sdk/spage/card/ConnectivityData;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/ConnectivityData;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/samsung/android/sdk/spage/card/ConnectivityData;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/ConnectivityData;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/samsung/android/sdk/spage/card/ConnectivityData;->d:Ljava/lang/String;

    return-object p0
.end method
