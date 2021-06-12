.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator<",
        "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;
    .locals 2

    .line 249
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice$1;)V

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;
    .locals 2

    .line 254
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 247
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice$2;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0

    .line 247
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice$2;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;
    .locals 0

    .line 258
    new-array p1, p1, [Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 247
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice$2;->newArray(I)[Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;

    move-result-object p1

    return-object p1
.end method
