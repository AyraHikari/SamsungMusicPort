.class public Lcom/facebook/places/internal/BluetoothScanResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public payload:Ljava/lang/String;

.field public rssi:I

.field public timestampNanos:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/facebook/places/internal/BluetoothScanResult;->payload:Ljava/lang/String;

    .line 62
    iput p2, p0, Lcom/facebook/places/internal/BluetoothScanResult;->rssi:I

    .line 63
    iput-wide p3, p0, Lcom/facebook/places/internal/BluetoothScanResult;->timestampNanos:J

    return-void
.end method
