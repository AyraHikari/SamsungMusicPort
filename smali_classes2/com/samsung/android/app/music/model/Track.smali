.class public Lcom/samsung/android/app/music/model/Track;
.super Lcom/samsung/android/app/music/model/SimpleTrack;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/music/model/Track;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CODEC:Ljava/lang/String; = "default"

.field private static final DELIMETER_SETTLE_ADJUSTMENT:Ljava/lang/String; = "|"

.field public static final MOD_STATION_ID:Ljava/lang/String; = "MOD"

.field private static final PARAM_THRESHOLD_TIME:Ljava/lang/String; = "sTime:"

.field public static final SKIPPABLE_TRACK:Ljava/lang/String; = "1"

.field protected static final TAG:Ljava/lang/String; = "Track"

.field public static final UNLIMITED_URL_EXT:Ljava/lang/String; = "UNLIMITED_URL_EXT"


# instance fields
.field private mArtistsJson:Ljava/lang/String;

.field protected mBitrate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "bitrate"
    .end annotation
.end field

.field protected mCodec:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "codec"
    .end annotation
.end field

.field private mCpEventId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "cpEventId"
    .end annotation
.end field

.field private mFavoriteYn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "favoriteYn"
    .end annotation
.end field

.field private mFileSize:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "filesize"
    .end annotation
.end field

.field private mIndividualOnly:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "individualOnly"
    .end annotation
.end field

.field protected mLength:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "length"
    .end annotation
.end field

.field private mLyricsUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "lyricsUrl"
    .end annotation
.end field

.field protected mOffset:J

.field protected mPremiumOnlyYn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "premiumOnlyYn"
    .end annotation
.end field

.field private mPreviewSongOnly:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "previewSongOnly"
    .end annotation
.end field

.field protected mProviderType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "providerType"
    .end annotation
.end field

.field protected mRadioPlaylimitOver:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "playlimitOver"
    .end annotation
.end field

.field private mSeedUsable:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "seedUsable"
    .end annotation
.end field

.field private mSettlementExt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "settlementExt"
    .end annotation
.end field

.field protected mSkippable:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "skippable"
    .end annotation
.end field

.field private mSongSequenceId:Ljava/lang/String;

.field protected mStationId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "stationId"
    .end annotation
.end field

.field private mSyncLyricsUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "synclyricsUrl"
    .end annotation
.end field

.field private mThumbnailId:J

.field protected mTrackPurchasable:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "songPurchasable"
    .end annotation
.end field

.field protected mTrackSequence:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "sequence"
    .end annotation
.end field

.field protected mUrlExp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "audioExpiredTime"
    .end annotation
.end field

