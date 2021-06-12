.class public Lcom/samsung/android/app/music/model/milksearch/SearchSeed;
.super Lcom/samsung/android/app/music/model/ResponseModel;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchSeed;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private seedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchSeedResult;",
            ">;"
        }
    .end annotation
.end field

.field private stationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchStation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/samsung/android/app/music/model/milksearch/SearchSeed$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milksearch/SearchSeed$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milksearch/SearchSeed;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 19
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/ResponseModel;-><init>(Landroid/os/Parcel;)V

    .line 20
    sget-object v0, Lcom/samsung/android/app/music/model/milksearch/SearchStation;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchSeed;->stationList:Ljava/util/List;

    .line 21
    sget-object v0, Lcom/samsung/android/app/music/model/milksearch/SearchSeedResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchSeed;->seedList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSeedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchSeedResult;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchSeed;->seedList:Ljava/util/List;

    return-object v0
.end method

.method public getStationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchStation;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchSeed;->stationList:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 26
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/ResponseModel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 27
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchSeed;->stationList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 28
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchSeed;->seedList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
