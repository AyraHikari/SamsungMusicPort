.class public Lcom/samsung/android/library/beaconmanager/BleScanFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/library/beaconmanager/BleScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static RSSI_THRESHOLD_NONE:I = 0x0

.field public static SCAN_INTERVAL_LOW_LATENCY:I = 0x3

.field public static SCAN_INTERVAL_LOW_POWER:I = 0x1

.field public static SCAN_INTERVAL_NORMAL:I = 0x2

.field public static final SCREEN_OFF_FILTER_FLAG:I = 0x2

.field public static final SCREEN_ON_FILTER_FLAG:I = 0x1


# instance fields
.field private mName:Ljava/lang/String;

.field private mRssiThreshold:I

.field private mScanInterval:I

.field private mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

.field private mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter$1;

    invoke-direct {v0}, Lcom/samsung/android/library/beaconmanager/BleScanFilter$1;-><init>()V

    sput-object v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    const/16 v0, -0x3e7

    .line 31
    sput v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->RSSI_THRESHOLD_NONE:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->SCAN_INTERVAL_NORMAL:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScanInterval:I

    .line 36
    sget v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->RSSI_THRESHOLD_NONE:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mRssiThreshold:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mName:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 69
    sget-object v1, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/ScanFilter;

    iput-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    :cond_0
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 72
    sget-object v0, Landroid/bluetooth/le/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanFilter;

    iput-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    .line 74
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScanInterval:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mRssiThreshold:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/bluetooth/le/ScanFilter;Landroid/bluetooth/le/ScanFilter;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->SCAN_INTERVAL_NORMAL:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScanInterval:I

    .line 36
    sget v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->RSSI_THRESHOLD_NONE:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mRssiThreshold:I

    .line 57
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mName:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    .line 59
    iput-object p3, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    .line 60
    sget p1, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->SCAN_INTERVAL_NORMAL:I

    iput p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScanInterval:I

    .line 61
    sget p1, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->RSSI_THRESHOLD_NONE:I

    iput p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mRssiThreshold:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/bluetooth/le/ScanFilter;Landroid/bluetooth/le/ScanFilter;I)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->SCAN_INTERVAL_NORMAL:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScanInterval:I

    .line 36
    sget v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->RSSI_THRESHOLD_NONE:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mRssiThreshold:I

    .line 49
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mName:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    .line 51
    iput-object p3, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    .line 52
    iput p4, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScanInterval:I

    .line 53
    sget p1, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->RSSI_THRESHOLD_NONE:I

    iput p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mRssiThreshold:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/bluetooth/le/ScanFilter;Landroid/bluetooth/le/ScanFilter;II)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    sget v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->SCAN_INTERVAL_NORMAL:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScanInterval:I

    .line 36
    sget v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->RSSI_THRESHOLD_NONE:I

    iput v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mRssiThreshold:I

    .line 40
    iput-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mName:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    .line 42
    iput-object p3, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    .line 43
    iput p4, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScanInterval:I

    .line 44
    iput p5, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mRssiThreshold:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 115
    instance-of v0, p1, Lcom/samsung/android/library/beaconmanager/BleScanFilter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 118
    :cond_0
    check-cast p1, Lcom/samsung/android/library/beaconmanager/BleScanFilter;

    .line 120
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p1, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    if-eqz v0, :cond_2

    return v1

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    iget-object v2, p1, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v0, v2}, Landroid/bluetooth/le/ScanFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    if-nez v0, :cond_3

    .line 131
    iget-object p1, p1, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    if-eqz p1, :cond_4

    return v1

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    iget-object p1, p1, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/le/ScanFilter;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRssiThreshold()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mRssiThreshold:I

    return v0
.end method

.method public getScanInterval()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScanInterval:I

    return v0
.end method

.method public getScreenOffFilter()Landroid/bluetooth/le/ScanFilter;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    return-object v0
.end method

.method public getScreenOnFilter()Landroid/bluetooth/le/ScanFilter;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    return-object v0
.end method

.method public matches(ZLandroid/bluetooth/le/ScanResult;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 93
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {p1, p2}, Landroid/bluetooth/le/ScanFilter;->matches(Landroid/bluetooth/le/ScanResult;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :catch_0
    move-exception p1

    goto :goto_0

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {p1, p2}, Landroid/bluetooth/le/ScanFilter;->matches(Landroid/bluetooth/le/ScanResult;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return v0

    .line 100
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 145
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Name:"

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ",ScreenOnFilter:"

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    if-nez v1, :cond_0

    const-string v1, "Null"

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanFilter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    const-string v1, ",ScreenOffFilter:"

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    if-nez v1, :cond_1

    const-string v1, "Null"

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanFilter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v1, ",ScanInterval:"

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScanInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ",Threshold:"

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mRssiThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 172
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 178
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 181
    :cond_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    .line 183
    iget-object v1, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOnFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v1, p1, p2}, Landroid/bluetooth/le/ScanFilter;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_2
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScreenOffFilter:Landroid/bluetooth/le/ScanFilter;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/le/ScanFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 188
    :cond_3
    iget p2, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mScanInterval:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget p2, p0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;->mRssiThreshold:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
