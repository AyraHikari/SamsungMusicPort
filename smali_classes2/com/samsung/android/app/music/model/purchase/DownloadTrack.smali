.class public Lcom/samsung/android/app/music/model/purchase/DownloadTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DETAIL_LOGGING:Z = true


# instance fields
.field private album:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private artistName:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private audioExpiredTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "audioExpiredTime"
    .end annotation
.end field

.field private bitrate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "bitrate"
    .end annotation
.end field

.field private codec:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "codec"
    .end annotation
.end field

.field private deleteUrl:Ljava/lang/String;

.field private diskNumber:I

.field private downloadUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "downloadUrl"
    .end annotation
.end field

.field private downloadedSize:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private drmType:Ljava/lang/String;

.field private expiredTileLong:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private id3v1:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "id3v1"
    .end annotation
.end field

.field private id3v2:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "id3v2"
    .end annotation
.end field

.field private id3v2FileSize:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private isDownloading:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private length:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "length"
    .end annotation
.end field

.field private lyricsUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "lyricsUrl"
    .end annotation
.end field

.field private orderId:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private size:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "size"
    .end annotation
.end field

.field private synclyricsUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "synclyricsUrl"
    .end annotation
.end field

.field private trackId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "trackId"
    .end annotation
.end field

.field private trackNumber:I

.field private trackTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        a = "trackTitle"
    .end annotation
.end field

.field private trackType:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "track_id"

    .line 96
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->trackId:Ljava/lang/String;

    const-string v0, "title"

    .line 97
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->trackTitle:Ljava/lang/String;

    const-string v0, "download_url"

    .line 98
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->downloadUrl:Ljava/lang/String;

    const-string v0, "expire_time"

    .line 99
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->audioExpiredTime:Ljava/lang/String;

    const-string v0, "expire_time_long"

    .line 100
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->expiredTileLong:J

    const-string v0, "file_size"

    .line 101
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->size:J

    const-string v0, "length"

    .line 102
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->length:J

    const-string v0, "bitrate"

    .line 103
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->bitrate:Ljava/lang/String;

    const-string v0, "codec"

    .line 104
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->codec:Ljava/lang/String;

    const-string v0, "id3v1"

    .line 105
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->id3v1:Ljava/lang/String;

    const-string v0, "id3v2"

    .line 106
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->id3v2:Ljava/lang/String;

    const-string v0, "id3v2_filesize"

    .line 107
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->id3v2FileSize:J

    const-string v0, "artist"

    .line 108
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->artistName:Ljava/lang/String;

    const-string v0, "track_number"

    .line 109
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->trackNumber:I

    const-string v0, "track_type"

    .line 110
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->trackType:I

    const-string v0, "order_id"

    .line 111
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->orderId:Ljava/lang/String;

    const-string v0, "downloaded_size"

    .line 112
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->downloadedSize:J

    const-string v0, "is_downloading"

    .line 113
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->isDownloading:I

    const-string v0, "album"

    .line 114
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->album:Ljava/lang/String;

    const-string v0, "delete_url"

    .line 115
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->deleteUrl:Ljava/lang/String;

    const-string v0, "drm_type"

    .line 116
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->drmType:Ljava/lang/String;

    return-void
.end method

.method public static CursorToTrackDownload(Landroid/database/Cursor;)Lcom/samsung/android/app/music/model/purchase/DownloadTrack;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 147
    new-instance v0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    .line 121
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->a(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioExpiredTime()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->audioExpiredTime:Ljava/lang/String;

    return-object v0
.end method

.method public getBitrate()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->bitrate:Ljava/lang/String;

    return-object v0
.end method

.method public getCodec()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->codec:Ljava/lang/String;

    return-object v0
.end method

.method public getDeleteUrl()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->deleteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDiskNumber()I
    .locals 1

    .line 276
    iget v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->diskNumber:I

    return v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->downloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedSize()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    iget-wide v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->downloadedSize:J

    return-wide v0
.end method

.method public getDrmType()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->drmType:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireTimeLong()Ljava/lang/Long;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 191
    iget-wide v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->expiredTileLong:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getId3v1()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->id3v1:Ljava/lang/String;

    return-object v0
.end method

.method public getId3v2()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->id3v2:Ljava/lang/String;

    return-object v0
.end method

.method public getId3v2FileSize()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    iget-wide v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->id3v2FileSize:J

    return-wide v0
.end method

.method public getIsDownloading()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 263
    iget v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->isDownloading:I

    return v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 195
    iget-wide v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->size:J

    return-wide v0
.end method

.method public getSynclyricsUrl()Ljava/lang/String;
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->synclyricsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackNumber()I
    .locals 1

    .line 240
    iget v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->trackNumber:I

    return v0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->trackTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackType()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 245
    iget v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->trackType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    .line 126
    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->a(Ljava/lang/Object;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public mergeDownloadInfo(Lcom/samsung/android/app/music/model/purchase/DownloadTrack;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 281
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getExpireTimeLong()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->expiredTileLong:J

    .line 282
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getTrackType()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->trackType:I

    .line 283
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getId3v2FileSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->id3v2FileSize:J

    .line 284
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getDownloadedSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->downloadedSize:J

    .line 285
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getArtistName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->artistName:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getTrackNumber()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->trackNumber:I

    .line 287
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getOrderId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->orderId:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getIsDownloading()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->isDownloading:I

    .line 289
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->getAlbum()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->album:Ljava/lang/String;

    return-void
.end method

.method public setDownloadedSize(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    iput-wide p1, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->downloadedSize:J

    return-void
.end method

.method public toContentValue()Landroid/content/ContentValues;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "track_id"

    .line 155
    iget-object v2, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->trackId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "codec"

    .line 156
    iget-object v2, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->codec:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bitrate"

    .line 157
    iget-object v2, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->bitrate:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "file_size"

    .line 158
    iget-wide v2, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->size:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "length"

    .line 159
    iget-wide v2, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->length:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "download_url"

    .line 160
    iget-object v2, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "expire_time"

    .line 161
    iget-object v2, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->audioExpiredTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "expire_time_long"

    .line 162
    iget-object v2, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->audioExpiredTime:Ljava/lang/String;

    .line 163
    invoke-static {v2}, Lcom/samsung/android/app/music/util/ConvertSystemTime;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 162
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "track_type"

    .line 164
    iget v2, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->trackType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "id3v1"

    .line 165
    iget-object v2, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->id3v1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "id3v2"

    .line 166
    iget-object v2, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->id3v2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "drm_type"

    .line 167
    iget-object v2, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->drmType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "delete_url"

    .line 168
    iget-object v2, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->deleteUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "downloaded_size"

    .line 169
    iget-wide v2, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->downloadedSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trackId :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->trackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->trackTitle:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "downloadUrl: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->downloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "audioExpiredTime: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->audioExpiredTime:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "id3v1: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->id3v1:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", id3v2: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->id3v2:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", drmType: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->drmType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", deleteUrl: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/music/model/purchase/DownloadTrack;->deleteUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
