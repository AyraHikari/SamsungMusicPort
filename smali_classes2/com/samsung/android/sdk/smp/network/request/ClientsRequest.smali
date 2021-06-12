.class public Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;
.super Lcom/samsung/android/sdk/smp/network/request/NetworkJSonRequest;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "ClientsRequest"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lorg/json/JSONArray;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/network/request/NetworkJSonRequest;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;->b:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;->c:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;->d:Ljava/lang/String;

    .line 38
    new-instance p2, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {p2, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->m()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;->f:Z

    return-void
.end method


# virtual methods
.method public B_()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;->f:Z

    return v0
.end method

.method protected b()Lorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidDataException;
        }
    .end annotation

    .line 49
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "currentdts"

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "basic"

    .line 51
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/sdk/smp/data/DataManager;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/data/DataManager;->b(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "appfilter"

    .line 55
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/data/DataManager;->c(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "appstart"

    .line 59
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/data/DataManager;->d(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 62
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, "session"

    .line 63
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/data/DataManager;->e(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;->e:Lorg/json/JSONArray;

    .line 66
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;->e:Lorg/json/JSONArray;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;->e:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "marketing"

    .line 67
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;->e:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    :cond_3
    invoke-static {}, Lcom/samsung/android/sdk/smp/data/DataManager;->a()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 71
    sget-object v2, Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "test device : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/sdk/smp/common/TestModeUtil;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "test"

    .line 72
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v0

    .line 77
    :catch_0
    new-instance v0, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidDataException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidDataException;-><init>()V

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://sdk.pushmessage.samsung.com/v3/applications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/clients"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e()Lorg/json/JSONArray;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;->e:Lorg/json/JSONArray;

    return-object v0
.end method
