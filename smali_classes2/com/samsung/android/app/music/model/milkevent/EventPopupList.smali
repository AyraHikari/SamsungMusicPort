.class public Lcom/samsung/android/app/music/model/milkevent/EventPopupList;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milkevent/EventPopupList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private popupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/milkevent/EventPopup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/samsung/android/app/music/model/milkevent/EventPopupList$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milkevent/EventPopupList$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milkevent/EventPopupList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 14
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 15
    sget-object v0, Lcom/samsung/android/app/music/model/milkevent/EventPopup;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopupList;->popupList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getEventPopupList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/milkevent/EventPopup;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopupList;->popupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 25
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 26
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkevent/EventPopupList;->popupList:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
