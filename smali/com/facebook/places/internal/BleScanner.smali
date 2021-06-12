.class public interface abstract Lcom/facebook/places/internal/BleScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getErrorCode()I
.end method

.method public abstract getScanResults()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/places/internal/BluetoothScanResult;",
            ">;"
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

.method public abstract startScanning()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation
.end method

.method public abstract stopScanning()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/places/internal/ScannerException;
        }
    .end annotation
.end method
