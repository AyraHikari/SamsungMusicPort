.class Lcom/samsung/android/app/music/network/secure/SystemCertificatePinning$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/secure/SystemCertificatePinning;->b()Ljavax/net/ssl/SSLContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljavax/net/ssl/SSLContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/network/secure/SystemCertificatePinning;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/secure/SystemCertificatePinning;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/music/network/secure/SystemCertificatePinning$2;->a:Lcom/samsung/android/app/music/network/secure/SystemCertificatePinning;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljavax/net/ssl/SSLContext;
    .locals 10

    const-string v0, "RetrofitGenerator.SystemCertificatePinning"

    const-string v1, "createSSLContextIfNeeded. start."

    .line 49
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 53
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 55
    invoke-virtual {v1, v0, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const-string v2, "AndroidCAStore"

    .line 56
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 57
    invoke-virtual {v2, v0, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 59
    invoke-virtual {v2}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 63
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 64
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 65
    invoke-virtual {v2, v6}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    const-string v8, "system:"

    .line 66
    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 67
    invoke-virtual {v1, v6, v7}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 74
    :cond_1
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {v2}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 76
    invoke-virtual {v2, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    const-string v1, "TLS"

    .line 78
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 79
    :try_start_1
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    const-string v0, "RetrofitGenerator.SystemCertificatePinning"

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createSSLContextIfNeeded. done. aliasCount - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", systemCertCount - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_1

    :catch_1
    move-exception v1

    .line 83
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/samsung/android/app/music/network/secure/SystemCertificatePinning$2;->a()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method
