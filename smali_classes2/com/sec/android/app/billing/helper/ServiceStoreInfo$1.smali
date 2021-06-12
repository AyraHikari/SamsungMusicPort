.class Lcom/sec/android/app/billing/helper/ServiceStoreInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/billing/helper/ServiceStoreInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/ServiceStoreInfo;
    .locals 0

    .line 36
    invoke-static {p1}, Lcom/sec/android/app/billing/helper/ServiceStoreInfo;->readFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/ServiceStoreInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/billing/helper/ServiceStoreInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/ServiceStoreInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/sec/android/app/billing/helper/ServiceStoreInfo;
    .locals 0

    .line 39
    new-array p1, p1, [Lcom/sec/android/app/billing/helper/ServiceStoreInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/billing/helper/ServiceStoreInfo$1;->newArray(I)[Lcom/sec/android/app/billing/helper/ServiceStoreInfo;

    move-result-object p1

    return-object p1
.end method
