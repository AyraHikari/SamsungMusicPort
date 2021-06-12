.class Lcom/sec/android/app/billing/helper/ProductInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/billing/helper/ProductInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/ProductInfo;
    .locals 0

    .line 45
    invoke-static {p1}, Lcom/sec/android/app/billing/helper/ProductInfo;->readFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/ProductInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/billing/helper/ProductInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/ProductInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/sec/android/app/billing/helper/ProductInfo;
    .locals 0

    .line 48
    new-array p1, p1, [Lcom/sec/android/app/billing/helper/ProductInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/billing/helper/ProductInfo$1;->newArray(I)[Lcom/sec/android/app/billing/helper/ProductInfo;

    move-result-object p1

    return-object p1
.end method
