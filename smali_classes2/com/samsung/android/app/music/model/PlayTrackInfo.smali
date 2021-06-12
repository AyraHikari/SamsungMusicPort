.class public Lcom/samsung/android/app/music/model/PlayTrackInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/model/OnlineTrack;


# static fields
.field public static final PLAY_TRACK_INFO_CONVERTER:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter<",
            "Lcom/samsung/android/app/music/model/PlayTrackInfo;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private albumId:Ljava/lang/String;

.field private albumTitle:Ljava/lang/String;

.field private artistId:Ljava/lang/String;

.field private artistNames:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;

.field private isCeleb:Z

.field private isExplicit:Z

.field private isPlayable:Z

.field private isRadioPlayable:Z

.field private largeImageUrl:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private trackId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 155
    new-instance v0, Lcom/samsung/android/app/music/model/PlayTrackInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/PlayTrackInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->PLAY_TRACK_INFO_CONVERTER:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/samsung/android/app/music/model/PlayTrackInfo;
    .locals 4
    .param p0    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 96
    new-instance v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/PlayTrackInfo;-><init>()V

    const-string v1, "source_id"

    .line 97
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->trackId:Ljava/lang/String;

    const-string v1, "title"

    .line 98
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->title:Ljava/lang/String;

    const-string v1, "source_album_id"

    .line 100
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->albumId:Ljava/lang/String;

    const-string v1, "album"

    .line 101
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->albumTitle:Ljava/lang/String;

    const-string v1, "source_artist_id"

    .line 103
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->artistId:Ljava/lang/String;

    const-string v1, "artist"

    .line 104
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->artistNames:Ljava/lang/String;

    const-string v1, "track_is_explicit"

    .line 106
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 105
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->isExplicit:Z

    const-string v1, "track_coverart_url"

    .line 109
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 108
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->imageUrl:Ljava/lang/String;

    const-string v1, "album_art_url_big"

    .line 112
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 114
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->largeImageUrl:Ljava/lang/String;

    :cond_1
    const-string v1, "is_playable"

    .line 118
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 120
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->isPlayable:Z

    :cond_3
    const-string v1, "is_radio_playable"

    .line 124
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_5

    .line 126
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->isRadioPlayable:Z

    :cond_5
    const-string v1, "is_celeb"

    .line 129
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_7

    .line 131
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    if-ne p0, v3, :cond_6

    const/4 v2, 0x1

    :cond_6
    iput-boolean v2, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->isCeleb:Z

    :cond_7
    return-object v0
.end method

.method public static fromTrackInfoModel(Lcom/samsung/android/app/music/model/base/TrackInfoModel;)Lcom/samsung/android/app/music/model/PlayTrackInfo;
    .locals 2
    .param p0    # Lcom/samsung/android/app/music/model/base/TrackInfoModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 138
    new-instance v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/model/PlayTrackInfo;-><init>()V

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->trackId:Ljava/lang/String;

    .line 140
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getTrackTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->title:Ljava/lang/String;

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->albumId:Ljava/lang/String;

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getAlbumTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->albumTitle:Ljava/lang/String;

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getArtistId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->artistId:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getArtistList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/browse/util/BrowseUtils;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->artistNames:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->isExplicit()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->isExplicit:Z

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getAlbumArtUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->imageUrl:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->getLargeSizeAlbumArtUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->largeImageUrl:Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->isPlayable()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->isPlayable:Z

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->isCelebTrack()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->isCeleb:Z

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/base/TrackInfoModel;->isRadioPlayable()Z

    move-result p0

    iput-boolean p0, v0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->isRadioPlayable:Z

    return-object v0
.end method


# virtual methods
.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->albumId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumTitle()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->albumTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->artistId:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistNames()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->artistNames:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeImageUrl()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->largeImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->trackId:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackTitle()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isCeleb()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->isCeleb:Z

    return v0
.end method

.method public isExplicit()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->isExplicit:Z

    return v0
.end method

.method public isPlayable()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->isPlayable:Z

    return v0
.end method

.method public isRadioPlayable()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/samsung/android/app/music/model/PlayTrackInfo;->isRadioPlayable:Z

    return v0
.end method
