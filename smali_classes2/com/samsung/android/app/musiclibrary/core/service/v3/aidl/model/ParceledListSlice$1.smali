.class Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice$1;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;

.field final synthetic val$N:I

.field final synthetic val$callFlags:I

.field final synthetic val$listElementClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;ILjava/lang/Class;I)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice$1;->val$N:I

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    iput p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice$1;->val$callFlags:I

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 210
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 212
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 216
    :goto_0
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice$1;->val$N:I

    if-ge p1, p2, :cond_1

    invoke-virtual {p3}, Landroid/os/Parcel;->dataSize()I

    move-result p2

    const/high16 p4, 0x10000

    if-ge p2, p4, :cond_1

    .line 217
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Parcelable;

    .line 220
    iget-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice$1;->val$listElementClass:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p4, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice;->access$100(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 221
    iget p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice$1;->val$callFlags:I

    invoke-interface {p2, p3, p4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 228
    :cond_1
    iget p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/ParceledListSlice$1;->val$N:I

    if-ge p1, p2, :cond_2

    const/4 p1, 0x0

    .line 232
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :cond_2
    return v0
.end method
