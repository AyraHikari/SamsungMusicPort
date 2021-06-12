.class Lcom/sec/android/app/billing/helper/BillingServerInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/billing/helper/BillingServerInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/BillingServerInfo;
    .locals 0

    .line 27
    invoke-static {p1}, Lcom/sec/android/app/billing/helper/BillingServerInfo;->readFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/BillingServerInfo;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/billing/helper/BillingServerInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sec/android/app/billing/helper/BillingServerInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/sec/android/app/billing/helper/BillingServerInfo;
    .locals 0

    .line 30
    new-array p1, p1, [Lcom/sec/android/app/billing/helper/BillingServerInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/billing/helper/BillingServerInfo$1;->newArray(I)[Lcom/sec/android/app/billing/helper/BillingServerInfo;

    move-result-object p1

    return-object p1
.end method
