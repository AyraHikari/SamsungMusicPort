.class public Lcom/samsung/android/app/music/network/secure/TrustAllCertificate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/secure/SSLCertificateFactory;


# static fields
.field private static a:Lcom/samsung/android/app/music/network/secure/TrustAllCertificate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/samsung/android/app/music/network/secure/TrustAllCertificate;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/secure/TrustAllCertificate;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/network/secure/TrustAllCertificate;->a:Lcom/samsung/android/app/music/network/secure/TrustAllCertificate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/samsung/android/app/music/network/secure/TrustAllCertificate;
    .locals 1

    .line 28
    sget-object v0, Lcom/samsung/android/app/music/network/secure/TrustAllCertificate;->a:Lcom/samsung/android/app/music/network/secure/TrustAllCertificate;

    return-object v0
.end method


# virtual methods
.method public b()Ljavax/net/ssl/SSLContext;
    .locals 5

    const/4 v0, 0x1

    .line 33
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/samsung/android/app/music/network/secure/TrustAllCertificate$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/secure/TrustAllCertificate$1;-><init>(Lcom/samsung/android/app/music/network/secure/TrustAllCertificate;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "SSL"

    .line 47
    invoke-static {v2}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_2

    .line 48
    :try_start_1
    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v1, v0, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v1

    :goto_0
    const-string v1, "TrustAllCertificate"

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createSecureApi Unable to initialize SSL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v0

    move-object v2, v1

    :goto_1
    const-string v1, "TrustAllCertificate"

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createSecureApi SSL not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v2
.end method

.method public c()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 59
    new-instance v0, Lcom/samsung/android/app/music/network/secure/TrustAllCertificate$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/secure/TrustAllCertificate$2;-><init>(Lcom/samsung/android/app/music/network/secure/TrustAllCertificate;)V

    return-object v0
.end method
