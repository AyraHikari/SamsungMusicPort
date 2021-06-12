.class public Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueItemUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-List"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNowPlayingItemDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJ)Landroid/media/MediaDescription;
    .locals 7

    move-object v0, p1

    move-object v1, p2

    .line 67
    new-instance v2, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v2}, Landroid/media/MediaMetadata$Builder;-><init>()V

    const-string v3, "android.media.metadata.TITLE"

    .line 68
    invoke-virtual {v2, v3, p1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    const-string v3, "android.media.metadata.ALBUM"

    move-object v4, p3

    .line 69
    invoke-virtual {v2, v3, p3}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    const-string v3, "android.media.metadata.ARTIST"

    .line 70
    invoke-virtual {v2, v3, p2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    const-string v3, "android.media.metadata.GENRE"

    move-object v4, p4

    .line 71
    invoke-virtual {v2, v3, p4}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    const-string v3, "android.media.metadata.DURATION"

    move-wide v4, p5

    .line 72
    invoke-virtual {v2, v3, p5, p6}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    .line 73
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "com.google.android.music.mediasession.music_metadata"

    .line 74
    invoke-virtual {v2}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 76
    new-instance v2, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v2}, Landroid/media/MediaMetadata$Builder;-><init>()V

    const-string v4, "com.samsung.android.app.music.metadata.CP_ATTRS"

    move-wide/from16 v5, p9

    .line 77
    invoke-virtual {v2, v4, v5, v6}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    const-string v4, "com.samsung.android.app.music.metadata.ALBUM_ID"

    move-wide v5, p7

    .line 78
    invoke-virtual {v2, v4, p7, p8}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    const-string v4, "com.samsung.android.app.music.metadata.ATTRIBUTE"

    move-wide/from16 v5, p13

    .line 79
    invoke-virtual {v2, v4, v5, v6}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    const-string v4, "com.samsung.android.app.music.metadata.SOUND_QUALITY_DATA"

    move-wide/from16 v5, p11

    .line 80
    invoke-virtual {v2, v4, v5, v6}, Landroid/media/MediaMetadata$Builder;->putLong(Ljava/lang/String;J)Landroid/media/MediaMetadata$Builder;

    const-string v4, "com.samsung.android.app.music.metadata.music_metadata.META_OTHERS"

    .line 81
    invoke-virtual {v2}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    move-object v2, p0

    .line 82
    invoke-static {p0, p1, p2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaDescriptionUtils;->getItemDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/media/MediaDescription;

    move-result-object v0

    return-object v0
.end method

.method public static getSortList(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "SMUSIC-SV-List"

    const-string v1, "getSortList() 1 start query"

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 46
    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v6, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v7, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v8, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v3, p0

    .line 47
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    :try_start_0
    const-string v3, "SMUSIC-SV-List"

    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSortList() 2 query complete. takes : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/4 v7, 0x0

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    .line 51
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "_id"

    .line 56
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 57
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SMUSIC-SV-List"

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSortList() getQueue size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 61
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    :try_start_1
    const-string v0, "SMUSIC-SV-List"

    const-string v1, "No data ordered queue"

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_3

    .line 61
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 46
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    .line 61
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    throw v0
.end method

.method public static obtainItem(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJIJJ)Landroid/media/session/MediaSession$QueueItem;
    .locals 17
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const-string v2, "SMUSIC-SV-List"

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queue item id can\'t be under 0 include 0: your request id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 37
    :cond_0
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    move/from16 v3, p12

    int-to-long v11, v3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-wide/from16 v7, p8

    move-wide/from16 v9, p10

    move-wide/from16 v13, p13

    move-wide/from16 v15, p15

    invoke-static/range {v2 .. v16}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueItemUtils;->getNowPlayingItemDescription(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJJJ)Landroid/media/MediaDescription;

    move-result-object v2

    .line 39
    new-instance v3, Landroid/media/session/MediaSession$QueueItem;

    invoke-direct {v3, v2, v0, v1}, Landroid/media/session/MediaSession$QueueItem;-><init>(Landroid/media/MediaDescription;J)V

    return-object v3
.end method
