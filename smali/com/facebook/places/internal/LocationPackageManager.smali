.class public Lcom/facebook/places/internal/LocationPackageManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/places/internal/LocationPackageManager$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationPackageManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/places/internal/LocationScanner;Lcom/facebook/places/internal/LocationPackageRequestParams;)Ljava/util/concurrent/FutureTask;
    .locals 0

    .line 39
    invoke-static {p0, p1}, Lcom/facebook/places/internal/LocationPackageManager;->newLocationScanFuture(Lcom/facebook/places/internal/LocationScanner;Lcom/facebook/places/internal/LocationPackageRequestParams;)Ljava/util/concurrent/FutureTask;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/facebook/places/internal/LocationPackageRequestParams;)Ljava/util/concurrent/FutureTask;
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/facebook/places/internal/LocationPackageManager;->newWifiScanFuture(Lcom/facebook/places/internal/LocationPackageRequestParams;)Ljava/util/concurrent/FutureTask;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/facebook/places/internal/LocationPackageRequestParams;)Ljava/util/concurrent/FutureTask;
    .locals 0

    .line 39
    invoke-static {p0}, Lcom/facebook/places/internal/LocationPackageManager;->newBluetoothScanFuture(Lcom/facebook/places/internal/LocationPackageRequestParams;)Ljava/util/concurrent/FutureTask;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 39
    invoke-static {p0, p1}, Lcom/facebook/places/internal/LocationPackageManager;->logException(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static logException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 233
    invoke-static {}, Lcom/facebook/FacebookSdk;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LocationPackageManager"

    .line 234
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private static newBluetoothScanFuture(Lcom/facebook/places/internal/LocationPackageRequestParams;)Ljava/util/concurrent/FutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/places/internal/LocationPackageRequestParams;",
            ")",
            "Ljava/util/concurrent/FutureTask<",
            "Lcom/facebook/places/internal/LocationPackage;",
            ">;"
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/facebook/places/internal/LocationPackageManager$3;

    invoke-direct {v1, p0}, Lcom/facebook/places/internal/LocationPackageManager$3;-><init>(Lcom/facebook/places/internal/LocationPackageRequestParams;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method private static newLocationScanFuture(Lcom/facebook/places/internal/LocationScanner;Lcom/facebook/places/internal/LocationPackageRequestParams;)Ljava/util/concurrent/FutureTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/places/internal/LocationScanner;",
            "Lcom/facebook/places/internal/LocationPackageRequestParams;",
            ")",
            "Ljava/util/concurrent/FutureTask<",
            "Lcom/facebook/places/internal/LocationPackage;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance p1, Ljava/util/concurrent/FutureTask;

    new-instance v0, Lcom/facebook/places/internal/LocationPackageManager$2;

    invoke-direct {v0, p0}, Lcom/facebook/places/internal/LocationPackageManager$2;-><init>(Lcom/facebook/places/internal/LocationScanner;)V

    invoke-direct {p1, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object p1
.end method

.method private static newWifiScanFuture(Lcom/facebook/places/internal/LocationPackageRequestParams;)Ljava/util/concurrent/FutureTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/places/internal/LocationPackageRequestParams;",
            ")",
            "Ljava/util/concurrent/FutureTask<",
            "Lcom/facebook/places/internal/LocationPackage;",
            ">;"
        }
    .end annotation

    .line 207
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/facebook/places/internal/LocationPackageManager$4;

    invoke-direct {v1, p0}, Lcom/facebook/places/internal/LocationPackageManager$4;-><init>(Lcom/facebook/places/internal/LocationPackageRequestParams;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public static requestLocationPackage(Lcom/facebook/places/internal/LocationPackageRequestParams;Lcom/facebook/places/internal/LocationPackageManager$Listener;)V
    .locals 2

    .line 60
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/places/internal/LocationPackageManager$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/places/internal/LocationPackageManager$1;-><init>(Lcom/facebook/places/internal/LocationPackageRequestParams;Lcom/facebook/places/internal/LocationPackageManager$Listener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
