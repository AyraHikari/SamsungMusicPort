.class final Lcom/samsung/android/app/music/service/metadata/playingitem/DlnaDmsPlayingItem;
.super Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "_id"

    const-string v1, "title"

    const-string v2, "album"

    const-string v3, "artist"

    const-string v4, "album_id"

    const-string v5, "duration"

    const-string v6, "_data"

    const-string v7, "mime_type"

    const-string v8, "_size"

    const-string v9, "provider_name"

    const-string v10, "extension"

    const-string v11, "provider_id"

    const-string v12, "seed"

    const-string v13, "genre_name"

    .line 20
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/service/metadata/playingitem/DlnaDmsPlayingItem;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;J)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/DlnaDmsPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 91
    iput-object p2, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/DlnaDmsPlayingItem;->b:Ljava/lang/String;

    .line 92
    iput-wide p3, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/DlnaDmsPlayingItem;->d:J

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;IIIJ)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 15

    .line 33
    sget-object v3, Lcom/samsung/android/app/music/service/metadata/playingitem/DlnaDmsPlayingItem;->a:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    .line 34
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 35
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "title"

    .line 38
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "album"

    .line 39
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "artist"

    .line 40
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "album_id"

    .line 41
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "duration"

    .line 42
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v8, "mime_type"

    .line 43
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v8, "_data"

    .line 44
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "extension"

    .line 45
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v9, "_id"

    .line 46
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    const-string v9, "_size"

    .line 47
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    const-string v9, "provider_name"

    .line 48
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "provider_id"

    .line 49
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    const-string v10, "seed"

    .line 50
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "genre_name"

    .line 51
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 53
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/music/service/metadata/playingitem/DlnaDmsPlayingItem;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 55
    new-instance v13, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    invoke-direct {v13}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;-><init>()V

    const-string v14, "android.media.metadata.TITLE"

    .line 56
    invoke-virtual {v13, v14, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "android.media.metadata.ALBUM"

    .line 57
    invoke-virtual {v13, v0, v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "android.media.metadata.ARTIST"

    .line 58
    invoke-virtual {v13, v0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "android.media.metadata.ALBUM_ARTIST"

    .line 59
    invoke-virtual {v13, v0, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "android.media.metadata.GENRE"

    .line 60
    invoke-virtual {v13, v0, v11}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "android.media.metadata.COMPILATION"

    .line 62
    invoke-virtual {v13, v0, v9}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "android.media.metadata.AUTHOR"

    .line 64
    invoke-virtual {v13, v0, v10}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "android.media.metadata.MEDIA_ID"

    .line 68
    invoke-virtual {v13, v0, v12}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "android.media.metadata.DURATION"

    .line 70
    invoke-virtual {v13, v0, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_SIZE"

    move/from16 v3, p2

    int-to-long v3, v3

    .line 71
    invoke-virtual {v13, v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    move/from16 v3, p3

    int-to-long v3, v3

    .line 72
    invoke-virtual {v13, v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "com.samsung.android.app.music.metadata.PLAY_DIRECTION"

    move/from16 v3, p4

    int-to-long v3, v3

    .line 73
    invoke-virtual {v13, v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "com.samsung.android.app.music.metadata.ALBUM_ID"

    int-to-long v3, v5

    .line 74
    invoke-virtual {v13, v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    const-string v0, "com.samsung.android.app.music.metadata.CP_ATTRS"

    const-wide/32 v3, 0x20004

    .line 75
    invoke-virtual {v13, v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 76
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/feature/DefaultFeatures;->d:Z

    if-eqz v0, :cond_1

    const-string v0, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    const-wide/16 v3, 0x0

    .line 77
    invoke-virtual {v13, v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->putLong(Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;

    .line 79
    :cond_1
    new-instance v0, Lcom/samsung/android/app/music/service/metadata/playingitem/DlnaDmsPlayingItem;

    invoke-virtual {v13}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v3

    move-wide/from16 v4, p5

    invoke-direct {v0, v3, v8, v4, v5}, Lcom/samsung/android/app/music/service/metadata/playingitem/DlnaDmsPlayingItem;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 80
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    goto :goto_1

    .line 36
    :cond_3
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlayingItem;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_4

    .line 80
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    .line 33
    :goto_1
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v1, :cond_6

    if-eqz v3, :cond_5

    .line 80
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    throw v2
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;
    .locals 7

    .line 27
    iget-object v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->uri:Landroid/net/Uri;

    iget v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->listSize:I

    iget v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->listPosition:I

    iget v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->playDirection:I

    iget-wide v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayingItemFactory$Request;->queueItemId:J

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/music/service/metadata/playingitem/DlnaDmsPlayingItem;->a(Landroid/content/Context;Landroid/net/Uri;IIIJ)Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public getExtraData()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/DlnaDmsPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object v0
.end method

.method public getPlayingUri(I)Landroid/net/Uri;
    .locals 0

    .line 112
    iget-object p1, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/DlnaDmsPlayingItem;->b:Ljava/lang/String;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public getQueueItemId()J
    .locals 2

    .line 128
    iget-wide v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/DlnaDmsPlayingItem;->d:J

    return-wide v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/service/metadata/playingitem/DlnaDmsPlayingItem;->c:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCompilation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
