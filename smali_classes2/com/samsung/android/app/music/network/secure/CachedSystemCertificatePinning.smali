.class public Lcom/samsung/android/app/music/network/secure/CachedSystemCertificatePinning;
.super Lcom/samsung/android/app/music/network/secure/SystemCertificatePinning;
.source "SourceFile"


# static fields
.field private static b:Lcom/samsung/android/app/music/network/secure/CachedSystemCertificatePinning;


# instance fields
.field private a:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/samsung/android/app/music/network/secure/CachedSystemCertificatePinning;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/secure/CachedSystemCertificatePinning;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/network/secure/CachedSystemCertificatePinning;->b:Lcom/samsung/android/app/music/network/secure/CachedSystemCertificatePinning;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/music/network/secure/SystemCertificatePinning;-><init>()V

    return-void
.end method

.method public static a()Lcom/samsung/android/app/music/network/secure/CachedSystemCertificatePinning;
    .locals 1

    .line 21
    sget-object v0, Lcom/samsung/android/app/music/network/secure/CachedSystemCertificatePinning;->b:Lcom/samsung/android/app/music/network/secure/CachedSystemCertificatePinning;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized b()Ljavax/net/ssl/SSLContext;
    .locals 1

    monitor-enter p0

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/network/secure/CachedSystemCertificatePinning;->a:Ljavax/net/ssl/SSLContext;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/network/secure/CachedSystemCertificatePinning;->a:Ljavax/net/ssl/SSLContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 30
    :cond_0
    :try_start_1
    invoke-super {p0}, Lcom/samsung/android/app/music/network/secure/SystemCertificatePinning;->b()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/network/secure/CachedSystemCertificatePinning;->a:Ljavax/net/ssl/SSLContext;

    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/network/secure/CachedSystemCertificatePinning;->a:Ljavax/net/ssl/SSLContext;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 26
    monitor-exit p0

    throw v0
.end method

.method public c()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
