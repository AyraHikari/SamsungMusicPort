.class Lcom/samsung/android/app/music/network/secure/TrustAllCertificate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/secure/TrustAllCertificate;->b()Ljavax/net/ssl/SSLContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/network/secure/TrustAllCertificate;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/secure/TrustAllCertificate;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/network/secure/TrustAllCertificate$1;->a:Lcom/samsung/android/app/music/network/secure/TrustAllCertificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    .line 36
    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
