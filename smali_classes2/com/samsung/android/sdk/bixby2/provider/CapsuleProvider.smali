.class public Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Z

.field private static c:Landroid/content/pm/Signature;

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/bixby2/action/ActionHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Z

.field private static f:Z

.field private static g:Ljava/lang/Object;

.field private static h:Ljava/lang/String;


# instance fields
.field private i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1.0.9"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a:Ljava/lang/String;

    const-string v0, "user"

    .line 52
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->b:Z

    .line 54
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "MIIE1DCCA7ygAwIBAgIJANIJlaecDarWMA0GCSqGSIb3DQEBBQUAMIGiMQswCQYDVQQGEwJLUjEUMBIGA1UECBMLU291dGggS29yZWExEzARBgNVBAcTClN1d29uIENpdHkxHDAaBgNVBAoTE1NhbXN1bmcgQ29ycG9yYXRpb24xDDAKBgNVBAsTA0RNQzEVMBMGA1UEAxMMU2Ftc3VuZyBDZXJ0MSUwIwYJKoZIhvcNAQkBFhZhbmRyb2lkLm9zQHNhbXN1bmcuY29tMB4XDTExMDYyMjEyMjUxMloXDTM4MTEwNzEyMjUxMlowgaIxCzAJBgNVBAYTAktSMRQwEgYDVQQIEwtTb3V0aCBLb3JlYTETMBEGA1UEBxMKU3V3b24gQ2l0eTEcMBoGA1UEChMTU2Ftc3VuZyBDb3Jwb3JhdGlvbjEMMAoGA1UECxMDRE1DMRUwEwYDVQQDEwxTYW1zdW5nIENlcnQxJTAjBgkqhkiG9w0BCQEWFmFuZHJvaWQub3NAc2Ftc3VuZy5jb20wggEgMA0GCSqGSIb3DQEBAQUAA4IBDQAwggEIAoIBAQDJhjhKPh8vsgZnDnjvIyIVwNJvRaInKNuZpE2hHDWsM6cf4HHEotaCWptMiLMz7ZbzxebGZtYPPulMSQiFq8+NxmD3B6q8d+rT4tDYrugQjBXNJg8uhQQsKNLyktqjxtoMe/I5HbeEGq3o/fDJ0N7893Ek5tLeCp4NLadGw2cOT/zchbcBu0dEhhuW/3MR2jYDxaEDNuVf+jS0NT7tyF9RAV4VGMZ+MJ45+HY5/xeBB/EJzRhBGmB38mlktuY/inC5YZ2wQwajI8Gh0jr4Z+GfFPVw/+Vz0OOgwrMGMqrsMXM4CZS+HjQeOpC9LkthVIH0bbOeqDgWRI7DX+sXNcHzAgEDo4IBCzCCAQcwHQYDVR0OBBYEFJMsOvcLYnoMdhC1oOdCfWz66j8eMIHXBgNVHSMEgc8wgcyAFJMsOvcLYnoMdhC1oOdCfWz66j8eoYGopIGlMIGiMQswCQYDVQQGEwJLUjEUMBIGA1UECBMLU291dGggS29yZWExEzARBgNVBAcTClN1d29uIENpdHkxHDAaBgNVBAoTE1NhbXN1bmcgQ29ycG9yYXRpb24xDDAKBgNVBAsTA0RNQzEVMBMGA1UEAxMMU2Ftc3VuZyBDZXJ0MSUwIwYJKoZIhvcNAQkBFhZhbmRyb2lkLm9zQHNhbXN1bmcuY29tggkA0gmVp5wNqtYwDAYDVR0TBAUwAwEB/zANBgkqhkiG9w0BAQUFAAOCAQEAMpYB/kDgNqSobMXUndjBtUFZmOcmN1OLDUMDaaxRUw9jqs6MAZoaZmFqLxuyxfq9bzEyYfOA40cWI/BT2ePFP1/W0ZZdewAOTcJEwbJ+L+mjI/8Hf1LEZ16GJHqoARhxN+MMm78BxWekKZ20vwslt9cQenuB7hAvcv9HlQFk4mdS4RTEL4udKkLnMIiX7GQOoZJO0Tq76dEgkSti9JJkk6htuUwLRvRMYWHVjC9kgWSJDFEt+yjULIVb9HDb7i2raWDK0E6B9xUl3tRs3Q81n5nEYNufAH2WzoO0shisLYLEjxJgjUaXM/BaM3VZRmnMv4pJVUTWxXAek2nAjIEBWA=="

    const/4 v2, 0x0

    .line 55
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>([B)V

    sput-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->c:Landroid/content/pm/Signature;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->d:Ljava/util/Map;

    .line 85
    sput-boolean v2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->e:Z

    .line 87
    sput-boolean v2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->f:Z

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 91
    sput-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->i:Ljava/lang/Object;

    return-void
.end method

.method private a(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 2

    .line 252
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "status_code"

    .line 253
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 254
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const-string p2, "Failed to execute action."

    .line 256
    sget-object p1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/bixby2/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "status_message"

    .line 258
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 10

    monitor-enter p0

    const/4 v0, -0x1

    .line 282
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a:Ljava/lang/String;

    const-string v2, "executeAction()"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/bixby2/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby2/action/ActionHandler;

    move-result-object v5

    if-nez v5, :cond_0

    .line 285
    sget-object p1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a:Ljava/lang/String;

    const-string p2, "Handler not found!!.."

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/bixby2/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x2

    const-string p2, "Action handler not found"

    .line 287
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object p1

    :cond_0
    if-eqz p2, :cond_5

    :try_start_1
    const-string v1, "actionType"

    .line 290
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 295
    :cond_1
    new-instance v1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;-><init>(Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;)V

    .line 296
    new-instance v2, Ljava/lang/Thread;

    new-instance v9, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;

    move-object v3, v9

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$2;-><init>(Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;)V

    invoke-direct {v2, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 302
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 304
    iget-object p1, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->i:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 305
    :try_start_2
    invoke-static {v1}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->a(Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 306
    iget-object p2, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->i:Ljava/lang/Object;

    const-wide/16 v3, 0x7530

    invoke-virtual {p2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 311
    :cond_2
    invoke-static {v1}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->a(Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 312
    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->a()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 314
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p2

    .line 317
    :cond_3
    :try_start_3
    sget-object p2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a:Ljava/lang/String;

    const-string v3, "timeout occurred.."

    invoke-static {p2, v3}, Lcom/samsung/android/sdk/bixby2/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 318
    invoke-virtual {v1, p2}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$CapsuleResponseCallback;->a(Z)V

    .line 319
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 321
    :cond_4
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, "action execution timed out"

    .line 329
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p2

    .line 321
    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p2

    .line 291
    :cond_5
    :goto_0
    sget-object p1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a:Ljava/lang/String;

    const-string p2, "params missing"

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/bixby2/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "params missing.."

    .line 292
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 324
    :try_start_7
    sget-object p2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to execute action."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/sdk/bixby2/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 326
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    return-object p1

    .line 281
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private a(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby2/action/ActionHandler;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 264
    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/bixby2/action/ActionHandler;

    .line 265
    sget-object v1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->g:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_0

    .line 267
    :try_start_0
    sget-boolean v2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->f:Z

    if-eqz v2, :cond_0

    .line 268
    sput-object p1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->h:Ljava/lang/String;

    .line 270
    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->g:Ljava/lang/Object;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 272
    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/sdk/bixby2/action/ActionHandler;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 275
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;)Ljava/lang/Object;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public static a()V
    .locals 2

    .line 133
    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 134
    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a:Ljava/lang/String;

    const-string v1, "Removed all action handlers"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby2/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V
    .locals 3

    .line 113
    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->d:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/bixby2/action/ActionHandler;

    if-nez v1, :cond_0

    .line 116
    sget-object v1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->d:Ljava/util/Map;

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object p1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->h:Ljava/lang/String;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->h:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 118
    sget-object p1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handler added: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/bixby2/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->g:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 122
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static a(Z)V
    .locals 3

    .line 96
    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-boolean v1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->e:Z

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 98
    sput-boolean p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->e:Z

    .line 99
    sget-object p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a:Ljava/lang/String;

    const-string v1, "releasing initialize wait lock."

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/bixby2/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->g:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 102
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    new-instance p0, Ljava/util/Timer;

    invoke-direct {p0}, Ljava/util/Timer;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider$1;-><init>()V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void

    :catchall_0
    move-exception p0

    .line 102
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Z)Z
    .locals 0

    .line 31
    sput-boolean p0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->f:Z

    return p0
.end method

.method private c()Z
    .locals 8

    .line 138
    sget-boolean v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->b:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 142
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 144
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 146
    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a:Ljava/lang/String;

    const-string v1, "packages is null"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby2/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 151
    :cond_1
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v0, v5

    const-string v7, "com.samsung.android.bixby.agent"

    .line 152
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/16 v7, 0x40

    .line 154
    :try_start_0
    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v6, :cond_2

    .line 155
    array-length v7, v6

    if-lez v7, :cond_2

    sget-object v7, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->c:Landroid/content/pm/Signature;

    aget-object v6, v6, v3

    invoke-virtual {v7, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_2

    return v1

    :catch_0
    move-exception v6

    .line 159
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 163
    :cond_3
    sget-object v1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allowed to access capsule provider. package (s): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v1, v0}, Lcom/samsung/android/sdk/bixby2/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method private d()V
    .locals 4

    .line 199
    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    sget-boolean v1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 202
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->g:Ljava/lang/Object;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 205
    :try_start_2
    sget-object v2, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a:Ljava/lang/String;

    const-string v3, "interrupted exception"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/bixby2/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 209
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 214
    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a:Ljava/lang/String;

    const-string v1, "call()"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby2/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call(): method --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " args --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " extras --> "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 216
    invoke-virtual {p3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby2/LogUtil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 227
    invoke-direct {p0}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->d()V

    .line 228
    sget-boolean v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->e:Z

    if-nez v0, :cond_1

    .line 229
    sget-object p1, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a:Ljava/lang/String;

    const-string p2, "App initialization error."

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/bixby2/LogUtil;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x1

    const-string p2, "Initialization Failure.."

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "getAppContext"

    .line 233
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    invoke-static {}, Lcom/samsung/android/sdk/bixby2/Sbixby;->a()Lcom/samsung/android/sdk/bixby2/Sbixby;

    invoke-static {}, Lcom/samsung/android/sdk/bixby2/Sbixby;->b()Lcom/samsung/android/sdk/bixby2/state/StateHandler;

    move-result-object p1

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 238
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "appContext"

    .line 239
    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p2

    :cond_3
    if-eqz p3, :cond_4

    .line 247
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1

    .line 245
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "action params are EMPTY."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 224
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method is null or empty. pass valid action name."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 220
    :cond_6
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "not allowed to access capsule provider."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "actionUri"

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 2

    .line 170
    sget-object v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->a:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/bixby2/LogUtil;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 171
    sput-boolean v0, Lcom/samsung/android/sdk/bixby2/provider/CapsuleProvider;->f:Z

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method
