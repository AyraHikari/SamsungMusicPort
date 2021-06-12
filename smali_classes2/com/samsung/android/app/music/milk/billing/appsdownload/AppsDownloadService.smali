.class public Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;
    }
.end annotation


# instance fields
.field protected a:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;

.field b:Landroid/os/Handler;

.field private c:Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;

.field private d:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->b:Landroid/os/Handler;

    .line 24
    new-instance v0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$1;

    const-string v1, "com.sec.android.app.samsungapps.downloadservice.SamsungAppsDownloadService"

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$1;-><init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->a:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;)Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->c:Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;

    return-object p1
.end method

.method private a()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->d:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->d:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;->a()V

    :cond_0
    return-void
.end method

.method private a(JJ)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->d:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->d:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;->a(JJ)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->d()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;JJ)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->a(JJ)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->d:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->d:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;->b()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->a()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->c(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->c:Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;

    new-instance v1, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$3;-><init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;)V

    invoke-interface {v0, p1, v1}, Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadService;->downloadByPackageName(Ljava/lang/String;Lcom/sec/android/app/samsungapps/downloadservice/aidl/IDownloadResultCallback;)V

    return-void
.end method

.method private c()V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->d:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->d:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;->c()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->b()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->d:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->d:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->d:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->d:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    invoke-interface {v0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;->d()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->c()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->d:Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$IDownloadServiceAPIObserver;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;->a:Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;

    new-instance v1, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService$2;-><init>(Lcom/samsung/android/app/music/milk/billing/appsdownload/AppsDownloadService;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager;->a(Lcom/samsung/android/app/music/milk/billing/appsdownload/ServiceConnectionManager$IServiceBinderResult;)V

    return-void
.end method
