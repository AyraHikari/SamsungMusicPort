.class public Lcom/samsung/android/app/music/network/secure/MusicServerCertificateFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/secure/SSLCertificateFactory;


# instance fields
.field private a:Lcom/samsung/android/app/music/network/secure/SSLCertificateFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;

    move-result-object p1

    const-string v0, "httpsTrustAllCertsEnabled"

    const/4 v1, 0x0

    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/music/service/milk/net/ApplicationJsonProperties;->a(Ljava/lang/String;Z)Z

    .line 27
    invoke-static {}, Lcom/samsung/android/app/music/network/secure/CachedSystemCertificatePinning;->a()Lcom/samsung/android/app/music/network/secure/CachedSystemCertificatePinning;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/network/secure/MusicServerCertificateFactory;->a:Lcom/samsung/android/app/music/network/secure/SSLCertificateFactory;

    return-void
.end method


# virtual methods
.method public b()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/samsung/android/app/music/network/secure/MusicServerCertificateFactory;->a:Lcom/samsung/android/app/music/network/secure/SSLCertificateFactory;

    invoke-interface {v0}, Lcom/samsung/android/app/music/network/secure/SSLCertificateFactory;->b()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/samsung/android/app/music/network/secure/MusicServerCertificateFactory;->a:Lcom/samsung/android/app/music/network/secure/SSLCertificateFactory;

    invoke-interface {v0}, Lcom/samsung/android/app/music/network/secure/SSLCertificateFactory;->c()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    return-object v0
.end method
