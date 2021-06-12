.class final Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;
    .locals 1

    .line 68
    new-instance v0, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;
    .locals 0

    .line 73
    new-array p1, p1, [Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData$1;->a(Landroid/os/Parcel;)Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData$1;->a(I)[Lcom/samsung/android/sdk/ppmt/data/DataSender$UpdateData;

    move-result-object p1

    return-object p1
.end method
