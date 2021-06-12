.class public Lcom/samsung/android/app/music/network/secure/SystemCertificatePinning;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/secure/SSLCertificateFactory;


# static fields
.field private static a:Lcom/samsung/android/app/music/network/secure/SystemCertificatePinning;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/samsung/android/app/music/network/secure/SystemCertificatePinning;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/secure/SystemCertificatePinning;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/network/secure/SystemCertificatePinning;->a:Lcom/samsung/android/app/music/network/secure/SystemCertificatePinning;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljavax/net/ssl/SSLContext;
    .locals 2

    .line 41
    new-instance v0, Lcom/samsung/android/app/music/network/secure/SystemCertificatePinning$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/secure/SystemCertificatePinning$1;-><init>(Lcom/samsung/android/app/music/network/secure/SystemCertificatePinning;)V

    new-instance v1, Lcom/samsung/android/app/music/network/secure/SystemCertificatePinning$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/secure/SystemCertificatePinning$2;-><init>(Lcom/samsung/android/app/music/network/secure/SystemCertificatePinning;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/PerformanceCheckerKt;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public c()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
