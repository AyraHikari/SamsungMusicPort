.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel$CREATOR;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CREATOR"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel$CREATOR;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;
    .locals 1

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel$CREATOR;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;
    .locals 0

    .line 40
    new-array p1, p1, [Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel$CREATOR;->newArray(I)[Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/PlayerParcel;

    move-result-object p1

    return-object p1
.end method
