.class Lcom/samsung/android/castingfindermanager/DlnaAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;,
        Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaStatusListener;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = "DlnaAdapter"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;

.field private d:I

.field private e:Lcom/samsung/android/allshare/media/MediaServiceProvider;

.field private f:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

.field private g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/castingfindermanager/Dlna;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Z

.field private final k:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

.field private l:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput v0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->d:I

    .line 247
    new-instance v1, Lcom/samsung/android/castingfindermanager/DlnaAdapter$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter$1;-><init>(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)V

    iput-object v1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->k:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    .line 256
    new-instance v1, Lcom/samsung/android/castingfindermanager/DlnaAdapter$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter$2;-><init>(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)V

    iput-object v1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->l:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    .line 53
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->b:Landroid/content/Context;

    .line 54
    new-instance p1, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v1}, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;-><init>(Lcom/samsung/android/castingfindermanager/DlnaAdapter;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->c:Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;

    .line 55
    iput v0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->d:I

    .line 56
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->g:Ljava/util/ArrayList;

    .line 57
    iput v0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->h:I

    .line 58
    iput-boolean v0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->j:Z

    .line 59
    sget-object p1, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initialize, allShareFlag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->d:I

    invoke-direct {p0, v1}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/castingfindermanager/DlnaAdapter;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->h:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/castingfindermanager/DlnaAdapter;Lcom/samsung/android/allshare/media/MediaDeviceFinder;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->f:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/castingfindermanager/DlnaAdapter;Lcom/samsung/android/allshare/media/MediaServiceProvider;)Lcom/samsung/android/allshare/media/MediaServiceProvider;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->e:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->c:Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;

    return-object p0
.end method

