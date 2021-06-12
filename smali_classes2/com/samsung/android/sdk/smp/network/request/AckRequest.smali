.class public Lcom/samsung/android/sdk/smp/network/request/AckRequest;
.super Lcom/samsung/android/sdk/smp/network/request/NetworkJSonRequest;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "AckRequest"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/data/AckData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/smp/data/AckData;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/network/request/NetworkJSonRequest;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/network/request/AckRequest;->b:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/samsung/android/sdk/smp/network/request/AckRequest;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public B_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected b()Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidDataException;
        }
    .end annotation

    .line 39
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a()Lcom/samsung/android/sdk/smp/common/GlobalData;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/network/request/AckRequest;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/common/GlobalData;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/network/request/AckRequest;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/smp/common/GlobalData;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 42
    iget-object v3, p0, Lcom/samsung/android/sdk/smp/network/request/AckRequest;->b:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/smp/common/GlobalData;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 44
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "aid"

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 46
    :goto_0
    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ptype"

    if-eqz v0, :cond_1

    move-object v4, v0

    goto :goto_1

    :cond_1
    const-string v4, ""

    .line 47
    :goto_1
    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pushtoken"

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v2, ""

    .line 48
    :goto_2
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 51
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/network/request/AckRequest;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/smp/data/AckData;

    .line 52
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "requestID"

    .line 53
    iget-object v7, v4, Lcom/samsung/android/sdk/smp/data/AckData;->b:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, v4, Lcom/samsung/android/sdk/smp/data/AckData;->b:Ljava/lang/String;

    goto :goto_4

    :cond_3
    const-string v7, ""

    :goto_4
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "timestamp"

    .line 54
    iget-wide v7, v4, Lcom/samsung/android/sdk/smp/data/AckData;->c:J

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 55
    iget-object v6, v4, Lcom/samsung/android/sdk/smp/data/AckData;->e:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, v4, Lcom/samsung/android/sdk/smp/data/AckData;->e:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "errorCode"

    const-string v7, "EACK001"

    .line 56
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "errorMsg"

    .line 57
    iget-object v4, v4, Lcom/samsung/android/sdk/smp/data/AckData;->e:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    :cond_4
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    :cond_5
    const-string v0, "data"

    .line 61
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    .line 63
    sget-object v1, Lcom/samsung/android/sdk/smp/network/request/AckRequest;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v0, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidDataException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidDataException;-><init>()V

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "https://sdk.pushmessage.samsung.com/v3/applications/ack"

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
