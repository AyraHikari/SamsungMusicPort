.class public interface abstract Lcom/facebook/places/internal/LocationScanner;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getLocation()Landroid/location/Location;
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
