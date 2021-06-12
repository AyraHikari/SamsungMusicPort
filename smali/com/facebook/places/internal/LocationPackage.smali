.class public Lcom/facebook/places/internal/LocationPackage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ambientBluetoothLe:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/places/internal/BluetoothScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public ambientWifi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/places/internal/WifiScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public connectedWifi:Lcom/facebook/places/internal/WifiScanResult;

.field public isBluetoothScanningEnabled:Z

.field public isWifiScanningEnabled:Z

.field public location:Landroid/location/Location;

.field public locationError:Lcom/facebook/places/internal/ScannerException$Type;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
