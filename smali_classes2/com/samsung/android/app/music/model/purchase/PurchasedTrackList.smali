.class public Lcom/samsung/android/app/music/model/purchase/PurchasedTrackList;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/purchase/PurchasedTrackList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;",
            ">;"
        }
    .end annotation
.end field

.field private moreYn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrackList$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/purchase/PurchasedTrackList$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrackList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 22
    sget-object v0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrackList;->list:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrackList;->list:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMoreYn()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrackList;->moreYn:Ljava/lang/String;

    return-object v0
.end method

.method public toContentValuesArray(I)[Landroid/content/ContentValues;
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrackList;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrackList;->list:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;

    .line 60
    invoke-virtual {v3, p1}, Lcom/samsung/android/app/music/model/purchase/PurchasedTrack;->toContentValues(I)Landroid/content/ContentValues;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 27
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 28
    iget-object p2, p0, Lcom/samsung/android/app/music/model/purchase/PurchasedTrackList;->list:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
