.class public Lcom/samsung/android/app/music/model/Station;
.super Lcom/samsung/android/app/music/model/SimpleStation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/model/Station$Type;,
        Lcom/samsung/android/app/music/model/Station$Tag;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/Station;",
            ">;"
        }
    .end annotation
.end field

.field public static final NEED_STATION_UPDATE:I = 0x64

.field protected static final TAG:Ljava/lang/String; = "Station"

.field public static final UNLIMITED_COUNT:I = -0x80000000


# instance fields
.field private hiddenYn:Ljava/lang/String;

.field private mAudioAdYn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "audioAdYn"
    .end annotation
.end field

.field protected mBannedIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "description"
    .end annotation
.end field

.field protected mGenreId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "genreId"
    .end annotation
.end field

.field private mGenreLastUpdated:Ljava/lang/String;

.field protected mGenreName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "genre"
        b = {
            "genreName"
        }
    .end annotation
.end field

.field protected mGenreType:Ljava/lang/String;

.field protected mGenreVisible:I

.field private mImageAdYn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "imageAdYn"
    .end annotation
.end field

.field private mIsMyStation:I

.field protected mIsTurned:Z

.field private mLastUpdated:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "lastUpdated"
    .end annotation
.end field

.field protected mMyStationOrdinal:I

.field private mNeedUpdateStation:I

.field protected mNextTrackId:Ljava/lang/String;

.field private mOfflineLastSyncedTime:J

.field private mOfflineSyncState:I

.field protected mPrevTrackId:Ljava/lang/String;

.field protected mProviderType:Ljava/lang/String;

.field private mSkipCount:I

.field protected mStationSubType:Ljava/lang/String;

.field private mStayingTime:I

.field private mTag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "tag"
    .end annotation
.end field

.field protected mTrackId:Ljava/lang/String;

.field public mTrackInfo:Lcom/samsung/android/app/music/model/Track;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "trackInfo"
    .end annotation
.end field

.field protected mTracks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/Track;",
            ">;"
        }
    .end annotation
.end field

.field private mVideoAdYn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "videoAdYn"
    .end annotation
.end field

.field private preAudioAdYn:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 435
    new-instance v0, Lcom/samsung/android/app/music/model/Station$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/Station$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/Station;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 179
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/SimpleStation;-><init>()V

    const v0, 0x7fffffff

    .line 74
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/model/Station;->mGenreId:Ljava/lang/String;

    const/4 v1, 0x1

    .line 83
    iput v1, p0, Lcom/samsung/android/app/music/model/Station;->mGenreVisible:I

    .line 85
    iput v0, p0, Lcom/samsung/android/app/music/model/Station;->mMyStationOrdinal:I

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mTracks:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mBannedIds:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/samsung/android/app/music/model/Station;->mIsMyStation:I

    const/4 v0, -0x1

    .line 117
    iput v0, p0, Lcom/samsung/android/app/music/model/Station;->mSkipCount:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 183
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/SimpleStation;-><init>(Landroid/os/Parcel;)V

    const v0, 0x7fffffff

    .line 74
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/model/Station;->mGenreId:Ljava/lang/String;

    const/4 v1, 0x1

    .line 83
    iput v1, p0, Lcom/samsung/android/app/music/model/Station;->mGenreVisible:I

    .line 85
    iput v0, p0, Lcom/samsung/android/app/music/model/Station;->mMyStationOrdinal:I

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mTracks:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mBannedIds:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/samsung/android/app/music/model/Station;->mIsMyStation:I

    const/4 v0, -0x1

    .line 117
    iput v0, p0, Lcom/samsung/android/app/music/model/Station;->mSkipCount:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/Station;->mIsMyStation:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mTrackId:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mGenreId:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mPrevTrackId:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mNextTrackId:Ljava/lang/String;

    .line 189
    const-class v0, Lcom/samsung/android/app/music/model/Track;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/model/Track;

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mTrackInfo:Lcom/samsung/android/app/music/model/Track;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mGenreName:Ljava/lang/String;

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mGenreType:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/Station;->mMyStationOrdinal:I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mDescription:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mLastUpdated:Ljava/lang/String;

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mTracks:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/app/music/model/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mBannedIds:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/Station;->mSkipCount:I

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mTag:Ljava/lang/String;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mStationSubType:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Station;->hiddenYn:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mAudioAdYn:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mVideoAdYn:Ljava/lang/String;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mImageAdYn:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/Station;->mNeedUpdateStation:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/model/Station;->preAudioAdYn:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 476
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/SimpleStation;-><init>()V

    const v0, 0x7fffffff

    .line 74
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/model/Station;->mGenreId:Ljava/lang/String;

    const/4 v1, 0x1

    .line 83
    iput v1, p0, Lcom/samsung/android/app/music/model/Station;->mGenreVisible:I

    .line 85
    iput v0, p0, Lcom/samsung/android/app/music/model/Station;->mMyStationOrdinal:I

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mTracks:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mBannedIds:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/samsung/android/app/music/model/Station;->mIsMyStation:I

    const/4 v0, -0x1

    .line 117
    iput v0, p0, Lcom/samsung/android/app/music/model/Station;->mSkipCount:I

    .line 477
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Station;->mStationId:Ljava/lang/String;

    .line 478
    iput-object p2, p0, Lcom/samsung/android/app/music/model/Station;->mTrackId:Ljava/lang/String;

    .line 479
    iput-object p3, p0, Lcom/samsung/android/app/music/model/Station;->mNextTrackId:Ljava/lang/String;

    .line 480
    iput-object p4, p0, Lcom/samsung/android/app/music/model/Station;->mStationName:Ljava/lang/String;

    .line 481
    iput-object p5, p0, Lcom/samsung/android/app/music/model/Station;->mGenreName:Ljava/lang/String;

    .line 482
    iput-object p7, p0, Lcom/samsung/android/app/music/model/Station;->mStationType:Ljava/lang/String;

    .line 483
    iput p9, p0, Lcom/samsung/android/app/music/model/Station;->mOrdinal:I

    .line 484
    iput-object p6, p0, Lcom/samsung/android/app/music/model/Station;->mDescription:Ljava/lang/String;

    .line 485
    iput-object p8, p0, Lcom/samsung/android/app/music/model/Station;->mLastUpdated:Ljava/lang/String;

    .line 486
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/Station;->hiddenYn:Ljava/lang/String;

    .line 487
    iput-object p11, p0, Lcom/samsung/android/app/music/model/Station;->mAudioAdYn:Ljava/lang/String;

    .line 488
    iput-object p12, p0, Lcom/samsung/android/app/music/model/Station;->mVideoAdYn:Ljava/lang/String;

    .line 489
    iput-object p13, p0, Lcom/samsung/android/app/music/model/Station;->mImageAdYn:Ljava/lang/String;

    return-void
