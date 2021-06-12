.class public Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field description:Ljava/lang/String;

.field firstTrackInfo:Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;

.field stationId:Ljava/lang/String;

.field stationTitle:Ljava/lang/String;

.field tpoMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;->stationId:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;->stationTitle:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;->description:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;->tpoMessage:Ljava/lang/String;

    .line 26
    const-class v0, Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;->firstTrackInfo:Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;->stationId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFirstTrackInfo()Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;->firstTrackInfo:Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;

    return-object v0
.end method

.method public getStationID()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;->stationId:Ljava/lang/String;

    return-object v0
.end method

.method public getStationTitle()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;->stationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 31
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;->stationId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;->stationTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;->description:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;->tpoMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milkrecommend/RecommedStation;->firstTrackInfo:Lcom/samsung/android/app/music/model/milkrecommend/RecommendStationFirstTrack;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
