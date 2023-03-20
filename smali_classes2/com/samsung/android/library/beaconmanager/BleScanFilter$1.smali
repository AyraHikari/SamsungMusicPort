.class final Lcom/samsung/android/library/beaconmanager/BleScanFilter$1;
.super Ljava/lang/Object;
.source "BleScanFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/library/beaconmanager/BleScanFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/library/beaconmanager/BleScanFilter;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/library/beaconmanager/BleScanFilter;
    .locals 1

    .line 2
    new-instance v0, Lcom/samsung/android/library/beaconmanager/BleScanFilter;

    invoke-direct {v0, p1}, Lcom/samsung/android/library/beaconmanager/BleScanFilter;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/library/beaconmanager/BleScanFilter$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/library/beaconmanager/BleScanFilter;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/library/beaconmanager/BleScanFilter;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/samsung/android/library/beaconmanager/BleScanFilter;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/library/beaconmanager/BleScanFilter$1;->newArray(I)[Lcom/samsung/android/library/beaconmanager/BleScanFilter;

    move-result-object p1

    return-object p1
.end method