.field public requestedAudioQuality:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 387
    new-instance v0, Lcom/samsung/android/app/music/model/Track$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/Track$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/Track;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;-><init>()V

    const-string v0, "1"

    .line 47
    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mSkippable:Ljava/lang/String;

    const-string v0, "default"

    .line 58
    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mCodec:Ljava/lang/String;

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mArtistsJson:Ljava/lang/String;

    const-string v0, "0"

    .line 95
    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mPremiumOnlyYn:Ljava/lang/String;

    const-string v0, "0"

    .line 101
    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mIndividualOnly:Ljava/lang/String;

    const-string v0, "0"

    .line 104
    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mPreviewSongOnly:Ljava/lang/String;

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcom/samsung/android/app/music/model/Track;->mRadioPlaylimitOver:I

    const-wide/16 v0, 0x0

    .line 110
    iput-wide v0, p0, Lcom/samsung/android/app/music/model/Track;->mFileSize:J

    const-wide/16 v0, -0x1

    .line 113
    iput-wide v0, p0, Lcom/samsung/android/app/music/model/Track;->mThumbnailId:J

    const/4 v0, -0x1

    .line 115
    iput v0, p0, Lcom/samsung/android/app/music/model/Track;->requestedAudioQuality:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 239
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/model/SimpleTrack;-><init>(Landroid/os/Parcel;)V

    const-string v0, "1"

    .line 47
    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mSkippable:Ljava/lang/String;

    const-string v0, "default"

    .line 58
    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mCodec:Ljava/lang/String;

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mArtistsJson:Ljava/lang/String;

    const-string v0, "0"

    .line 95
    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mPremiumOnlyYn:Ljava/lang/String;

    const-string v0, "0"

    .line 101
    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mIndividualOnly:Ljava/lang/String;

    const-string v0, "0"

    .line 104
    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mPreviewSongOnly:Ljava/lang/String;

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcom/samsung/android/app/music/model/Track;->mRadioPlaylimitOver:I

    const-wide/16 v0, 0x0

    .line 110
    iput-wide v0, p0, Lcom/samsung/android/app/music/model/Track;->mFileSize:J

    const-wide/16 v0, -0x1

    .line 113
    iput-wide v0, p0, Lcom/samsung/android/app/music/model/Track;->mThumbnailId:J

    const/4 v0, -0x1

    .line 115
    iput v0, p0, Lcom/samsung/android/app/music/model/Track;->requestedAudioQuality:I

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mStationId:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mSkippable:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mLength:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/model/Track;->mOffset:J

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mBitrate:Ljava/lang/String;

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mCodec:Ljava/lang/String;

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mTrackSequence:Ljava/lang/String;

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mUrlExp:Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mSeedUsable:Ljava/lang/String;

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mSettlementExt:Ljava/lang/String;

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mLyricsUrl:Ljava/lang/String;

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mSyncLyricsUrl:Ljava/lang/String;

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mSongSequenceId:Ljava/lang/String;

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mPremiumOnlyYn:Ljava/lang/String;

    .line 254
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mFavoriteYn:Ljava/lang/String;

    .line 255
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mPreviewSongOnly:Ljava/lang/String;

    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mIndividualOnly:Ljava/lang/String;

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mTrackPurchasable:Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/Track;->mRadioPlaylimitOver:I

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/model/Track;->mFileSize:J

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/model/Track;->mThumbnailId:J

    .line 261
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/model/Track;->requestedAudioQuality:I

    return-void
.end method

