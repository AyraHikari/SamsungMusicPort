.class abstract Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/lang/String; = "ClientsRequestHandler"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/samsung/android/sdk/smp/storage/PrefManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->b:Landroid/content/Context;

    .line 29
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->e:Lcom/samsung/android/sdk/smp/storage/PrefManager;

    return-void
.end method

.method private b(Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;->e()Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/feedback/FeedbackManager;->a(Landroid/content/Context;Lorg/json/JSONArray;)V

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/data/UsageManager;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method private f()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a(ILjava/lang/String;)V
    .locals 0

    const/16 p2, 0x3ea

    if-eq p1, p2, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/data/UsageManager;->b(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method a(Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;)V
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->d()Lcom/samsung/android/sdk/smp/storage/PrefManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->d(I)V

    .line 75
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->b(Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;)V

    return-void
.end method

.method abstract a()Z
.end method

.method abstract a(Ljava/lang/String;)Z
.end method

.method b()Landroid/content/Context;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->b:Landroid/content/Context;

    return-object v0
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->c:Ljava/lang/String;

    return-void
.end method

.method c()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->c:Ljava/lang/String;

    return-object v0
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->d:Ljava/lang/String;

    return-void
.end method

.method d()Lcom/samsung/android/sdk/smp/storage/PrefManager;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->e:Lcom/samsung/android/sdk/smp/storage/PrefManager;

    return-object v0
.end method

.method d(Ljava/lang/String;)V
    .locals 3

    .line 85
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 87
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "config"

    .line 88
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "config"

    .line 89
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "session"

    .line 90
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "session"

    .line 91
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->d()Lcom/samsung/android/sdk/smp/storage/PrefManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c(Z)V

    :cond_0
    const-string v0, "uploadperiod"

    .line 94
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "uploadperiod"

    .line 95
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->d()Lcom/samsung/android/sdk/smp/storage/PrefManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->d(J)V

    :cond_1
    const-string v0, "version"

    .line 98
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "version"

    .line 99
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->d()Lcom/samsung/android/sdk/smp/storage/PrefManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 104
    sget-object v0, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method e()V
    .locals 4

    .line 59
    new-instance v0, Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->b()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x1e

    invoke-static {v1, v0, v2}, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/network/request/NetworkRequest;I)Lcom/samsung/android/sdk/smp/network/NetworkResult;

    move-result-object v1

    .line 62
    iget-boolean v2, v1, Lcom/samsung/android/sdk/smp/network/NetworkResult;->a:Z

    if-eqz v2, :cond_0

    .line 63
    iget-object v1, v1, Lcom/samsung/android/sdk/smp/network/NetworkResult;->c:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->a(Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;)V

    goto :goto_0

    .line 67
    :cond_0
    iget v0, v1, Lcom/samsung/android/sdk/smp/network/NetworkResult;->b:I

    iget-object v1, v1, Lcom/samsung/android/sdk/smp/network/NetworkResult;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->a(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
