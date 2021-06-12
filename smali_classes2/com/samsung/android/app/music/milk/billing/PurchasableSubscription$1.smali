.class final Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;
    .locals 1

    .line 64
    new-instance v0, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;
    .locals 0

    .line 68
    new-array p1, p1, [Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription$1;->a(Landroid/os/Parcel;)Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription$1;->a(I)[Lcom/samsung/android/app/music/milk/billing/PurchasableSubscription;

    move-result-object p1

    return-object p1
.end method
