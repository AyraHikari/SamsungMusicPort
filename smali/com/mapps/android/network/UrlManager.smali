.class public Lcom/mapps/android/network/UrlManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static DOMAIN:Ljava/lang/String; = "https://mtag.mman.kr"

.field private static ISRELEASE:Z = true

.field private static SSPDOMAIN:Ljava/lang/String; = "https://ssp.meba.kr"

.field private static final TESTSSPURL:Ljava/lang/String; = "http://210.221.235.245"

.field private static final TESTURL:Ljava/lang/String; = "http://210.221.235.187"

.field private static final URL3D:Ljava/lang/String; = "/get_ad.mezzo"

.field private static final URLENDING:Ljava/lang/String; = "/flex.mezzo"

.field private static final URLIMGTAG:Ljava/lang/String; = "/sdk.mezzo"

.field private static final URLINTERSTITIAL:Ljava/lang/String; = "/sdkinter.mezzo"

.field private static final URLPKGCONF:Ljava/lang/String; = "/init_info.mezzo"

.field private static final URLPKGLIST:Ljava/lang/String; = "/pkg_ag_list.mezzo"

.field private static final URLREACHTAG:Ljava/lang/String; = "/mansdk.mezzo"

.field private static final URLSSP:Ljava/lang/String; = "/ssp.mezzo"

.field private static final URLVIDEO:Ljava/lang/String; = "/movie.mezzo"

.field private static instance:Lcom/mapps/android/network/UrlManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private domain(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 39
    sget-boolean p1, Lcom/mapps/android/network/UrlManager;->ISRELEASE:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/mapps/android/network/UrlManager;->getDOMAIN()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "http://210.221.235.187"

    :goto_0
    return-object p1
.end method

.method public static getDOMAIN()Ljava/lang/String;
    .locals 1

    .line 137
    sget-object v0, Lcom/mapps/android/network/UrlManager;->DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/mapps/android/network/UrlManager;
    .locals 1

    .line 23
    sget-object v0, Lcom/mapps/android/network/UrlManager;->instance:Lcom/mapps/android/network/UrlManager;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/mapps/android/network/UrlManager;

    invoke-direct {v0}, Lcom/mapps/android/network/UrlManager;-><init>()V

    sput-object v0, Lcom/mapps/android/network/UrlManager;->instance:Lcom/mapps/android/network/UrlManager;

    .line 26
    :cond_0
    sget-object v0, Lcom/mapps/android/network/UrlManager;->instance:Lcom/mapps/android/network/UrlManager;

    return-object v0
.end method

.method public static getOptInoutUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://www.mman.kr/Service/opt/opt_bridge?aid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mapps/android/share/ShareUtil;->getgoogleAdvertiseID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSSPDOMAIN()Ljava/lang/String;
    .locals 1

    .line 129
    sget-object v0, Lcom/mapps/android/network/UrlManager;->SSPDOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method public static setDOMAIN(Ljava/lang/String;)V
    .locals 0

    .line 141
    sput-object p0, Lcom/mapps/android/network/UrlManager;->DOMAIN:Ljava/lang/String;

    return-void
.end method

.method public static setSSPDOMAIN(Ljava/lang/String;)V
    .locals 0

    .line 133
    sput-object p0, Lcom/mapps/android/network/UrlManager;->SSPDOMAIN:Ljava/lang/String;

    return-void
.end method

.method private sspDomain(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 43
    sget-boolean p1, Lcom/mapps/android/network/UrlManager;->ISRELEASE:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/mapps/android/network/UrlManager;->getSSPDOMAIN()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "http://210.221.235.245"

    :goto_0
    return-object p1
.end method


# virtual methods
.method public url3D(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mapps/android/network/UrlManager;->domain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "/get_ad.mezzo"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public urlEnding(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mapps/android/network/UrlManager;->domain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "/flex.mezzo"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public urlImgBanner(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mapps/android/network/UrlManager;->domain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "/sdk.mezzo"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public urlInterstitial(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mapps/android/network/UrlManager;->domain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "/sdkinter.mezzo"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public urlPkgConf(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mapps/android/network/UrlManager;->domain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "/init_info.mezzo"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public urlPkgList(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mapps/android/network/UrlManager;->domain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "/pkg_ag_list.mezzo"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public urlReachBanner(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mapps/android/network/UrlManager;->domain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "/mansdk.mezzo"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public urlSSP(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mapps/android/network/UrlManager;->sspDomain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "/ssp.mezzo"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public urlVideo(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/mapps/android/network/UrlManager;->domain(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "/movie.mezzo"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
