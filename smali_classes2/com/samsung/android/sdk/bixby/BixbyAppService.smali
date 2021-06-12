.class public Lcom/samsung/android/sdk/bixby/BixbyAppService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/bixby/BixbyAppService$CommandHandler;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;

.field private static final d:Z

.field private static final e:Z

.field private static j:Landroid/os/HandlerThread;

.field private static k:Landroid/content/pm/Signature;


# instance fields
.field a:Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;

.field b:Lcom/samsung/android/bixby/agent/IBixbyAgentAppService$Stub;

.field private f:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private g:Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;

.field private h:Z

.field private i:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/sdk/bixby/BixbyAppService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_0.2.7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->c:Ljava/lang/String;

    const-string v0, "user"

    .line 29
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->d:Z

    .line 30
    sget-boolean v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->d:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->e:Z

    .line 41
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "MIIE1DCCA7ygAwIBAgIJANIJlaecDarWMA0GCSqGSIb3DQEBBQUAMIGiMQswCQYDVQQGEwJLUjEUMBIGA1UECBMLU291dGggS29yZWExEzARBgNVBAcTClN1d29uIENpdHkxHDAaBgNVBAoTE1NhbXN1bmcgQ29ycG9yYXRpb24xDDAKBgNVBAsTA0RNQzEVMBMGA1UEAxMMU2Ftc3VuZyBDZXJ0MSUwIwYJKoZIhvcNAQkBFhZhbmRyb2lkLm9zQHNhbXN1bmcuY29tMB4XDTExMDYyMjEyMjUxMloXDTM4MTEwNzEyMjUxMlowgaIxCzAJBgNVBAYTAktSMRQwEgYDVQQIEwtTb3V0aCBLb3JlYTETMBEGA1UEBxMKU3V3b24gQ2l0eTEcMBoGA1UEChMTU2Ftc3VuZyBDb3Jwb3JhdGlvbjEMMAoGA1UECxMDRE1DMRUwEwYDVQQDEwxTYW1zdW5nIENlcnQxJTAjBgkqhkiG9w0BCQEWFmFuZHJvaWQub3NAc2Ftc3VuZy5jb20wggEgMA0GCSqGSIb3DQEBAQUAA4IBDQAwggEIAoIBAQDJhjhKPh8vsgZnDnjvIyIVwNJvRaInKNuZpE2hHDWsM6cf4HHEotaCWptMiLMz7ZbzxebGZtYPPulMSQiFq8+NxmD3B6q8d+rT4tDYrugQjBXNJg8uhQQsKNLyktqjxtoMe/I5HbeEGq3o/fDJ0N7893Ek5tLeCp4NLadGw2cOT/zchbcBu0dEhhuW/3MR2jYDxaEDNuVf+jS0NT7tyF9RAV4VGMZ+MJ45+HY5/xeBB/EJzRhBGmB38mlktuY/inC5YZ2wQwajI8Gh0jr4Z+GfFPVw/+Vz0OOgwrMGMqrsMXM4CZS+HjQeOpC9LkthVIH0bbOeqDgWRI7DX+sXNcHzAgEDo4IBCzCCAQcwHQYDVR0OBBYEFJMsOvcLYnoMdhC1oOdCfWz66j8eMIHXBgNVHSMEgc8wgcyAFJMsOvcLYnoMdhC1oOdCfWz66j8eoYGopIGlMIGiMQswCQYDVQQGEwJLUjEUMBIGA1UECBMLU291dGggS29yZWExEzARBgNVBAcTClN1d29uIENpdHkxHDAaBgNVBAoTE1NhbXN1bmcgQ29ycG9yYXRpb24xDDAKBgNVBAsTA0RNQzEVMBMGA1UEAxMMU2Ftc3VuZyBDZXJ0MSUwIwYJKoZIhvcNAQkBFhZhbmRyb2lkLm9zQHNhbXN1bmcuY29tggkA0gmVp5wNqtYwDAYDVR0TBAUwAwEB/zANBgkqhkiG9w0BAQUFAAOCAQEAMpYB/kDgNqSobMXUndjBtUFZmOcmN1OLDUMDaaxRUw9jqs6MAZoaZmFqLxuyxfq9bzEyYfOA40cWI/BT2ePFP1/W0ZZdewAOTcJEwbJ+L+mjI/8Hf1LEZ16GJHqoARhxN+MMm78BxWekKZ20vwslt9cQenuB7hAvcv9HlQFk4mdS4RTEL4udKkLnMIiX7GQOoZJO0Tq76dEgkSti9JJkk6htuUwLRvRMYWHVjC9kgWSJDFEt+yjULIVb9HDb7i2raWDK0E6B9xUl3tRs3Q81n5nEYNufAH2WzoO0shisLYLEjxJgjUaXM/BaM3VZRmnMv4pJVUTWxXAek2nAjIEBWA=="

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>([B)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->k:Landroid/content/pm/Signature;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->h:Z

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->i:Landroid/os/Handler;

    .line 151
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyAppService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService$1;-><init>(Lcom/samsung/android/sdk/bixby/BixbyAppService;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a:Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;

    .line 259
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyAppService$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService$2;-><init>(Lcom/samsung/android/sdk/bixby/BixbyAppService;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b:Lcom/samsung/android/bixby/agent/IBixbyAgentAppService$Stub;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->g:Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/sdk/bixby/BixbyAppService;Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;)Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->g:Lcom/samsung/android/bixby/agent/IBixbyAgentAppServiceCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/sdk/bixby/BixbyAppService;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 226
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->f:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v0, v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->a:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 227
    sget-object p1, Lcom/samsung/android/sdk/bixby/BixbyAppService;->c:Ljava/lang/String;

    const-string v0, "makeStateResultCommand: Can\'t make a state result command. Ignored."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 233
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->f:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v2, v2, Lcom/samsung/android/sdk/bixby/BixbyApi;->a:Ljava/lang/String;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 234
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 235
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "version"

    const-string v5, "1.0"

    .line 238
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "command"

    const-string v5, "esem_state_result"

    .line 239
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "requestId"

    const-string v5, "requestId"

    .line 240
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "result"

    .line 242
    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "content"

    .line 244
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "state"

    const-string v4, "state"

    .line 245
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "content"

    .line 247
    invoke-virtual {v2, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 252
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    move-object p1, v1

    :goto_0
    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "esem_request_nlg"

    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    const-string v0, "esem_request_tts"

    .line 187
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1
    const-string v0, "esem_context_result"

    .line 189
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_2
    const-string v0, "esem_param_filling_result"

    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"result\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    const-string v0, "esem_state_log"

    .line 193
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 194
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_4
    const-string v0, "esem_client_control"

    .line 195
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 196
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_5
    const-string v0, "state_command_result"

    .line 197
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 198
    invoke-direct {p0, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    const-string v0, "esem_chatty_mode_result"

    .line 199
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"result\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    const-string v0, "esem_cancel_chatty_mode"

    .line 201
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_8
    const-string v0, "esem_split_state_result"

    .line 203
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"selectedStateId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_9
    const-string v0, "esem_all_states_result"

    .line 205
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\"result\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\""

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_a
    const-string v0, "esem_user_confirm_result"

    .line 207
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 208
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 210
    :cond_b
    sget-object p2, Lcom/samsung/android/sdk/bixby/BixbyAppService;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleResponseCommand: Unsupported Command:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method static synthetic a()Z
    .locals 1

    .line 27
    sget-boolean v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->e:Z

    return v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->c:Ljava/lang/String;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"version\":\""

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"command\":\""

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"content\":{"

    .line 221
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic b(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->d()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/sdk/bixby/BixbyAppService;)Landroid/os/Handler;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->i:Landroid/os/Handler;

    return-object p0
.end method

.method private c()Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.UserHandle"

    .line 104
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "semGetMyUserId"

    .line 105
    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 106
    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 107
    sget-boolean v2, Lcom/samsung/android/sdk/bixby/BixbyAppService;->e:Z

    if-eqz v2, :cond_0

    .line 108
    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyAppService;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v2, "com.samsung.android.knox.SemPersonaManager"

    .line 112
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v4, "isKnoxId"

    const/4 v5, 0x1

    .line 114
    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 115
    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 116
    sget-boolean v2, Lcom/samsung/android/sdk/bixby/BixbyAppService;->e:Z

    if-eqz v2, :cond_1

    .line 117
    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyAppService;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bRet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v1

    :catch_0
    move-exception v1

    .line 129
    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyAppService;->c:Ljava/lang/String;

    const-string v3, "isKnoxId: Can\'t read information on KNOX."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyAppService;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private d()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 290
    sget-boolean v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->h:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 294
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 295
    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 296
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    return v3

    .line 301
    :cond_1
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5

    const-string v7, "com.samsung.android.bixby.agent"

    .line 302
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x40

    .line 304
    :try_start_0
    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v6, :cond_2

    .line 305
    array-length v7, v6

    if-lez v7, :cond_2

    sget-object v7, Lcom/samsung/android/sdk/bixby/BixbyAppService;->k:Landroid/content/pm/Signature;

    aget-object v6, v6, v3

    invoke-virtual {v7, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_2

    return v1

    :catch_0
    move-exception v6

    .line 309
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_1
    return v1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->f:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Landroid/content/Intent;)V

    .line 72
    iget-object p1, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->b:Lcom/samsung/android/bixby/agent/IBixbyAgentAppService$Stub;

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 83
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BixbyAppService onCreate package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->c()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->h:Z

    .line 86
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->f:Lcom/samsung/android/sdk/bixby/BixbyApi;

    .line 87
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->f:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->a:Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$OnResponseCallback;)V

    const-string v0, "com.samsung.android.bixby.agent"

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->j:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ExtCmdHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->j:Landroid/os/HandlerThread;

    .line 92
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 94
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyAppService$CommandHandler;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyAppService;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/BixbyAppService$CommandHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->i:Landroid/os/Handler;

    .line 95
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->f:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->i:Landroid/os/Handler;

    iput-object v1, v0, Lcom/samsung/android/sdk/bixby/BixbyApi;->b:Landroid/os/Handler;

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->f:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->d()V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 318
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BixbyAppService onDestroy package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyAppService;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->f:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->i()V

    .line 320
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->f:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->e()V

    .line 321
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/BixbyAppService;->f:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->b(Landroid/content/Intent;)V

    .line 78
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
