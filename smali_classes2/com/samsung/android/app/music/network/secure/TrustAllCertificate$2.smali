.class Lcom/samsung/android/app/music/network/secure/TrustAllCertificate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/secure/TrustAllCertificate;->c()Ljavax/net/ssl/HostnameVerifier;
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

    .line 59
    iput-object p1, p0, Lcom/samsung/android/app/music/network/secure/TrustAllCertificate$2;->a:Lcom/samsung/android/app/music/network/secure/TrustAllCertificate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