.method private a(Lcom/samsung/android/castingfindermanager/Dlna;)Z
    .locals 6

    .line 204
    invoke-direct {p0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->f()I

    move-result v0

    .line 205
    invoke-static {}, Lcom/samsung/android/castingfindermanager/Utils;->k()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->h:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 206
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a(Lcom/samsung/android/castingfindermanager/Dlna;I)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 207
    :cond_2
    sget-object v3, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSupportMirroring : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", deviceName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/castingfindermanager/Dlna;->f()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", (isP2pPendingCase = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " , frequency = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private a(Lcom/samsung/android/castingfindermanager/Dlna;I)Z
    .locals 1

    .line 212
    invoke-virtual {p1}, Lcom/samsung/android/castingfindermanager/Dlna;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/castingfindermanager/Dlna;->d()I

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->j:Z

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Lcom/samsung/android/allshare/media/MediaServiceProvider;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->e:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    return-object p0
.end method

.method private c(I)Ljava/lang/String;
    .locals 2

    .line 216
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_0

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[AVPLAYER]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    and-int/lit8 v1, p1, 0x20

    if-eqz v1, :cond_1

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[IMAGEVIEWER]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[MIRRORING_SINK]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_3

    .line 227
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[MIRRORING_SOURCE]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_4

    const-string v0, "[NONE]"

    :cond_4
    return-object v0
.end method

.method static synthetic d(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->f:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->k:Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    return-object p0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a:Ljava/lang/String;

    return-object v0
.end method

.method private f()I
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->b:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 234
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method static synthetic f(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic g(Lcom/samsung/android/castingfindermanager/DlnaAdapter;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->d:I

    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 93
    sget-object v0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a:Ljava/lang/String;

    const-string v1, "unregisterDlnaStatusListener"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->c:Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;

    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;->a()V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 73
    iget v0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->d:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->d:I

    .line 74
    sget-object p1, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addFlag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->d:I

    invoke-direct {p0, v1}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Landroid/os/Handler;)V
    .locals 2

    .line 63
    sget-object v0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a:Ljava/lang/String;

    const-string v1, "setHandler"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;-><init>(Lcom/samsung/android/castingfindermanager/DlnaAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->c:Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;

    return-void
.end method

.method public a(Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaStatusListener;)V
    .locals 2

    .line 87
    sget-object v0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a:Ljava/lang/String;

    const-string v1, "registerDlnaStatusListener"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->c:Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;->a(Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaStatusListener;)V

    .line 89
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->c:Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/samsung/android/castingfindermanager/DlnaAdapter$DlnaHandler;->a(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 68
    sget-object v0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPackageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->i:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 4

    .line 98
    sget-object v0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a:Ljava/lang/String;

    const-string v1, "connectDlnaService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->l:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    const-string v2, "com.samsung.android.allshare.media"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/allshare/ServiceConnector;->createServiceProvider(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->j:Z

    .line 102
    sget-object v0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a:Ljava/lang/String;

    const-string v1, "ServiceConnector.createServiceProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 108
    sget-object v1, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectAllShareFW - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    .line 106
    sget-object v1, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectAllShareFW - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    .line 104
    sget-object v1, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectAllShareFW - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 78
    iget v0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->d:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->d:I

    .line 79
    sget-object p1, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeFlag : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->d:I

    invoke-direct {p0, v1}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public c()V
    .locals 3

    .line 113
    sget-object v0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a:Ljava/lang/String;

    const-string v1, "disconnectDlanService"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->f:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->f:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->f:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->f:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v1, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->e:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->e:Lcom/samsung/android/allshare/media/MediaServiceProvider;

    invoke-static {v0}, Lcom/samsung/android/allshare/ServiceConnector;->deleteServiceProvider(Lcom/samsung/android/allshare/ServiceProvider;)V

    :cond_1
    const/4 v0, 0x0

    .line 124
    iput-boolean v0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->j:Z

    return-void
.end method

.method public d()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/castingfindermanager/Dlna;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->f:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    if-eqz v0, :cond_11

    .line 129
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 132
    iget v1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->d:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->f:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v4, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v1, v4}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device;

    .line 134
    invoke-virtual {v4}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/castingfindermanager/Dlna;

    invoke-direct {v6, v4}, Lcom/samsung/android/castingfindermanager/Dlna;-><init>(Lcom/samsung/android/allshare/Device;)V

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 136
    :cond_0
    iget v1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->d:I

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->f:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v4, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_SCREENSHARING:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v1, v4}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/allshare/Device;

    .line 138
    invoke-virtual {v4}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/castingfindermanager/Dlna;

    invoke-direct {v6, v4, v3}, Lcom/samsung/android/castingfindermanager/Dlna;-><init>(Lcom/samsung/android/allshare/Device;I)V

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 143
    :cond_1
    iget v1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->d:I

    and-int/lit8 v1, v1, 0x10

    const/4 v4, 0x1

    if-eqz v1, :cond_b

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    iget-object v5, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->f:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v6, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v5, v6}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v5

    .line 146
    iget-object v6, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->i:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x7e39689b

    const v9, -0xc3b2db1

    const v10, -0x46aeb60d

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x2

    if-eq v7, v10, :cond_4

    if-eq v7, v9, :cond_3

    if-eq v7, v8, :cond_2

    goto :goto_2

    :cond_2
    const-string v7, "com.samsung.android.video"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    const-string v7, "com.sec.android.app.music"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_3

    :cond_4
    const-string v7, "com.samsung.android.app.music.chn"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x2

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v6, -0x1

    :goto_3
    packed-switch v6, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    const-string v1, "AVPLAYER_AUDIO"

    .line 152
    invoke-static {v5, v1}, Lcom/samsung/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_4

    :pswitch_1
    const-string v1, "AVPLAYER_VIDEO"

    .line 148
    invoke-static {v5, v1}, Lcom/samsung/android/allshare/extension/DeviceChecker;->getDeviceCheckedList(Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 155
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/allshare/Device;

    .line 156
    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 157
    new-instance v6, Lcom/samsung/android/castingfindermanager/Dlna;

    invoke-direct {v6, v5}, Lcom/samsung/android/castingfindermanager/Dlna;-><init>(Lcom/samsung/android/allshare/Device;)V

    .line 158
    iget-object v7, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->i:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v14

    if-eq v14, v10, :cond_9

    if-eq v14, v9, :cond_8

    if-eq v14, v8, :cond_7

    goto :goto_6

    :cond_7
    const-string v14, "com.samsung.android.video"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x0

    goto :goto_7

    :cond_8
    const-string v14, "com.sec.android.app.music"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x1

    goto :goto_7

    :cond_9
    const-string v14, "com.samsung.android.app.music.chn"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v7, 0x2

    goto :goto_7

    :cond_a
    :goto_6
    const/4 v7, -0x1

    :goto_7
    const/16 v14, 0x14

    packed-switch v7, :pswitch_data_1

    goto :goto_8

    :pswitch_2
    const/4 v7, 0x3

    .line 168
    invoke-virtual {v6, v7}, Lcom/samsung/android/castingfindermanager/Dlna;->b(I)V

    .line 169
    invoke-virtual {v6, v14}, Lcom/samsung/android/castingfindermanager/Dlna;->a(I)V

    goto :goto_8

    .line 164
    :pswitch_3
    invoke-virtual {v6, v13}, Lcom/samsung/android/castingfindermanager/Dlna;->b(I)V

    .line 165
    invoke-virtual {v6, v14}, Lcom/samsung/android/castingfindermanager/Dlna;->a(I)V

    goto :goto_8

    .line 160
    :pswitch_4
    invoke-virtual {v6, v12}, Lcom/samsung/android/castingfindermanager/Dlna;->b(I)V

    const/16 v7, 0x15

    .line 161
    invoke-virtual {v6, v7}, Lcom/samsung/android/castingfindermanager/Dlna;->a(I)V

    .line 172
    :goto_8
    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 175
    :cond_b
    iget v1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->d:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_d

    .line 176
    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->f:Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    sget-object v5, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_IMAGEVIEWER:Lcom/samsung/android/allshare/Device$DeviceType;

    invoke-virtual {v1, v5}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->getDevices(Lcom/samsung/android/allshare/Device$DeviceType;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/allshare/Device;

    .line 177
    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 178
    new-instance v6, Lcom/samsung/android/castingfindermanager/Dlna;

    invoke-direct {v6, v5}, Lcom/samsung/android/castingfindermanager/Dlna;-><init>(Lcom/samsung/android/allshare/Device;)V

    .line 179
    invoke-virtual {v6, v4}, Lcom/samsung/android/castingfindermanager/Dlna;->b(I)V

    const/16 v7, 0x16

    .line 180
    invoke-virtual {v6, v7}, Lcom/samsung/android/castingfindermanager/Dlna;->a(I)V

    .line 181
    invoke-virtual {v5}, Lcom/samsung/android/allshare/Device;->getIPAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 187
    :cond_d
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 188
    :cond_e
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 189
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/castingfindermanager/Dlna;

    .line 190
    invoke-virtual {v4}, Lcom/samsung/android/castingfindermanager/Dlna;->g()I

    move-result v5

    if-eq v5, v2, :cond_f

    .line 191
    invoke-virtual {v4}, Lcom/samsung/android/castingfindermanager/Dlna;->g()I

    move-result v5

    if-ne v5, v3, :cond_e

    .line 192
    :cond_f
    invoke-direct {p0, v4}, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a(Lcom/samsung/android/castingfindermanager/Dlna;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 193
    sget-object v5, Lcom/samsung/android/castingfindermanager/DlnaAdapter;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove device "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/castingfindermanager/Dlna;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_10
    return-object v0

    .line 199
    :cond_11
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
