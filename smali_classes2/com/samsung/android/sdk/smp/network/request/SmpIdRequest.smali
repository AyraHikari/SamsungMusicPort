.class public Lcom/samsung/android/sdk/smp/network/request/SmpIdRequest;
.super Lcom/samsung/android/sdk/smp/network/request/NetworkJSonRequest;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/network/request/NetworkJSonRequest;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/network/request/SmpIdRequest;->a:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/samsung/android/sdk/smp/network/request/SmpIdRequest;->b:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/samsung/android/sdk/smp/network/request/SmpIdRequest;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public B_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected b()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidDataException;
        }
    .end annotation

    .line 35
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    .line 36
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/network/request/SmpIdRequest;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "value"

    .line 37
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/network/request/SmpIdRequest;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 40
    :catch_0
    new-instance v0, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidDataException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidDataException;-><init>()V

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://sdk.pushmessage.samsung.com/v3/applications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/network/request/SmpIdRequest;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/smpid"

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
