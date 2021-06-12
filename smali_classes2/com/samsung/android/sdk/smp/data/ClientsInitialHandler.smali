.class Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;
.super Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 75
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "smpid"

    .line 76
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 78
    sget-object v0, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid server response. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method a(ILjava/lang/String;)V
    .locals 3

    .line 106
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->a(ILjava/lang/String;)V

    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_0

    const-string v0, "SMP_0501"

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal server error - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 p2, 0x3f2

    if-eq p1, p2, :cond_2

    const/16 p2, 0x3f7

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    const-string v0, "SMP_0401"

    const-string p1, "Internal error"

    goto :goto_0

    :cond_1
    const-string v0, "SMP_0502"

    const-string p1, "Invalid server response"

    goto :goto_0

    :cond_2
    :pswitch_0
    const-string v0, "SMP_0301"

    const-string p1, "Network is not available"

    .line 132
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;->b()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0, p1}, Lcom/samsung/android/sdk/smp/common/BroadcastUtil;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method a(Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;)V
    .locals 0

    .line 100
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/smp/data/ClientsRequestHandler;->a(Lcom/samsung/android/sdk/smp/network/request/ClientsRequest;)V

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;->b()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/BroadcastUtil;->a(Landroid/content/Context;)V

    return-void
.end method

.method a()Z
    .locals 6

    .line 30
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a()Lcom/samsung/android/sdk/smp/common/GlobalData;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/common/GlobalData;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 32
    sget-object v0, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;->a:Ljava/lang/String;

    const-string v1, "fail to get appid"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SMP_0401"

    const-string v3, "Internal error"

    invoke-static {v0, v1, v3}, Lcom/samsung/android/sdk/smp/common/BroadcastUtil;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 36
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;->b(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;->d()Lcom/samsung/android/sdk/smp/storage/PrefManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c()Ljava/lang/String;

    move-result-object v1

    .line 39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 40
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;->c(Ljava/lang/String;)V

    return v4

    .line 45
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->k(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/common/DeviceInfo$DeviceID;

    move-result-object v1

    if-nez v1, :cond_2

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SMP_0101"

    const-string v3, "Fail to create smp id. Should request after READ_PHONE_STATE permission is granted"

    invoke-static {v0, v1, v3}, Lcom/samsung/android/sdk/smp/common/BroadcastUtil;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 50
    :cond_2
    iget-object v3, v1, Lcom/samsung/android/sdk/smp/common/DeviceInfo$DeviceID;->a:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v1, Lcom/samsung/android/sdk/smp/common/DeviceInfo$DeviceID;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 55
    :cond_3
    new-instance v3, Lcom/samsung/android/sdk/smp/network/request/SmpIdRequest;

    iget-object v5, v1, Lcom/samsung/android/sdk/smp/common/DeviceInfo$DeviceID;->a:Ljava/lang/String;

    iget-object v1, v1, Lcom/samsung/android/sdk/smp/common/DeviceInfo$DeviceID;->b:Ljava/lang/String;

    invoke-direct {v3, v0, v5, v1}, Lcom/samsung/android/sdk/smp/network/request/SmpIdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;->b()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-static {v0, v3, v1}, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/network/request/NetworkRequest;I)Lcom/samsung/android/sdk/smp/network/NetworkResult;

    move-result-object v0

    .line 58
    iget-boolean v1, v0, Lcom/samsung/android/sdk/smp/network/NetworkResult;->a:Z

    if-eqz v1, :cond_5

    .line 59
    iget-object v0, v0, Lcom/samsung/android/sdk/smp/network/NetworkResult;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SMP_0502"

    const-string v3, "Invalid server response"

    invoke-static {v0, v1, v3}, Lcom/samsung/android/sdk/smp/common/BroadcastUtil;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 64
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;->d()Lcom/samsung/android/sdk/smp/storage/PrefManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->c(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;->c(Ljava/lang/String;)V

    return v4

    .line 68
    :cond_5
    iget v1, v0, Lcom/samsung/android/sdk/smp/network/NetworkResult;->b:I

    iget-object v0, v0, Lcom/samsung/android/sdk/smp/network/NetworkResult;->c:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;->a(ILjava/lang/String;)V

    return v2

    .line 51
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SMP_0102"

    const-string v3, "Fail to create smp id. Device Id is not available"

    invoke-static {v0, v1, v3}, Lcom/samsung/android/sdk/smp/common/BroadcastUtil;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method a(Ljava/lang/String;)Z
    .locals 3

    .line 86
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "initsts"

    .line 87
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;->d()Lcom/samsung/android/sdk/smp/storage/PrefManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->b(J)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 92
    sget-object v0, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/data/ClientsInitialHandler;->b()Landroid/content/Context;

    move-result-object p1

    const-string v0, "SMP_0502"

    const-string v1, "Invalid server response"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/smp/common/BroadcastUtil;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
