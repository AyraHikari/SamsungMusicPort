.class public Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;
.super Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
.source "SourceFile"


# static fields
.field protected static final a:[Ljava/lang/String;


# instance fields
.field protected final b:Landroid/content/Context;

.field protected c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

.field private final d:Landroid/net/Uri;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private final h:J


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const-string v0, "title"

    const-string v1, "album"

    const-string v2, "artist"

    const-string v3, "album_id"

    const-string v4, "artist_id"

    const-string v5, "duration"

    const-string v6, "_data"

    const-string v7, "mime_type"

    const-string v8, "genre"

    const-string v9, "bit_depth"

    const-string v10, "sampling_rate"

    const-string v11, "is_secretbox"

    const-string v12, "cp_attrs"

    const-string v13, "source_id"

    const-string v14, "explicit"

    const-string v15, "is_celeb"

    .line 40
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->a:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;J)V
    .locals 0

    .line 139
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->b:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->g:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 142
    iput-object p3, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->e:Ljava/lang/String;

    .line 143
    iput-object p4, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->d:Landroid/net/Uri;

    .line 144
    iput-object p5, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->f:Ljava/lang/String;

    .line 145
    iput-wide p6, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->h:J

    return-void
.end method

.method protected static final a(Landroid/content/Context;Landroid/net/Uri;IIILandroid/database/Cursor;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p5

    const-string v3, "title"

    .line 52
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "album"

    .line 53
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 54
    invoke-static {v0, v4}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "artist"

    .line 56
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-static {v0, v5}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "genre"

    .line 57
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "album_id"

    .line 59
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-string v9, "artist_id"

    .line 60
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const-string v11, "duration"

    .line 61
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const-string v13, "mime_type"

    .line 62
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "is_secretbox"

    .line 63
    invoke-interface {v2, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    const-string v15, "bit_depth"

    .line 66
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    move-object/from16 v17, v13

    const-string v13, "sampling_rate"

    .line 67
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    move/from16 v18, v13

    const-string v13, "_data"

    .line 68
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    if-nez v3, :cond_1

    .line 70
    invoke-static {v13}, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    :cond_1
    invoke-static {v0, v3}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "cp_attrs"

    .line 74
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move/from16 v19, v15

    const-string v15, "source_id"

    .line 75
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    move/from16 v20, v3

    const-string v3, "explicit"

    .line 76
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-wide/from16 v21, v9

    const/4 v9, 0x1

    if-ne v3, v9, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const-string v10, "is_celeb"

    .line 78
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v9, :cond_3

    const/16 v16, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x0

    .line 81
    :goto_2
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    invoke-direct {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;-><init>()V

    const-string v9, "android.media.metadata.TITLE"

    .line 82
    invoke-virtual {v2, v9, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "android.media.metadata.ALBUM"

    .line 83
    invoke-virtual {v2, v0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "android.media.metadata.ARTIST"

    .line 84
    invoke-virtual {v2, v0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "android.media.metadata.ALBUM_ARTIST"

    .line 85
    invoke-virtual {v2, v0, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "android.media.metadata.GENRE"

    .line 86
    invoke-virtual {v2, v0, v6}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "android.media.metadata.MEDIA_ID"

    .line 89
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "com.samsung.android.app.music.metadata.SOURCE_ID"

    .line 90
    invoke-virtual {v2, v0, v15}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "com.samsung.android.app.music.metadata.PLAYING_URI"

    .line 92
    invoke-virtual {v2, v0, v13}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "android.media.metadata.DURATION"

    .line 93
    invoke-virtual {v2, v0, v11, v12}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    move/from16 v4, p3

    int-to-long v4, v4

    .line 94
    invoke-virtual {v2, v0, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    int-to-long v9, v1

    .line 95
    invoke-virtual {v2, v0, v9, v10}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 96
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/MusicStaticFeatures;->u:Z

    if-eqz v0, :cond_4

    const-string v0, "android.media.metadata.DISC_NUMBER"

    .line 97
    invoke-virtual {v2, v0, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "android.media.metadata.TRACK_NUMBER"

    const/4 v4, 0x1

    add-int/2addr v1, v4

    int-to-long v4, v1

    .line 98
    invoke-virtual {v2, v0, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    :cond_4
    const-string v0, "com.samsung.android.app.music.metadata.PLAY_DIRECTION"

    move/from16 v1, p4

    int-to-long v4, v1

    .line 100
    invoke-virtual {v2, v0, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    if-eqz v14, :cond_5

    .line 102
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putPrivateAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    :cond_5
    const-string v0, "com.samsung.android.app.music.metadata.ALBUM_ID"

    .line 104
    invoke-virtual {v2, v0, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "com.samsung.android.app.music.metadata.ARTIST_ID"

    move-wide/from16 v4, v21

    .line 105
    invoke-virtual {v2, v0, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "com.samsung.android.app.music.metadata.CP_ATTRS"

    move/from16 v1, v20

    int-to-long v4, v1

    .line 106
    invoke-virtual {v2, v0, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 107
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->d:Z

    if-eqz v0, :cond_6

    const-string v0, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    move-object/from16 v1, v17

    move/from16 v5, v18

    move/from16 v4, v19

    .line 109
    invoke-static {v5, v4, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/SoundQualityUtils;->a(IILjava/lang/String;)J

    move-result-wide v4

    .line 108
    invoke-virtual {v2, v0, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    :cond_6
    if-eqz v3, :cond_7

    .line 112
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putExplicitAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    :cond_7
    if-eqz v16, :cond_8

    .line 115
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putCelebAttribute()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    :cond_8
    return-object v2
.end method

.method private static a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    .line 152
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 155
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 156
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x2e

    .line 160
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 162
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    return-void
.end method

.method public getExtraData()Landroid/os/Bundle;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->getExtraData()Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->getFilePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, ""

    return-object v0

    :cond_1
    return-object v0
.end method

.method public getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->g:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object v0
.end method

.method public getPlayingUri(I)Landroid/net/Uri;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->getExtraData()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    const-string v2, "player_extra_message"

    .line 191
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "msg_message"

    .line 192
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-nez v1, :cond_2

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->g:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    .line 199
    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->g:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 200
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/app/music/service/metadata/uri/PlayingUriFactory;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object p1

    .line 202
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->isDirectUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 203
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/streaming/MediaProxyServer;->getPathUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p1
.end method

.method public getQueueItemId()J
    .locals 2

    .line 225
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->h:J

    return-wide v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->f:Ljava/lang/String;

    return-object v0
.end method

.method public makeCache(J)V
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->g:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    .line 181
    iget-object v1, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->g:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 182
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/app/music/service/metadata/uri/PlayingUriFactory;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    move-result-object v0

    .line 183
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->makeCache(J)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/MusicProviderPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayingUri;->reset()V

    :cond_0
    return-void
.end method