.method public static convertToMilkTracks(Landroid/content/ContentValues;J)Landroid/content/ContentValues;
    .locals 4

    .line 483
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "audio_id"

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    .line 484
    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "track_id"

    const-string p2, "track_id"

    .line 485
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "track_type"

    const-string p2, "track_type"

    .line 486
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "track_provider_type"

    const-string p2, "track_provider_type"

    .line 488
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 487
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "track_lyrics_url"

    const-string p2, "track_lyrics_url"

    .line 490
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 489
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "track_synclyrics_url"

    const-string p2, "track_synclyrics_url"

    .line 492
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 491
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "track_is_explicit"

    const-string p2, "track_is_explicit"

    .line 494
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 493
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "track_preminum_only_yn"

    const-string p2, "track_preminum_only_yn"

    .line 496
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 495
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "track_audio_url"

    const-string p2, "track_audio_url"

    .line 497
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "track_audio_url_exp"

    const-string p2, "track_audio_url_exp"

    .line 499
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 498
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "track_is_celeb_track"

    const-string p2, "track_is_celeb_track"

    .line 501
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 500
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "track_settle_ext"

    const-string p2, "track_settle_ext"

    .line 503
    invoke-virtual {p0, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 502
    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createTrackFromTrackDetailinfo(Lcom/samsung/android/app/music/model/TrackDetail;)Lcom/samsung/android/app/music/model/Track;
    .locals 2

    .line 591
    new-instance v0, Lcom/samsung/android/app/music/model/Track;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/Track;-><init>()V

    .line 592
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->getLyricsUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/Track;->setLyricsUrl(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/Track;->setTrackId(Ljava/lang/String;)V

    .line 594
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->getTrackTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/Track;->setTrackTitle(Ljava/lang/String;)V

    .line 595
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/Track;->setImageUrl(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/Track;->setAlbumId(Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->getAlbumTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/Track;->setAlbumTitle(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->getAudioUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/Track;->setAudioUrl(Ljava/lang/String;)Z

    .line 599
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->getAudioType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/Track;->setAudioType(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->getExplicit()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/Track;->setExplicit(I)V

    .line 601
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->getArtistList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/Track;->setArtistList(Ljava/util/ArrayList;)V

    .line 602
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->getArtistNames()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/Track;->setArtistNames(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->getSongPurchasable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/Track;->setIsPurchasable(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->getSeedUsable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/Track;->setSeedUsable(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/TrackDetail;->getFavoriteYn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/model/Track;->setFavoriteYn(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createTrackObjectFromTrackDAOCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/model/Track;
    .locals 9

    .line 440
    new-instance v0, Lcom/samsung/android/app/music/model/Track;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/Track;-><init>()V

    const-string v1, "source_id"

    .line 442
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "track_type"

    .line 443
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    .line 444
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "album_id"

    .line 445
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "album"

    .line 446
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "artist"

    .line 450
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "track_is_explicit"

    .line 452
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v8, "track_provider_type"

    .line 454
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 456
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/Track;->setTrackId(Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/model/Track;->setAudioType(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/model/Track;->setTrackTitle(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0, v4}, Lcom/samsung/android/app/music/model/Track;->setAlbumId(Ljava/lang/String;)V

    .line 460
    invoke-virtual {v0, v5}, Lcom/samsung/android/app/music/model/Track;->setAlbumTitle(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0, v6}, Lcom/samsung/android/app/music/model/Track;->setArtistNames(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v0, v7}, Lcom/samsung/android/app/music/model/Track;->setExplicit(I)V

    .line 464
    invoke-virtual {v0, v8}, Lcom/samsung/android/app/music/model/Track;->setProviderType(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 465
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/Track;->setIsPurchasable(Ljava/lang/String;)V

    const-string v1, "track_preminum_only_yn"

    .line 467
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 466
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/Track;->setPremiumOnlyYn(Ljava/lang/String;)V

    const-string v1, "duration"

    .line 468
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/model/Track;->setDuration(J)Z

    const-string v1, "track_audio_url"

    .line 469
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/Track;->setAudioUrl(Ljava/lang/String;)Z

    const-string v1, "track_audio_url_exp"

    .line 470
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/Track;->setUrlExp(Ljava/lang/String;)V

    const-string v1, "track_lyrics_url"

    .line 472
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 471
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/Track;->setLyricsUrl(Ljava/lang/String;)V

    const-string v1, "track_synclyrics_url"

    .line 474
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 473
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/Track;->setSyncLyricsUrl(Ljava/lang/String;)V

    const-string v1, "track_is_celeb_track"

    .line 476
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/model/Track;->setCelebTrack(Ljava/lang/String;)V

    const-string v1, "track_settle_ext"

    .line 478
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 477
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/model/Track;->setSettlementExt(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getSettleThreshold(Ljava/lang/String;)I
    .locals 6

    const/4 v0, -0x1

    if-eqz p0, :cond_2

    .line 140
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "|"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 143
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    const-string v2, "sTime:"

    .line 144
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "sTime:"

    const-string v3, ""

    .line 145
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 147
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 148
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    mul-int/lit16 p0, p0, 0x3e8

    .line 149
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/music/model/Track;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSettlementExt>> threshold - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v5, v0

    move v0, p0

    move-object p0, v5

    goto :goto_1

    .line 151
    :cond_1
    :try_start_2
    sget-object v2, Lcom/samsung/android/app/music/model/Track;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSettlementExt>> threshold - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 154
    :goto_1
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static isAdsOrInterruption(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "2"

    .line 630
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    .line 631
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
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

    .line 522
    :cond_0
    instance-of v1, p1, Lcom/samsung/android/app/music/model/Track;

    if-eqz v1, :cond_5

    .line 523
    check-cast p1, Lcom/samsung/android/app/music/model/Track;

    .line 524
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 527
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 528
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 531
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 532
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/Track;->getStationId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 529
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 535
    :cond_5
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/model/SimpleTrack;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getArtistJson()Ljava/lang/String;
    .locals 2

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getArtistList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 401
    iget-object v1, p0, Lcom/samsung/android/app/music/model/Track;->mArtistsJson:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 402
    invoke-static {v0}, Lcom/samsung/android/app/music/model/artist/Artist;->makeJsonString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mArtistsJson:Ljava/lang/String;

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mArtistsJson:Ljava/lang/String;

    return-object v0
.end method

.method public getBitrate()J
    .locals 7

    .line 278
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mBitrate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x40

    const-wide/16 v3, 0x0

    if-nez v0, :cond_0

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mBitrate:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 283
    :catch_0
    sget-object v0, Lcom/samsung/android/app/music/model/Track;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBitrate>> NumberFormatException - set"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v3

    :goto_0
    cmp-long v0, v5, v3

    if-nez v0, :cond_1

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mBitrate:Ljava/lang/String;

    .line 290
    sget-object v0, Lcom/samsung/android/app/music/model/Track;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBitrate>> bitrate is 0. so add default bitrate. bitrate - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/music/model/Track;->mBitrate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-wide v1, v5

    :goto_1
    const-wide/16 v3, 0x3e8

    cmp-long v0, v1, v3

    if-lez v0, :cond_2

    .line 294
    div-long/2addr v1, v3

    return-wide v1

    :cond_2
    return-wide v1
.end method

.method public getCpEventId()Ljava/lang/String;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mCpEventId:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mLength:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mLength:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 3

    const-string v0, "default"

    .line 350
    iget-object v1, p0, Lcom/samsung/android/app/music/model/Track;->mCodec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AAC"

    .line 351
    iput-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mCodec:Ljava/lang/String;

    .line 352
    sget-object v0, Lcom/samsung/android/app/music/model/Track;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEncoding>> codec does not set. so return default codec. codec - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/model/Track;->mCodec:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mCodec:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFavoriteYn()Ljava/lang/String;
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mFavoriteYn:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 428
    iget-wide v0, p0, Lcom/samsung/android/app/music/model/Track;->mFileSize:J

    return-wide v0
.end method

.method public getIndividualOnly()Ljava/lang/String;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mIndividualOnly:Ljava/lang/String;

    return-object v0
.end method

.method public getIsPurhchasable()Ljava/lang/String;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mTrackPurchasable:Ljava/lang/String;

    return-object v0
.end method

.method public getIsSkippable()Ljava/lang/String;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mSkippable:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "1"

    return-object v0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mSkippable:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricsUrl()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mLyricsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()J
    .locals 2

    .line 365
    iget-wide v0, p0, Lcom/samsung/android/app/music/model/Track;->mOffset:J

    return-wide v0
.end method

.method public getPremiumOnlyYn()Ljava/lang/String;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mPremiumOnlyYn:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewSongOnly()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mPreviewSongOnly:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderType()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mProviderType:Ljava/lang/String;

    return-object v0
.end method

.method public getSeedUsable()Ljava/lang/String;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mSeedUsable:Ljava/lang/String;

    return-object v0
.end method

.method public getSettlementExt()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mSettlementExt:Ljava/lang/String;

    return-object v0
.end method

.method public getSongSequenceId()Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mSongSequenceId:Ljava/lang/String;

    return-object v0
.end method

.method public getStationId()Ljava/lang/String;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mStationId:Ljava/lang/String;

    return-object v0
.end method

.method public getSyncLyricsUrl()Ljava/lang/String;
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mSyncLyricsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailId()J
    .locals 2

    .line 436
    iget-wide v0, p0, Lcom/samsung/android/app/music/model/Track;->mThumbnailId:J

    return-wide v0
.end method

.method public getTrackSequence()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mTrackSequence:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlExp()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mUrlExp:Ljava/lang/String;

    return-object v0
.end method

.method public hasLyrics()Z
    .locals 1

    .line 586
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getLyricsUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getLyricsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getSyncLyricsUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getSyncLyricsUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 544
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    .line 545
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v2, v1

    return v2
.end method

.method public isAds()Z
    .locals 2

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->isRadioTrack()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "2"

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isAdsOrInterruption()Z
    .locals 3

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->isRadioTrack()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "2"

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isInterruption()Z
    .locals 2

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->isRadioTrack()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v0, "1"

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isModTrack()Z
    .locals 2

    const-string v0, "MOD"

    .line 574
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->isLocalTrack()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRadioPlaylimitOver()Z
    .locals 2

    .line 412
    iget v0, p0, Lcom/samsung/android/app/music/model/Track;->mRadioPlaylimitOver:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRadioTrack()Z
    .locals 2

    .line 578
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "MOD"

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "0"

    .line 579
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "2"

    .line 580
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    .line 581
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 582
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->isLocalTrack()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSeedUsable()Z
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mSeedUsable:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mSeedUsable:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/model/Track;->mSeedUsable:Ljava/lang/String;

    const-string v1, "01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setArtistJson(Ljava/lang/String;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Track;->mArtistsJson:Ljava/lang/String;

    return-void
.end method

.method public setDuration(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/Track;->mLength:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method

.method public setFavoriteYn(Ljava/lang/String;)V
    .locals 0

    .line 562
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Track;->mFavoriteYn:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .line 424
    iput-wide p1, p0, Lcom/samsung/android/app/music/model/Track;->mFileSize:J

    return-void
.end method

.method public setIsPurchasable(Ljava/lang/String;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Track;->mTrackPurchasable:Ljava/lang/String;

    return-void
.end method

.method public setLyricsUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "null"

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 173
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Track;->mLyricsUrl:Ljava/lang/String;

    return-void
.end method

.method public setOffset(J)V
    .locals 0

    .line 361
    iput-wide p1, p0, Lcom/samsung/android/app/music/model/Track;->mOffset:J

    return-void
.end method

.method public setPremiumOnlyYn(Ljava/lang/String;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Track;->mPremiumOnlyYn:Ljava/lang/String;

    return-void
.end method

.method public setProviderType(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Track;->mProviderType:Ljava/lang/String;

    return-void
.end method

.method public setRadioPlaylimitOver(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 417
    iput p1, p0, Lcom/samsung/android/app/music/model/Track;->mRadioPlaylimitOver:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 419
    iput p1, p0, Lcom/samsung/android/app/music/model/Track;->mRadioPlaylimitOver:I

    :goto_0
    return-void
.end method

.method public setSeedUsable(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Track;->mSeedUsable:Ljava/lang/String;

    return-void
.end method

.method public setSettlementExt(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Track;->mSettlementExt:Ljava/lang/String;

    return-void
.end method

.method public setStationId(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 269
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 272
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Track;->mStationId:Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setSyncLyricsUrl(Ljava/lang/String;)V
    .locals 0

    .line 570
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Track;->mSyncLyricsUrl:Ljava/lang/String;

    return-void
.end method

.method public setThumbnailId(J)V
    .locals 0

    .line 432
    iput-wide p1, p0, Lcom/samsung/android/app/music/model/Track;->mThumbnailId:J

    return-void
.end method

.method public setUrlExp(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 320
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/model/Track;->mUrlExp:Ljava/lang/String;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .line 611
    invoke-super {p0}, Lcom/samsung/android/app/music/model/SimpleTrack;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "duration"

    .line 613
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getDuration()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "track_id"

    .line 614
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "track_type"

    .line 615
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "track_provider_type"

    .line 616
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getProviderType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "track_lyrics_url"

    .line 617
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getLyricsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "track_synclyrics_url"

    .line 618
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getSyncLyricsUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "track_is_explicit"

    .line 619
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getExplicit()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "track_preminum_only_yn"

    .line 620
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getPremiumOnlyYn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "track_audio_url"

    .line 621
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getAudioUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "track_audio_url_exp"

    .line 622
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getUrlExp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "track_is_celeb_track"

    .line 623
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->isCelebTrack()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "track_settle_ext"

    .line 624
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getSettlementExt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Track ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getStationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getTrackTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bitrate - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/Track;->mBitrate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", codec - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/Track;->mCodec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sequence - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getSongSequenceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getAudioType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isPurchasable - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/Track;->getIsPurhchasable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 213
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/model/SimpleTrack;->writeToParcel(Landroid/os/Parcel;I)V

    .line 214
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Track;->mStationId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Track;->mSkippable:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 216
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Track;->mLength:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-wide v0, p0, Lcom/samsung/android/app/music/model/Track;->mOffset:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 218
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Track;->mBitrate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Track;->mCodec:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Track;->mTrackSequence:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Track;->mUrlExp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Track;->mSeedUsable:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Track;->mSettlementExt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 224
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Track;->mLyricsUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Track;->mSyncLyricsUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 226
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Track;->mSongSequenceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Track;->mPremiumOnlyYn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Track;->mFavoriteYn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Track;->mPreviewSongOnly:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Track;->mIndividualOnly:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object p2, p0, Lcom/samsung/android/app/music/model/Track;->mTrackPurchasable:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget p2, p0, Lcom/samsung/android/app/music/model/Track;->mRadioPlaylimitOver:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    iget-wide v0, p0, Lcom/samsung/android/app/music/model/Track;->mFileSize:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 234
    iget-wide v0, p0, Lcom/samsung/android/app/music/model/Track;->mThumbnailId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 235
    iget p2, p0, Lcom/samsung/android/app/music/model/Track;->requestedAudioQuality:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
