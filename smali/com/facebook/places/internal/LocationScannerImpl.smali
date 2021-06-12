.class public Lcom/facebook/places/internal/LocationScannerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;
.implements Lcom/facebook/places/internal/LocationScanner;


# static fields
.field private static final MIN_DISTANCE_BETWEEN_UPDATES:F = 0.0f

.field private static final MIN_TIME_BETWEEN_UPDATES:J = 0x64L


# instance fields
.field private context:Landroid/content/Context;

.field private enabledProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private freshLocation:Landroid/location/Location;

.field private locationManager:Landroid/location/LocationManager;

.field private params:Lcom/facebook/places/internal/LocationPackageRequestParams;

.field private final scanLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/places/internal/LocationPackageRequestParams;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->scanLock:Ljava/lang/Object;

    .line 56
    iput-object p1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->context:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/facebook/places/internal/LocationScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    const-string p2, "location"

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->locationManager:Landroid/location/LocationManager;

    return-void
.end method

.method private getFreshLocation()Landroid/location/Location;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->freshLocation:Landroid/location/Location;

    .line 105
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "LocationScanner"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 107
    :try_start_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 108
    iget-object v1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->enabledProviders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .line 109
    iget-object v3, p0, Lcom/facebook/places/internal/LocationScannerImpl;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v5, 0x64

    const/4 v7, 0x0

    .line 114
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    move-object v8, p0

    .line 109
    invoke-virtual/range {v3 .. v9}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_0

    .line 117
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->scanLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    :try_start_2
    iget-object v2, p0, Lcom/facebook/places/internal/LocationScannerImpl;->scanLock:Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/places/internal/LocationScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v3}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getLocationRequestTimeoutMs()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 119
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    :catch_0
    :goto_1
    iget-object v1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v1, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 125
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 128
    iget-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->freshLocation:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->freshLocation:Landroid/location/Location;

    return-object v0

    .line 129
    :cond_1
    new-instance v0, Lcom/facebook/places/internal/ScannerException;

    sget-object v1, Lcom/facebook/places/internal/ScannerException$Type;->TIMEOUT:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v0, v1}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v0

    :catchall_1
    move-exception v1

    .line 124
    iget-object v2, p0, Lcom/facebook/places/internal/LocationScannerImpl;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 125
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 126
    throw v1
.end method

.method private getLastLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 85
    iget-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v0}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getLastLocationMaxAgeMs()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getLocation()Landroid/location/Location;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->enabledProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 95
    invoke-direct {p0, v1}, Lcom/facebook/places/internal/LocationScannerImpl;->getLastLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 100
    :cond_1
    invoke-direct {p0}, Lcom/facebook/places/internal/LocationScannerImpl;->getFreshLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public initAndCheckEligibility()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/internal/Validate;->hasLocationPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v1}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getLocationProviders()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->enabledProviders:Ljava/util/List;

    .line 69
    iget-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v0}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getLocationProviders()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 70
    iget-object v4, p0, Lcom/facebook/places/internal/LocationScannerImpl;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v4, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    iget-object v4, p0, Lcom/facebook/places/internal/LocationScannerImpl;->enabledProviders:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->enabledProviders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 76
    :cond_2
    new-instance v0, Lcom/facebook/places/internal/ScannerException;

    sget-object v1, Lcom/facebook/places/internal/ScannerException$Type;->DISABLED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v0, v1}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v0

    .line 65
    :cond_3
    new-instance v0, Lcom/facebook/places/internal/ScannerException;

    sget-object v1, Lcom/facebook/places/internal/ScannerException$Type;->PERMISSION_DENIED:Lcom/facebook/places/internal/ScannerException$Type;

    invoke-direct {v0, v1}, Lcom/facebook/places/internal/ScannerException;-><init>(Lcom/facebook/places/internal/ScannerException$Type;)V

    throw v0
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->freshLocation:Landroid/location/Location;

    if-nez v0, :cond_0

    .line 137
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    iget-object v1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->params:Lcom/facebook/places/internal/LocationPackageRequestParams;

    invoke-virtual {v1}, Lcom/facebook/places/internal/LocationPackageRequestParams;->getLocationMaxAccuracyMeters()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/facebook/places/internal/LocationScannerImpl;->scanLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_0
    iput-object p1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->freshLocation:Landroid/location/Location;

    .line 140
    iget-object p1, p0, Lcom/facebook/places/internal/LocationScannerImpl;->scanLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 141
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method
