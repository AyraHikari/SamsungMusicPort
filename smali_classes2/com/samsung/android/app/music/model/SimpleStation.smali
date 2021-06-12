.class public Lcom/samsung/android/app/music/model/SimpleStation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/SimpleStation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mOrdinal:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "stationNumber"
    .end annotation
.end field

.field protected mStationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "stationId"
    .end annotation
.end field

.field protected mStationName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "stationTitle"
    .end annotation
.end field

.field protected mStationType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "stationType"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Lcom/samsung/android/app/music/model/SimpleStation$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/SimpleStation$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/SimpleStation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleStation;->mStationId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleStation;->mStationId:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleStation;->mStationId:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleStation;->mStationName:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/SimpleStation;->mStationType:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/model/SimpleStation;->mOrdinal:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStationId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleStation;->mStationId:Ljava/lang/String;

    return-object v0
.end method

.method public getStationName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleStation;->mStationName:Ljava/lang/String;

    return-object v0
.end method

.method public getStationOrdinal()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/samsung/android/app/music/model/SimpleStation;->mOrdinal:I

    return v0
.end method

.method public getStationType()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/model/SimpleStation;->mStationType:Ljava/lang/String;

    return-object v0
.end method

.method public isGenreStation()Z
    .locals 2

    const-string v0, "01"

    .line 91
    iget-object v1, p0, Lcom/samsung/android/app/music/model/SimpleStation;->mStationType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPersonalStation()Z
    .locals 2

    const-string v0, "02"

    .line 99
    iget-object v1, p0, Lcom/samsung/android/app/music/model/SimpleStation;->mStationType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSmartStation()Z
    .locals 2

    const-string v0, "03"

    .line 103
    iget-object v1, p0, Lcom/samsung/android/app/music/model/SimpleStation;->mStationType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setStationId(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/music/model/SimpleStation;->mStationId:Ljava/lang/String;

    return-void
.end method

.method public setStationName(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/samsung/android/app/music/model/SimpleStation;->mStationName:Ljava/lang/String;

    return-void
.end method

.method public setStationOrdinal(I)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/samsung/android/app/music/model/SimpleStation;->mOrdinal:I

    return-void
.end method

.method public setStationType(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/samsung/android/app/music/model/SimpleStation;->mStationType:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 49
    iget-object p2, p0, Lcom/samsung/android/app/music/model/SimpleStation;->mStationId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget-object p2, p0, Lcom/samsung/android/app/music/model/SimpleStation;->mStationName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/samsung/android/app/music/model/SimpleStation;->mStationType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    iget p2, p0, Lcom/samsung/android/app/music/model/SimpleStation;->mOrdinal:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
