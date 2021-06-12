.class public Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$OnCompletedEditingListener;,
        Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$EditTask;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private e:Ljava/lang/String;

.field private f:Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$OnCompletedEditingListener;

.field private final g:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

.field private h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "_id"

    .line 48
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->a:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->b:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->c:Ljava/lang/String;

    .line 104
    iput-wide p3, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->d:J

    .line 105
    new-instance p1, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$1;-><init>(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->g:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->h:Landroid/util/SparseArray;

    return-object p1
.end method

.method private a(J)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "external"

    long-to-int p1, p1

    .line 211
    invoke-static {v0, p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUriForAudioId(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object v2

    .line 212
    iget-object v1, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->b:Landroid/content/Context;

    sget-object v3, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->a:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 213
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    .line 215
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "_id"

    .line 217
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 221
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 212
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 221
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_2
    throw v0

    :cond_4
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object p2
.end method

.method private a(Landroid/content/ContentValues;Landroid/util/SparseArray;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentValues;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x2

    .line 314
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x3

    .line 315
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "artist"

    .line 316
    invoke-virtual {v1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "album"

    .line 317
    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v5, :cond_1

    .line 319
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 320
    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/provider/MusicDatabaseUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 321
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MusicDatabaseUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "source_artist_id"

    .line 322
    invoke-virtual {v1, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 323
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "UPDATE artists SET artist=? WHERE artist_id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "MediaMetaWriter"

    .line 324
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "artistId : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", artistInput : "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", artistValue : "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v13, v0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->b:Landroid/content/Context;

    .line 328
    invoke-static {v3, v11}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    new-array v5, v8, [Ljava/lang/String;

    aput-object v4, v5, v7

    const/16 v18, 0x0

    move-object/from16 v17, v5

    .line 327
    invoke-static/range {v13 .. v18}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 330
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_0
    const-string v5, "artist"

    .line 331
    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v6, :cond_3

    .line 334
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 335
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/provider/MusicDatabaseUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MusicDatabaseUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "source_album_id"

    .line 336
    invoke-virtual {v1, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 337
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UPDATE albums SET album=? WHERE album_id="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "MediaMetaWriter"

    .line 338
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "albumId : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", albumInput : "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", albumValue : "

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v11, v0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->b:Landroid/content/Context;

    .line 343
    invoke-static {v3, v9}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(ILjava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-array v15, v8, [Ljava/lang/String;

    aput-object v2, v15, v7

    const/16 v16, 0x0

    .line 342
    invoke-static/range {v11 .. v16}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 345
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_2
    const-string v3, "album"

    .line 346
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private a(Landroid/content/Context;J)V
    .locals 7

    .line 227
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "_id=?"

    const-string v2, "genre"

    const-string v3, "<unknown>"

    .line 229
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 232
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 231
    invoke-static {p1, v2, v0, v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 235
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->a(J)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "audio_id=?"

    .line 238
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string v2, "external"

    .line 240
    invoke-static {v2, v4, v5}, Landroid/provider/MediaStore$Audio$Genres$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 241
    new-array v4, v3, [Ljava/lang/String;

    .line 242
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p1, v2, v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "MediaMetaWriter"

    const-string p2, "genre map and genre_name will be updated as <unknown>"

    .line 245
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 276
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/MusicSyncInfo;->a:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    .line 277
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 279
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    const v1, 0x10001

    const-string v2, "mediaStore"

    .line 283
    invoke-static {p2, v1, v2}, Lcom/samsung/android/app/music/provider/sync/MusicSyncInfo;->a(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "_id"

    .line 285
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "MediaMetaWriter"

    .line 286
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ID on MediaProvider : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v4, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->h:Landroid/util/SparseArray;

    invoke-direct {p0, v1, v4}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->a(Landroid/content/ContentValues;Landroid/util/SparseArray;)V

    .line 290
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->d:Landroid/net/Uri;

    .line 291
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 292
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "source_id=? AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    .line 294
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 295
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 292
    invoke-static {p1, v4, v1, v5, v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_2

    const-string p1, "MediaMetaWriter"

    const-string v1, "Update track failed."

    .line 297
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 309
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    .line 302
    :cond_2
    :try_start_1
    iput-object v0, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->h:Landroid/util/SparseArray;

    .line 304
    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->c(Landroid/content/Context;J)V

    .line 307
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 308
    iget-object p1, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->b:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->HEART_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->a(Landroid/content/Context;Ljava/util/EnumSet;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    .line 309
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, p1

    goto :goto_1

    :cond_4
    :goto_0
    :try_start_2
    const-string p1, "SMUSIC-MediaMetaWriter"

    const-string v1, "Cannot query given uri on media provider."

    .line 280
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_5

    .line 309
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void

    .line 276
    :goto_1
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz p2, :cond_7

    if-eqz v0, :cond_6

    .line 309
    :try_start_4
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_3
    throw p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;Landroid/content/Context;J)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->a(Landroid/content/Context;J)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->a(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;)Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$OnCompletedEditingListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->f:Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$OnCompletedEditingListener;

    return-object p0
.end method

.method private b(Landroid/content/Context;J)V
    .locals 4

    .line 249
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "year"

    const/4 v2, 0x0

    .line 253
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "year_name"

    const-string v2, "<unknown>"

    .line 254
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 257
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v3, p3

    .line 256
    invoke-static {p1, v1, v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string p1, "MediaMetaWriter"

    const-string p2, "year and year_name will be updated as null, <unknown>"

    .line 258
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;Landroid/content/Context;J)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->b(Landroid/content/Context;J)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .line 262
    iget-object v0, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->b:Landroid/content/Context;

    .line 263
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mtp_running_status"

    sget v2, Lcom/samsung/android/app/music/support/android/os/UserHandleCompat;->USER_CURRENT:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/samsung/android/app/music/support/android/provider/SettingsCompat$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "MediaMetaWriter"

    const-string v1, "MTP Connected. send broadcast to update MTP properties."

    .line 266
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.MTP.OBJECT_PROP_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.MtpApplication"

    .line 268
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Path"

    .line 269
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    iget-object p1, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->e:Ljava/lang/String;

    return-object p0
.end method

.method private c(Landroid/content/Context;J)V
    .locals 6
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 352
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->d:Landroid/net/Uri;

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "source_id=? AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    .line 356
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/String;

    .line 357
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v5, p3

    const/4 p2, 0x0

    move-object v0, p1

    move-object v3, v4

    move-object v4, v5

    move-object v5, p2

    .line 353
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 358
    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "_id"

    .line 362
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v2, "MediaMetaWriter"

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID on MusicProvider : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->d:Landroid/net/Uri;

    .line 366
    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 365
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    .line 368
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object p3, p1

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_1
    const-string p1, "SMUSIC-MediaMetaWriter"

    const-string v0, "Cannot query given uri on music provider."

    .line 359
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    .line 368
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    .line 352
    :goto_1
    :try_start_2
    throw p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    .line 368
    :try_start_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_3
    throw p1
.end method

.method static synthetic d(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->d:J

    return-wide v0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;)Landroid/media/MediaScannerConnection$OnScanCompletedListener;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->g:Landroid/media/MediaScannerConnection$OnScanCompletedListener;

    return-object p0
.end method


# virtual methods
.method a(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$OnCompletedEditingListener;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->f:Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$OnCompletedEditingListener;

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->e:Ljava/lang/String;

    return-void
.end method

.method a(Ljava/lang/String;ILandroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$EditTask;

    invoke-direct {v0, p0, p1, p3}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$EditTask;-><init>(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;Ljava/lang/String;Landroid/util/SparseArray;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Integer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$EditTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
