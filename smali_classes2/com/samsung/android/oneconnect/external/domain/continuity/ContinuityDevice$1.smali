.class final Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuityDevice$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuityDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuityDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuityDevice;
    .locals 1

    .line 23
    new-instance v0, Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuityDevice;

    invoke-direct {v0, p1}, Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuityDevice;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuityDevice;
    .locals 0

    .line 28
    new-array p1, p1, [Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuityDevice;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuityDevice$1;->a(Landroid/os/Parcel;)Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuityDevice;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1}, Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuityDevice$1;->a(I)[Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuityDevice;

    move-result-object p1

    return-object p1
.end method
