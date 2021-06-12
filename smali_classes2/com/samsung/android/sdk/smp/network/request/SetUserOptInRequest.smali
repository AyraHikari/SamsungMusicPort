.class public Lcom/samsung/android/sdk/smp/network/request/SetUserOptInRequest;
.super Lcom/samsung/android/sdk/smp/network/request/NetworkJSonRequest;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "SetUserOptInRequest"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/network/request/NetworkJSonRequest;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/network/request/SetUserOptInRequest;->b:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/samsung/android/sdk/smp/network/request/SetUserOptInRequest;->c:Ljava/lang/String;

    .line 22
    iput-boolean p3, p0, Lcom/samsung/android/sdk/smp/network/request/SetUserOptInRequest;->d:Z

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

    .line 32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "optin"

    .line 34
    iget-boolean v2, p0, Lcom/samsung/android/sdk/smp/network/request/SetUserOptInRequest;->d:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 36
    sget-object v1, Lcom/samsung/android/sdk/smp/network/request/SetUserOptInRequest;->a:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance v0, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidDataException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidDataException;-><init>()V

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://sdk.pushmessage.samsung.com/v3/applications/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/network/request/SetUserOptInRequest;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/users"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/network/request/SetUserOptInRequest;->c:Ljava/lang/String;

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
