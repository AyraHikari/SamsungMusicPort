.class public Lcom/samsung/android/sdk/smp/network/NetworkManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/smp/network/NetworkManager$TLSSocketFactory;,
        Lcom/samsung/android/sdk/smp/network/NetworkManager$GzipJsonUtf8VolleyRequest;,
        Lcom/samsung/android/sdk/smp/network/NetworkManager$JsonUtf8VolleyRequest;,
        Lcom/samsung/android/sdk/smp/network/NetworkManager$StringUtf8VolleyRequest;,
        Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "NetworkManager"

.field private static b:Lcom/android/volley/RequestQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/android/volley/RequestQueue;
    .locals 3

    .line 60
    sget-object v0, Lcom/samsung/android/sdk/smp/network/NetworkManager;->b:Lcom/android/volley/RequestQueue;

    if-nez v0, :cond_1

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 64
    :try_start_0
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/android/sdk/smp/network/NetworkManager$TLSSocketFactory;

    invoke-direct {v2}, Lcom/samsung/android/sdk/smp/network/NetworkManager$TLSSocketFactory;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/volley/toolbox/HurlStack;-><init>(Lcom/android/volley/toolbox/HurlStack$UrlRewriter;Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    goto :goto_0

    .line 66
    :catch_1
    new-instance v0, Lcom/android/volley/toolbox/HurlStack;

    invoke-direct {v0}, Lcom/android/volley/toolbox/HurlStack;-><init>()V

    .line 70
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/Volley;->a(Landroid/content/Context;Lcom/android/volley/toolbox/BaseHttpStack;)Lcom/android/volley/RequestQueue;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/sdk/smp/network/NetworkManager;->b:Lcom/android/volley/RequestQueue;

    goto :goto_1

    .line 72
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/volley/toolbox/Volley;->a(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/sdk/smp/network/NetworkManager;->b:Lcom/android/volley/RequestQueue;

    .line 75
    :cond_1
    :goto_1
    sget-object p0, Lcom/samsung/android/sdk/smp/network/NetworkManager;->b:Lcom/android/volley/RequestQueue;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/network/request/NetworkRequest;I)Lcom/samsung/android/sdk/smp/network/NetworkResult;
    .locals 10

    const/16 v0, 0x3f0

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    if-gez p2, :cond_0

    goto/16 :goto_2

    .line 263
    :cond_0
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->a()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v8

    .line 265
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/network/request/NetworkRequest;->c()Ljava/lang/String;

    move-result-object v4

    const-string v2, "https://sdk.pushmessage.samsung.com"

    .line 266
    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "https://sdk.pushmessage.samsung.com"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v4

    .line 267
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/network/request/NetworkRequest;->a()Ljava/lang/String;

    move-result-object v5

    .line 268
    sget-object v3, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "request. uri : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", body:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    instance-of v2, p1, Lcom/samsung/android/sdk/smp/network/request/NetworkJSonRequest;

    if-eqz v2, :cond_3

    .line 272
    move-object v2, p1

    check-cast v2, Lcom/samsung/android/sdk/smp/network/request/NetworkJSonRequest;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/smp/network/request/NetworkJSonRequest;->B_()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 273
    invoke-static {v5}, Lcom/samsung/android/sdk/smp/common/FileIOUtil;->c(Ljava/lang/String;)[B

    move-result-object v5

    .line 274
    new-instance v9, Lcom/samsung/android/sdk/smp/network/NetworkManager$GzipJsonUtf8VolleyRequest;

    .line 275
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/network/request/NetworkRequest;->d()I

    move-result v3

    move-object v2, v9

    move-object v6, v8

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/smp/network/NetworkManager$GzipJsonUtf8VolleyRequest;-><init>(ILjava/lang/String;[BLcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_1

    .line 280
    :cond_2
    new-instance v9, Lcom/samsung/android/sdk/smp/network/NetworkManager$JsonUtf8VolleyRequest;

    .line 281
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/network/request/NetworkRequest;->d()I

    move-result v3

    move-object v2, v9

    move-object v6, v8

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/smp/network/NetworkManager$JsonUtf8VolleyRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    goto :goto_1

    .line 287
    :cond_3
    new-instance v9, Lcom/samsung/android/sdk/smp/network/NetworkManager$StringUtf8VolleyRequest;

    .line 288
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/network/request/NetworkRequest;->d()I

    move-result v3

    move-object v2, v9

    move-object v6, v8

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/sdk/smp/network/NetworkManager$StringUtf8VolleyRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 294
    :goto_1
    invoke-virtual {v9, v1}, Lcom/android/volley/Request;->a(Z)Lcom/android/volley/Request;

    .line 295
    new-instance p1, Lcom/android/volley/DefaultRetryPolicy;

    int-to-long v2, p2

    const-wide/16 v4, 0x3e8

    mul-long v4, v4, v2

    long-to-int p2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v1, v4}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v9, p1}, Lcom/android/volley/Request;->a(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 296
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p0

    .line 297
    invoke-virtual {p0, v9}, Lcom/android/volley/RequestQueue;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 298
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v2, v3, p0}, Lcom/android/volley/toolbox/RequestFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 299
    sget-object p1, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request success. "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance p1, Lcom/samsung/android/sdk/smp/network/NetworkResult;

    const/4 p2, 0x1

    const/16 v2, 0xc8

    invoke-direct {p1, p2, v2, p0}, Lcom/samsung/android/sdk/smp/network/NetworkResult;-><init>(ZILjava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 305
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a(Ljava/lang/Exception;)Lcom/samsung/android/sdk/smp/network/NetworkResult;

    move-result-object p0

    return-object p0

    .line 302
    :catch_1
    sget-object p0, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a:Ljava/lang/String;

    const-string p1, "request fail. invalid request body"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    new-instance p0, Lcom/samsung/android/sdk/smp/network/NetworkResult;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/smp/network/NetworkResult;-><init>(ZI)V

    return-object p0

    .line 259
    :cond_4
    :goto_2
    sget-object p0, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a:Ljava/lang/String;

    const-string p1, "request fail. invalid params"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance p0, Lcom/samsung/android/sdk/smp/network/NetworkResult;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/smp/network/NetworkResult;-><init>(ZI)V

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/network/NetworkResult;
    .locals 9

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p4, :cond_0

    goto :goto_0

    .line 240
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource download starts. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lcom/android/volley/toolbox/RequestFuture;->a()Lcom/android/volley/toolbox/RequestFuture;

    move-result-object v1

    .line 243
    new-instance v2, Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest;

    move-object v3, v2

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, v1

    move-object v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 244
    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest;->a(Z)Lcom/android/volley/Request;

    .line 245
    new-instance p1, Lcom/android/volley/DefaultRetryPolicy;

    int-to-long p2, p4

    const-wide/16 v3, 0x3e8

    mul-long v3, v3, p2

    long-to-int p4, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p1, p4, v0, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {v2, p1}, Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest;->a(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 246
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a(Landroid/content/Context;)Lcom/android/volley/RequestQueue;

    move-result-object p0

    .line 247
    invoke-virtual {p0, v2}, Lcom/android/volley/RequestQueue;->a(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    .line 249
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, p2, p3, p0}, Lcom/android/volley/toolbox/RequestFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 250
    sget-object p0, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a:Ljava/lang/String;

    const-string p1, "resource download success"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance p0, Lcom/samsung/android/sdk/smp/network/NetworkResult;

    const/4 p1, 0x1

    const/16 p2, 0xc8

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/smp/network/NetworkResult;-><init>(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 253
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a(Ljava/lang/Exception;)Lcom/samsung/android/sdk/smp/network/NetworkResult;

    move-result-object p0

    return-object p0

    .line 236
    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a:Ljava/lang/String;

    const-string p1, "download resource fail. invalid params"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance p0, Lcom/samsung/android/sdk/smp/network/NetworkResult;

    const/16 p1, 0x3f0

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/smp/network/NetworkResult;-><init>(ZI)V

    return-object p0
.end method

.method private static a(Ljava/lang/Exception;)Lcom/samsung/android/sdk/smp/network/NetworkResult;
    .locals 6

    .line 310
    sget-object v0, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    instance-of v0, p0, Ljava/lang/InterruptedException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 312
    sget-object p0, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a:Ljava/lang/String;

    const-string v0, "request fail. interruption occurs"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    new-instance p0, Lcom/samsung/android/sdk/smp/network/NetworkResult;

    const/16 v0, 0x3f6

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/smp/network/NetworkResult;-><init>(ZI)V

    return-object p0

    .line 314
    :cond_0
    instance-of v0, p0, Ljava/util/concurrent/TimeoutException;

    instance-of v2, p0, Lcom/android/volley/TimeoutError;

    or-int/2addr v0, v2

    if-eqz v0, :cond_1

    .line 315
    sget-object p0, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a:Ljava/lang/String;

    const-string v0, "request fail. timeout"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance p0, Lcom/samsung/android/sdk/smp/network/NetworkResult;

    const/16 v0, 0x3eb

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/smp/network/NetworkResult;-><init>(ZI)V

    return-object p0

    .line 317
    :cond_1
    instance-of v0, p0, Ljava/util/concurrent/ExecutionException;

    const/16 v2, 0x44c

    if-eqz v0, :cond_a

    .line 318
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/volley/AuthFailureError;

    if-eqz v0, :cond_2

    .line 319
    sget-object p0, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a:Ljava/lang/String;

    const-string v0, "request fail. auth fail error"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    new-instance p0, Lcom/samsung/android/sdk/smp/network/NetworkResult;

    const/16 v0, 0x3f3

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/smp/network/NetworkResult;-><init>(ZI)V

    return-object p0

    .line 321
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/volley/NoConnectionError;

    if-eqz v0, :cond_3

    .line 322
    sget-object p0, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a:Ljava/lang/String;

    const-string v0, "request fail. no network connection"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    new-instance p0, Lcom/samsung/android/sdk/smp/network/NetworkResult;

    const/16 v0, 0x3ea

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/smp/network/NetworkResult;-><init>(ZI)V

    return-object p0

    .line 324
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/volley/NetworkError;

    if-eqz v0, :cond_4

    .line 325
    sget-object v0, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a:Ljava/lang/String;

    const-string v2, "request fail. network error"

    invoke-static {v0, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    sget-object v0, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    new-instance p0, Lcom/samsung/android/sdk/smp/network/NetworkResult;

    const/16 v0, 0x3f2

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/smp/network/NetworkResult;-><init>(ZI)V

    return-object p0

    .line 328
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/volley/ParseError;

    if-eqz v0, :cond_5

    .line 329
    sget-object p0, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a:Ljava/lang/String;

    const-string v0, "request fail. invalid server response"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    new-instance p0, Lcom/samsung/android/sdk/smp/network/NetworkResult;

    const/16 v0, 0x3f7

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/smp/network/NetworkResult;-><init>(ZI)V

    return-object p0

    .line 331
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/android/volley/ServerError;

    if-eqz v0, :cond_8

    .line 332
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/android/volley/ServerError;

    iget-object v0, v0, Lcom/android/volley/ServerError;->networkResponse:Lcom/android/volley/NetworkResponse;

    const-string v2, ""

    .line 334
    iget-object v3, v0, Lcom/android/volley/NetworkResponse;->b:[B

    if-eqz v3, :cond_6

    .line 335
    new-instance v2, Ljava/lang/String;

    iget-object v3, v0, Lcom/android/volley/NetworkResponse;->b:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 336
    :cond_6
    sget-object v3, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request fail. error - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/volley/NetworkResponse;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    .line 338
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 341
    :cond_7
    new-instance v2, Lcom/samsung/android/sdk/smp/network/NetworkResult;

    iget v0, v0, Lcom/android/volley/NetworkResponse;->a:I

    invoke-direct {v2, v1, v0, p0}, Lcom/samsung/android/sdk/smp/network/NetworkResult;-><init>(ZILjava/lang/String;)V

    return-object v2

    .line 342
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/sdk/smp/network/NetworkManager$CDNVolleyRequest$DiscFullError;

    if-eqz v0, :cond_9

    .line 343
    sget-object p0, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a:Ljava/lang/String;

    const-string v0, "request fail. not enough memory"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance p0, Lcom/samsung/android/sdk/smp/network/NetworkResult;

    const/16 v0, 0x3ec

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/sdk/smp/network/NetworkResult;-><init>(ZI)V

    return-object p0

    .line 346
    :cond_9
    sget-object v0, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request fail. unknown error - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    new-instance v0, Lcom/samsung/android/sdk/smp/network/NetworkResult;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/sdk/smp/network/NetworkResult;-><init>(ZILjava/lang/String;)V

    return-object v0

    .line 350
    :cond_a
    sget-object v0, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request fail. unknown error - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    new-instance v0, Lcom/samsung/android/sdk/smp/network/NetworkResult;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/samsung/android/sdk/smp/network/NetworkResult;-><init>(ZILjava/lang/String;)V

    return-object v0
.end method
