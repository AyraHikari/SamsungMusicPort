.class public Lcom/samsung/android/sdk/ppmt/network/request/UploadRequest;
.super Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;
.source "SourceFile"


# instance fields
.field private b:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p2, p0, Lcom/samsung/android/sdk/ppmt/network/request/UploadRequest;->b:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "https://sdk.peppermint.samsung.com/v2/app/data"

    return-object v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;
        }
    .end annotation

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/UploadRequest;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ppmt/network/request/UploadRequest;->c(Lorg/json/JSONObject;)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/UploadRequest;->b:Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/ppmt/network/request/UploadRequest;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/UploadRequest;->b:Lorg/json/JSONObject;

    return-object v0

    .line 43
    :catch_0
    new-instance v0, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;-><init>()V

    throw v0
.end method
