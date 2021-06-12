.class final Lcom/facebook/places/internal/LocationPackageManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/places/internal/LocationPackageManager;->requestLocationPackage(Lcom/facebook/places/internal/LocationPackageRequestParams;Lcom/facebook/places/internal/LocationPackageManager$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/facebook/places/internal/LocationPackageManager$Listener;

.field final synthetic val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;


# direct methods
.method constructor <init>(Lcom/facebook/places/internal/LocationPackageRequestParams;Lcom/facebook/places/internal/LocationPackageManager$Listener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/facebook/places/internal/LocationPackageManager$1;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    iput-object p2, p0, Lcom/facebook/places/internal/LocationPackageManager$1;->val$listener:Lcom/facebook/places/internal/LocationPackageManager$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 63
    new-instance v0, Lcom/facebook/places/internal/LocationPackage;

    invoke-direct {v0}, Lcom/facebook/places/internal/LocationPackage;-><init>()V

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/facebook/places/internal/LocationPackageManager$1;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v1}, Lcom/facebook/places/internal/LocationPackageRequestParams;->isLocationScanEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 73
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/facebook/places/internal/LocationPackageManager$1;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    .line 72
    invoke-static {v1, v3}, Lcom/facebook/places/internal/ScannerFactory;->newLocationScanner(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)Lcom/facebook/places/internal/LocationScanner;

    move-result-object v1

    .line 78
    invoke-interface {v1}, Lcom/facebook/places/internal/LocationScanner;->initAndCheckEligibility()V

    .line 80
    iget-object v3, p0, Lcom/facebook/places/internal/LocationPackageManager$1;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-static {v1, v3}, Lcom/facebook/places/internal/LocationPackageManager;->access$000(Lcom/facebook/places/internal/LocationScanner;Lcom/facebook/places/internal/LocationPackageRequestParams;)Ljava/util/concurrent/FutureTask;

    move-result-object v1

    .line 81
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 84
    :goto_0
    iget-object v3, p0, Lcom/facebook/places/internal/LocationPackageManager$1;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v3}, Lcom/facebook/places/internal/LocationPackageRequestParams;->isWifiScanEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    iget-object v3, p0, Lcom/facebook/places/internal/LocationPackageManager$1;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-static {v3}, Lcom/facebook/places/internal/LocationPackageManager;->access$100(Lcom/facebook/places/internal/LocationPackageRequestParams;)Ljava/util/concurrent/FutureTask;

    move-result-object v3

    .line 86
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    move-object v3, v2

    .line 88
    :goto_1
    iget-object v4, p0, Lcom/facebook/places/internal/LocationPackageManager$1;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v4}, Lcom/facebook/places/internal/LocationPackageRequestParams;->isBluetoothScanEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 89
    iget-object v2, p0, Lcom/facebook/places/internal/LocationPackageManager$1;->val$requestParams:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-static {v2}, Lcom/facebook/places/internal/LocationPackageManager;->access$200(Lcom/facebook/places/internal/LocationPackageRequestParams;)Ljava/util/concurrent/FutureTask;

    move-result-object v2

    .line 90
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/facebook/places/internal/ScannerException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_2
    if-eqz v2, :cond_3

    .line 96
    :try_start_1
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/places/internal/LocationPackage;

    .line 97
    iget-object v4, v2, Lcom/facebook/places/internal/LocationPackage;->ambientBluetoothLe:Ljava/util/List;

    iput-object v4, v0, Lcom/facebook/places/internal/LocationPackage;->ambientBluetoothLe:Ljava/util/List;

    .line 98
    iget-boolean v2, v2, Lcom/facebook/places/internal/LocationPackage;->isBluetoothScanningEnabled:Z

    iput-boolean v2, v0, Lcom/facebook/places/internal/LocationPackage;->isBluetoothScanningEnabled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/facebook/places/internal/ScannerException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    const-string v4, "Exception scanning for bluetooth beacons"

    .line 101
    invoke-static {v4, v2}, Lcom/facebook/places/internal/LocationPackageManager;->access$300(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lcom/facebook/places/internal/ScannerException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_3
    :goto_2
    if-eqz v3, :cond_4

    .line 108
    :try_start_3
    invoke-virtual {v3}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/places/internal/LocationPackage;

    .line 109
    iget-boolean v3, v2, Lcom/facebook/places/internal/LocationPackage;->isWifiScanningEnabled:Z

    iput-boolean v3, v0, Lcom/facebook/places/internal/LocationPackage;->isWifiScanningEnabled:Z

    .line 111
    iget-object v3, v2, Lcom/facebook/places/internal/LocationPackage;->connectedWifi:Lcom/facebook/places/internal/WifiScanResult;

    iput-object v3, v0, Lcom/facebook/places/internal/LocationPackage;->connectedWifi:Lcom/facebook/places/internal/WifiScanResult;

    .line 112
    iget-object v2, v2, Lcom/facebook/places/internal/LocationPackage;->ambientWifi:Ljava/util/List;

    iput-object v2, v0, Lcom/facebook/places/internal/LocationPackage;->ambientWifi:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/facebook/places/internal/ScannerException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_4
    const-string v3, "Exception scanning for wifi access points"

    .line 114
    invoke-static {v3, v2}, Lcom/facebook/places/internal/LocationPackageManager;->access$300(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Lcom/facebook/places/internal/ScannerException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    .line 121
    :try_start_5
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/places/internal/LocationPackage;

    .line 122
    iget-object v2, v1, Lcom/facebook/places/internal/LocationPackage;->locationError:Lcom/facebook/places/internal/ScannerException$Type;

    iput-object v2, v0, Lcom/facebook/places/internal/LocationPackage;->locationError:Lcom/facebook/places/internal/ScannerException$Type;

    .line 123
    iget-object v1, v1, Lcom/facebook/places/internal/LocationPackage;->location:Landroid/location/Location;

    iput-object v1, v0, Lcom/facebook/places/internal/LocationPackage;->location:Landroid/location/Location;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/facebook/places/internal/ScannerException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_2
    move-exception v1

    :try_start_6
    const-string v2, "Exception getting location"

    .line 125
    invoke-static {v2, v1}, Lcom/facebook/places/internal/LocationPackageManager;->access$300(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Lcom/facebook/places/internal/ScannerException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception v1

    const-string v2, "Exception requesting a location package"

    .line 132
    invoke-static {v2, v1}, Lcom/facebook/places/internal/LocationPackageManager;->access$300(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_4
    move-exception v1

    const-string v2, "Exception scanning for locations"

    .line 129
    invoke-static {v2, v1}, Lcom/facebook/places/internal/LocationPackageManager;->access$300(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 130
    iget-object v1, v1, Lcom/facebook/places/internal/ScannerException;->type:Lcom/facebook/places/internal/ScannerException$Type;

    iput-object v1, v0, Lcom/facebook/places/internal/LocationPackage;->locationError:Lcom/facebook/places/internal/ScannerException$Type;

    .line 134
    :cond_5
    :goto_4
    iget-object v1, p0, Lcom/facebook/places/internal/LocationPackageManager$1;->val$listener:Lcom/facebook/places/internal/LocationPackageManager$Listener;

    invoke-interface {v1, v0}, Lcom/facebook/places/internal/LocationPackageManager$Listener;->onLocationPackage(Lcom/facebook/places/internal/LocationPackage;)V

    return-void
.end method
