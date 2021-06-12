.class public Lcom/mz/common/network/SslConnect;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/mz/common/network/SslConnect$1;

    invoke-direct {v0}, Lcom/mz/common/network/SslConnect$1;-><init>()V

    sput-object v0, Lcom/mz/common/network/SslConnect;->a:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public static a()V
    .locals 4

    const/4 v0, 0x1

    .line 26
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/mz/common/network/SslConnect$2;

    invoke-direct {v1}, Lcom/mz/common/network/SslConnect$2;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    :try_start_0
    const-string v1, "TLS"

    .line 42
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    const/4 v2, 0x0

    .line 43
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v2, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 44
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
