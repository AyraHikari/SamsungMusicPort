.class public abstract Lcom/samsung/android/sdk/smp/network/request/NetworkJSonRequest;
.super Lcom/samsung/android/sdk/smp/network/request/NetworkRequest;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/network/request/NetworkRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract B_()Z
.end method

.method public a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidDataException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/network/request/NetworkJSonRequest;->b()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 17
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract b()Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidDataException;
        }
    .end annotation
.end method
