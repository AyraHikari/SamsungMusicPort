.class public Lcom/samsung/android/app/music/model/milksearch/SearchStation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchStation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hiddenYn:Ljava/lang/String;

.field private stationId:Ljava/lang/String;

.field private stationTitle:Ljava/lang/String;

.field private tagList:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    new-instance v0, Lcom/samsung/android/app/music/model/milksearch/SearchStation$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/milksearch/SearchStation$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/milksearch/SearchStation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchStation;->stationId:Ljava/lang/String;

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchStation;->stationTitle:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchStation;->tagList:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/milksearch/SearchStation;->hiddenYn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHiddenYn()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchStation;->hiddenYn:Ljava/lang/String;

    return-object v0
.end method

.method public getStationId()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchStation;->stationId:Ljava/lang/String;

    return-object v0
.end method

.method public getStationTitle()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchStation;->stationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTagList()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/model/milksearch/SearchStation;->tagList:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 28
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchStation;->stationId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchStation;->stationTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchStation;->tagList:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, Lcom/samsung/android/app/music/model/milksearch/SearchStation;->hiddenYn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
