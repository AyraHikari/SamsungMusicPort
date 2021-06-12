.class public interface abstract Lcom/facebook/places/internal/WifiScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getConnectedWifi()Lcom/facebook/places/internal/WifiScanResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation
.end method

.method public abstract getWifiScans()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/places/internal/WifiScanResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation
.end method

.method public abstract initAndCheckEligibility()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation
.end method

.method public abstract isWifiScanningEnabled()Z
.end method