.end method

.method public static createSimpleStationObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/app/music/model/Station;
    .locals 1

    .line 449
    new-instance v0, Lcom/samsung/android/app/music/model/Station;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/Station;-><init>()V

    .line 450
    iput-object p0, v0, Lcom/samsung/android/app/music/model/Station;->mStationId:Ljava/lang/String;

    .line 451
    iput-object p1, v0, Lcom/samsung/android/app/music/model/Station;->mStationType:Ljava/lang/String;

    .line 452
    iput-object p2, v0, Lcom/samsung/android/app/music/model/Station;->mStationName:Ljava/lang/String;

    .line 453
    iput p3, v0, Lcom/samsung/android/app/music/model/Station;->mOrdinal:I

    return-object v0
.end method

.method public static createStationObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/model/Station;
    .locals 15

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 467
    :cond_0
    new-instance v14, Lcom/samsung/android/app/music/model/Station;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/samsung/android/app/music/model/Station;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v14
.end method

.method public static isPersonalStation(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "02"

    .line 605
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addBanSongList(Ljava/lang/String;)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mBannedIds:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 386
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mBannedIds:Ljava/util/ArrayList;

    :cond_0
    if-eqz p1, :cond_1

    .line 388
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mBannedIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mBannedIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 586
    :cond_0
    instance-of v1, p1, Lcom/samsung/android/app/music/model/Station;

    if-eqz v1, :cond_1

    .line 587
    iget-object v1, p0, Lcom/samsung/android/app/music/model/Station;->mStationId:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/model/Station;->mStationId:Ljava/lang/String;

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/app/music/model/Station;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 591
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBanSongList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mBannedIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mGenreName:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreId()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mGenreId:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreLastUpdated()Ljava/lang/String;
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mGenreLastUpdated:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreType()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mGenreType:Ljava/lang/String;

    return-object v0
.end method

.method public getGenreVisible()I
    .locals 2

    .line 282
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Station;->getIsMyStation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 285
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/model/Station;->mGenreVisible:I

    return v0
.end method

.method public getIsMyStation()I
    .locals 1

    .line 534
    iget v0, p0, Lcom/samsung/android/app/music/model/Station;->mIsMyStation:I

    return v0
.end method

.method public getIsTurned()Z
    .locals 1

    .line 542
    iget-boolean v0, p0, Lcom/samsung/android/app/music/model/Station;->mIsTurned:Z

    return v0
.end method

.method public getLastUpdated()Ljava/lang/String;
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mLastUpdated:Ljava/lang/String;

    return-object v0
.end method

.method public getMyStationOrdinal()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/samsung/android/app/music/model/Station;->mMyStationOrdinal:I

    return v0
.end method

.method public getNeedUpdateStationInfo()I
    .locals 1

    .line 325
    iget v0, p0, Lcom/samsung/android/app/music/model/Station;->mNeedUpdateStation:I

    return v0
.end method

.method public getNextTrackId()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mNextTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public getOfflineLastSyncTime()J
    .locals 2

    .line 510
    iget-wide v0, p0, Lcom/samsung/android/app/music/model/Station;->mOfflineLastSyncedTime:J

    return-wide v0
.end method

.method public getOfflineSyncState()I
    .locals 1

    .line 518
    iget v0, p0, Lcom/samsung/android/app/music/model/Station;->mOfflineSyncState:I

    return v0
.end method

.method public getPreAudioAdYn()I
    .locals 1

    .line 609
    iget v0, p0, Lcom/samsung/android/app/music/model/Station;->preAudioAdYn:I

    return v0
.end method

.method public getPrevTrackId()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mPrevTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipCount()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/samsung/android/app/music/model/Station;->mSkipCount:I

    return v0
.end method

.method public getStation()Lcom/samsung/android/app/music/model/Station;
    .locals 0

    return-object p0
.end method

.method public getStationSubType()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mStationSubType:Ljava/lang/String;

    return-object v0
.end method

.method public getStayingTime()I
    .locals 1

    .line 570
    iget v0, p0, Lcom/samsung/android/app/music/model/Station;->mStayingTime:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mTrackId:Ljava/lang/String;

    return-object v0
.end method

.method public getTracks()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/Track;",
            ">;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mTrackInfo:Lcom/samsung/android/app/music/model/Track;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mTrackInfo:Lcom/samsung/android/app/music/model/Track;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mTracks:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/model/Track;

    .line 217
    iget-object v2, p0, Lcom/samsung/android/app/music/model/Station;->mTrackInfo:Lcom/samsung/android/app/music/model/Track;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/samsung/android/app/music/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mTrackInfo:Lcom/samsung/android/app/music/model/Track;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/Station;->mStationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/Track;->setStationId(Ljava/lang/String;)Z

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mTracks:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/Station;->mTrackInfo:Lcom/samsung/android/app/music/model/Track;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mTracks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 600
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mStationId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mStationId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x20f

    add-int/2addr v1, v0

    return v1
.end method

.method public isAudioAdYn()Z
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mAudioAdYn:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mAudioAdYn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mAudioAdYn:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFavoriteGenreStation()Z
    .locals 2

    const-string v0, "01"

    .line 362
    iget-object v1, p0, Lcom/samsung/android/app/music/model/Station;->mStationType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/model/Station;->mIsMyStation:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isHiddenStation()Z
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->hiddenYn:Ljava/lang/String;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public isImageAdYn()Z
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mImageAdYn:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mImageAdYn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mImageAdYn:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideoAdYn()Z
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mVideoAdYn:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mVideoAdYn:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mVideoAdYn:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeBanSongList(Ljava/lang/String;)V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mBannedIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mBannedIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Station;->mBannedIds:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setArtistSeeds(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setBannedPIDs(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 381
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Station;->mBannedIds:Ljava/util/ArrayList;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Station;->mDescription:Ljava/lang/String;

    return-void
.end method

.method public setGenre(Ljava/lang/String;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Station;->mGenreName:Ljava/lang/String;

    return-void
.end method

.method public setGenreId(Ljava/lang/String;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Station;->mGenreId:Ljava/lang/String;

    return-void
.end method

.method public setGenreLastUpdated(Ljava/lang/String;)V
    .locals 0

    .line 522
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Station;->mGenreLastUpdated:Ljava/lang/String;

    return-void
.end method

.method public setGenreType(Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Station;->mGenreType:Ljava/lang/String;

    return-void
.end method

.method public setGenreVisible(I)V
    .locals 0

    .line 289
    iput p1, p0, Lcom/samsung/android/app/music/model/Station;->mGenreVisible:I

    return-void
.end method

.method public setIsMyStation(I)V
    .locals 0

    .line 530
    iput p1, p0, Lcom/samsung/android/app/music/model/Station;->mIsMyStation:I

    return-void
.end method

.method public setIsTurned(Z)V
    .locals 0

    .line 538
    iput-boolean p1, p0, Lcom/samsung/android/app/music/model/Station;->mIsTurned:Z

    return-void
.end method

.method public setLastUpdated(Ljava/lang/String;)V
    .locals 0

    .line 498
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Station;->mLastUpdated:Ljava/lang/String;

    return-void
.end method

.method public setMyStationOrdinal(I)V
    .locals 0

    .line 297
    iput p1, p0, Lcom/samsung/android/app/music/model/Station;->mMyStationOrdinal:I

    return-void
.end method

.method public setNeedUpdateStationInfo(I)V
    .locals 0

    .line 321
    iput p1, p0, Lcom/samsung/android/app/music/model/Station;->mNeedUpdateStation:I

    return-void
.end method

.method public setNextTrackId(Ljava/lang/String;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Station;->mNextTrackId:Ljava/lang/String;

    return-void
.end method

.method public setOfflineLastSyncTime(J)V
    .locals 0

    .line 506
    iput-wide p1, p0, Lcom/samsung/android/app/music/model/Station;->mOfflineLastSyncedTime:J

    return-void
.end method

.method public setOfflineSyncState(I)V
    .locals 0

    .line 514
    iput p1, p0, Lcom/samsung/android/app/music/model/Station;->mOfflineSyncState:I

    return-void
.end method

.method public setPreAudioAdYn(I)V
    .locals 0

    .line 613
    iput p1, p0, Lcom/samsung/android/app/music/model/Station;->preAudioAdYn:I

    return-void
.end method

.method public setPrevTrackId(Ljava/lang/String;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Station;->mPrevTrackId:Ljava/lang/String;

    return-void
.end method

.method public setSkipCount(I)V
    .locals 0

    .line 241
    iput p1, p0, Lcom/samsung/android/app/music/model/Station;->mSkipCount:I

    return-void
.end method

.method public setStationSubType(Ljava/lang/String;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Station;->mStationSubType:Ljava/lang/String;

    return-void
.end method

.method public setStayingTime(I)V
    .locals 0

    .line 566
    iput p1, p0, Lcom/samsung/android/app/music/model/Station;->mStayingTime:I

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 553
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Station;->mTag:Ljava/lang/String;

    return-void
.end method

.method public setTrackId(Ljava/lang/String;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Station;->mTrackId:Ljava/lang/String;

    return-void
.end method

.method public setTracks(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/model/Track;",
            ">;)V"
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Station;->mTracks:Ljava/util/ArrayList;

    return-void
.end method

.method public setisAudioAdYn(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "1"

    .line 401
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Station;->mAudioAdYn:Ljava/lang/String;

    :cond_0
    const-string p1, "0"

    .line 403
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Station;->mAudioAdYn:Ljava/lang/String;

    return-void
.end method

.method public setisHiddenStation(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "1"

    .line 371
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Station;->hiddenYn:Ljava/lang/String;

    :cond_0
    const-string p1, "0"

    .line 373
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Station;->hiddenYn:Ljava/lang/String;

    return-void
.end method

.method public setisImageAdYn(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "1"

    .line 426
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Station;->mImageAdYn:Ljava/lang/String;

    :cond_0
    const-string p1, "0"

    .line 428
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Station;->mImageAdYn:Ljava/lang/String;

    return-void
.end method

.method public setisVideoAdYn(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "1"

    .line 412
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Station;->mVideoAdYn:Ljava/lang/String;

    :cond_0
    const-string p1, "0"

    .line 414
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Station;->mVideoAdYn:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Station ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Station;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Station;->getStationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Station;->getStationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Station;->getGenre()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Station;->getGenreId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Station;->getIsMyStation()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Station;->getSkipCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Station;->getStationType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 153
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/SimpleStation;->writeToParcel(Landroid/os/Parcel;I)V

    .line 154
    iget p2, p0, Lcom/samsung/android/app/music/model/Station;->mIsMyStation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Station;->mTrackId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 156
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Station;->mGenreId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Station;->mPrevTrackId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Station;->mNextTrackId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Station;->mTrackInfo:Lcom/samsung/android/app/music/model/Track;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 160
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Station;->mGenreName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Station;->mGenreType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget p2, p0, Lcom/samsung/android/app/music/model/Station;->mMyStationOrdinal:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Station;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Station;->mLastUpdated:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Station;->mTracks:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 166
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Station;->mBannedIds:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 167
    iget p2, p0, Lcom/samsung/android/app/music/model/Station;->mSkipCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Station;->mTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Station;->mStationSubType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Station;->hiddenYn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Station;->mAudioAdYn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Station;->mVideoAdYn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Station;->mImageAdYn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget p2, p0, Lcom/samsung/android/app/music/model/Station;->mNeedUpdateStation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget p2, p0, Lcom/samsung/android/app/music/model/Station;->preAudioAdYn:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
