.class final Lcom/samsung/android/app/music/advertise/AdPlayType$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/advertise/AdPlayType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/app/music/advertise/AdPlayType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/samsung/android/app/music/advertise/AdPlayType;
    .locals 0

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/advertise/AdPlayType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/advertise/AdPlayType;

    move-result-object p1

    return-object p1
.end method

.method public a(I)[Lcom/samsung/android/app/music/advertise/AdPlayType;
    .locals 0

    .line 36
    new-array p1, p1, [Lcom/samsung/android/app/music/advertise/AdPlayType;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/advertise/AdPlayType$1;->a(Landroid/os/Parcel;)Lcom/samsung/android/app/music/advertise/AdPlayType;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 28
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/advertise/AdPlayType$1;->a(I)[Lcom/samsung/android/app/music/advertise/AdPlayType;

    move-result-object p1

    return-object p1
.end method
