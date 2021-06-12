.class final Lcom/samsung/android/app/music/model/purchase/PricingType$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/model/purchase/PricingType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/app/music/model/purchase/PricingType;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/model/purchase/PricingType;
    .locals 2

    .line 65
    new-instance v0, Lcom/samsung/android/app/music/model/purchase/PricingType;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/app/music/model/purchase/PricingType;-><init>(Landroid/os/Parcel;Lcom/samsung/android/app/music/model/purchase/PricingType$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/model/purchase/PricingType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/music/model/purchase/PricingType;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/app/music/model/purchase/PricingType;
    .locals 0

    .line 70
    new-array p1, p1, [Lcom/samsung/android/app/music/model/purchase/PricingType;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/model/purchase/PricingType$1;->newArray(I)[Lcom/samsung/android/app/music/model/purchase/PricingType;

    move-result-object p1

    return-object p1
.end method
