.class public final Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Landroid/net/Uri;

.field private static final c:Landroid/net/Uri;

.field private static final d:Landroid/net/Uri;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicSync-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;

    .line 38
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->a:Ljava/lang/String;

    const-string v0, "content://com.sec.android.app.music/sync/local/update"

    .line 48
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->b:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.music/"

    .line 51
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->c:Landroid/net/Uri;

    .line 53
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/16 v1, 0xa

    .line 55
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->d:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v1, "date_modified"

    const-string v2, "album_id"

    const-string v3, "artist_id"

    const-string v4, "title"

    .line 58
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->e:[Ljava/lang/String;

    const-string v0, "1 * source_id AS source_id"

    const-string v1, "date_modified"

    const-string v2, "source_album_id"

    const-string v3, "source_artist_id"

    const-string v4, "title"

    .line 66
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->f:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/net/Uri;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 36
    invoke-static/range {p0 .. p5}, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->b(Landroid/content/Context;Landroid/net/Uri;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I
    .locals 7

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    :try_start_0
    sget-object v3, Lcom/samsung/android/app/music/provider/sync/MusicSyncInfo;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    .line 318
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    .line 320
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const v1, 0x10001

    const-string v2, "mediaStore"

    .line 322
    invoke-static {p1, v1, v2}, Lcom/samsung/android/app/music/provider/sync/MusicSyncInfo;->a(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    .line 324
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 326
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->b:Landroid/net/Uri;

    .line 327
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 329
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ContentValues;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    .line 328
    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 331
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    move-object p2, p0

    .line 317
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 331
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_5
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    throw p0

    :cond_4
    if-eqz p1, :cond_5

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 332
    :catch_2
    sget-object p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->a:Ljava/lang/String;

    const-string p1, "update exception. Maybe "

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Landroid/content/Context;Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;)I
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    iget-object v1, p1, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "source_id"

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " NOT IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->b:Ljava/lang/String;

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") AND "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p1, "cp_attrs"

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x10001

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 145
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_1

    const-string v0, "content://com.sec.android.app.music/audio"

    .line 149
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 148
    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_1
    return p1
.end method

.method private static a(Landroid/content/Context;Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;)I
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 226
    iget-object v3, v1, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->b:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, v2, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    goto/16 :goto_9

    .line 235
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 237
    new-instance v3, Ljava/util/StringTokenizer;

    iget-object v5, v1, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->b:Ljava/lang/String;

    const-string v6, ","

    invoke-direct {v3, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v5, Ljava/util/StringTokenizer;

    iget-object v6, v2, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->b:Ljava/lang/String;

    const-string v7, ","

    invoke-direct {v5, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 241
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 245
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "_id"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " IN ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v10, v9

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_2
    const/4 v14, 0x2

    const/4 v15, 0x1

    if-eqz v6, :cond_d

    if-eqz v8, :cond_d

    .line 251
    invoke-virtual {v6, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-lez v16, :cond_4

    .line 253
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_4
    if-gez v16, :cond_6

    .line 256
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 260
    :cond_6
    iget-object v8, v1, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->d:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 261
    iget-object v8, v2, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->d:Ljava/util/List;

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 262
    iget-object v8, v1, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->c:Ljava/util/List;

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 263
    iget-object v7, v2, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->c:Ljava/util/List;

    invoke-interface {v7, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 264
    iget-object v4, v1, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->e:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 265
    iget-object v4, v2, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->e:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 266
    iget-object v4, v1, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->f:Ljava/util/List;

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 267
    iget-object v4, v2, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->f:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    cmp-long v4, v16, v18

    if-nez v4, :cond_8

    cmp-long v4, v20, v22

    if-nez v4, :cond_8

    cmp-long v4, v24, v26

    if-nez v4, :cond_8

    .line 271
    invoke-virtual {v8, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    move v4, v9

    goto :goto_6

    .line 272
    :cond_8
    :goto_5
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v9, 0x1

    const/16 v6, 0xa

    if-ne v4, v6, :cond_a

    .line 275
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v15

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 278
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 277
    invoke-static {v0, v4, v6}, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v4

    add-int/2addr v11, v4

    .line 279
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v4, "_id"

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " IN ("

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    rem-int/lit16 v4, v11, 0xc8

    if-nez v4, :cond_9

    .line 283
    new-array v4, v14, [Landroid/net/Uri;

    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Meta;->b:Landroid/net/Uri;

    aput-object v6, v4, v15

    invoke-static {v0, v4}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;[Landroid/net/Uri;)V

    :cond_9
    const/4 v4, 0x0

    .line 289
    :cond_a
    :goto_6
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    :cond_b
    const/4 v7, 0x0

    .line 290
    :goto_7
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_c
    const/4 v6, 0x0

    :goto_8
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v13, v13, 0x1

    move v9, v4

    move-object v8, v6

    move-object v6, v7

    goto/16 :goto_2

    :cond_d
    if-lez v9, :cond_e

    .line 298
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v15

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 300
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)I

    move-result v1

    add-int/2addr v11, v1

    .line 303
    :cond_e
    rem-int/lit16 v1, v11, 0xc8

    if-eqz v1, :cond_f

    .line 304
    new-array v1, v14, [Landroid/net/Uri;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Meta;->b:Landroid/net/Uri;

    aput-object v2, v1, v15

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;[Landroid/net/Uri;)V

    :cond_f
    return v11

    :cond_10
    :goto_9
    const/4 v3, 0x0

    return v3
.end method

.method static a(Landroid/content/Context;Ljava/util/EnumSet;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;
    .locals 5
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/music/provider/sync/SyncOperation;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;"
        }
    .end annotation

    .line 87
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->c(Landroid/content/Context;)V

    .line 89
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_TRACK_DELETE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 90
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_TRACK_INSERT:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 91
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_TRACK_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    .line 94
    sget-object p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    return-object p0

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 103
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;

    move-result-object v0

    .line 104
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->a(Landroid/content/Context;Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;)I

    move-result v4

    goto :goto_0

    :cond_1
    move-object v0, v2

    const/4 v4, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 108
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->b(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;

    move-result-object v2

    .line 109
    invoke-static {p0, v2}, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->b(Landroid/content/Context;Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;)I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    if-nez v0, :cond_3

    .line 114
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;

    move-result-object v0

    :cond_3
    if-nez v2, :cond_4

    .line 117
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->b(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;

    move-result-object v2

    .line 119
    :cond_4
    invoke-static {p0, v0, v2}, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->a(Landroid/content/Context;Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;)I

    move-result p1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-nez v4, :cond_6

    if-nez v1, :cond_6

    if-eqz p1, :cond_7

    .line 123
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " I:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", D:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", U:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    .line 125
    new-array v0, v0, [Ljava/lang/String;

    aput-object p2, v0, v3

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/provider/MusicDBInfo$SyncLog;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 128
    :cond_7
    new-instance p0, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;

    invoke-direct {p0, v1, v4, p1}, Lcom/samsung/android/app/music/provider/sync/LocalSyncUpResult;-><init>(III)V

    return-object p0
.end method

.method private static a(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;
    .locals 12

    .line 338
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->e:[Ljava/lang/String;

    const-string v3, "title!=\'\' AND is_music=1"

    const-string v5, "_id"

    const/4 v4, 0x0

    move-object v0, p0

    .line 339
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v7, "_id"

    const-string v8, "date_modified"

    const-string v9, "title"

    const-string v10, "album_id"

    const-string v11, "artist_id"

    move-object v6, p0

    .line 342
    invoke-static/range {v6 .. v11}, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 345
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 338
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_2

    if-eqz v0, :cond_1

    .line 345
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    throw v1
.end method

.method private static a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;
    .locals 10
    .param p0    # Landroid/database/Cursor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 367
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;-><init>(Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$1;)V

    if-eqz p0, :cond_4

    .line 369
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 379
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->a:I

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    new-instance v2, Ljava/util/ArrayList;

    iget v3, v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->a:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->d:Ljava/util/List;

    .line 382
    new-instance v2, Ljava/util/ArrayList;

    iget v3, v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->a:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->c:Ljava/util/List;

    .line 383
    new-instance v2, Ljava/util/ArrayList;

    iget v3, v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->a:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->e:Ljava/util/List;

    .line 384
    new-instance v2, Ljava/util/ArrayList;

    iget v3, v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->a:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->f:Ljava/util/List;

    .line 386
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 387
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 388
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    .line 389
    invoke-interface {p0, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    .line 390
    invoke-interface {p0, p5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p5

    .line 398
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 399
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 400
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 401
    invoke-interface {p0, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 402
    invoke-interface {p0, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 403
    invoke-interface {p0, p5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    if-nez v2, :cond_1

    goto :goto_0

    .line 408
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 409
    iget-object v2, v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->d:Ljava/util/List;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v2, v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->c:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    iget-object v2, v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->e:Ljava/util/List;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v2, v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->f:Ljava/util/List;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 415
    :cond_2
    iget p0, v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->a:I

    if-lez p0, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_3

    .line 416
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->b:Ljava/lang/String;

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    const/4 p0, 0x0

    .line 370
    iput p0, v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->a:I

    .line 371
    iput-object v1, v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->b:Ljava/lang/String;

    .line 372
    iput-object v1, v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->d:Ljava/util/List;

    .line 373
    iput-object v1, v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->c:Ljava/util/List;

    .line 374
    iput-object v1, v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->e:Ljava/util/List;

    .line 375
    iput-object v1, v0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->f:Ljava/util/List;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

    .line 526
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->e(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "most_played"

    .line 531
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "most_played"

    .line 532
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "recently_added_remove_flag"

    .line 533
    invoke-virtual {p3, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 534
    sget-object p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->a:Ljava/lang/String;

    const-string p1, "updateAudioMediaInternal : update is not related to Playlist\'s default playlist"

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 539
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v8, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$1;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {v0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 549
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/net/Uri;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 8

    .line 555
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p4, " AND "

    .line 556
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/high16 p4, 0x10000

    invoke-static {p4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "group_concat(source_id, \',\')"

    .line 558
    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object v2

    const-string v1, "audio_meta"

    .line 561
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    move-object v4, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_a

    const/4 p4, 0x0

    .line 563
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 566
    :cond_0
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 567
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 571
    :cond_1
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "most_played"

    .line 572
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "most_played"

    .line 574
    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    const-string v1, "most_played"

    .line 576
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "most_played"

    .line 578
    invoke-virtual {p2, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_3
    const-string v1, "recently_added_remove_flag"

    .line 581
    invoke-virtual {p3, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    if-eqz p3, :cond_4

    const-string v1, "recently_added_remove_flag"

    .line 583
    invoke-virtual {p2, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 590
    :cond_4
    sget-object p3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 591
    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    .line 592
    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p3

    const-string v1, "SENDER"

    const-string v2, "SMUSIC"

    invoke-virtual {p3, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p3

    .line 593
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id IN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 595
    invoke-static {p0, p3, p2, v0, p5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_5

    .line 596
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    return p0

    :cond_6
    :goto_0
    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    return p2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object p4, p0

    .line 560
    :try_start_1
    throw p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_9

    if-eqz p4, :cond_8

    .line 596
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p4, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_8
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_9
    :goto_2
    throw p0

    :cond_a
    :goto_3
    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_b
    return p2
.end method

.method private static b(Landroid/content/Context;Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;)I
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 168
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    const-wide/16 v0, 0x0

    const/4 v9, 0x0

    move-wide v10, v0

    move-wide v13, v10

    const/4 v12, 0x0

    .line 171
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    iget-object v2, v8, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "_id"

    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " NOT IN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;->b:Ljava/lang/String;

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "title"

    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "!=\'\' AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "is_music"

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=1 AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_id"

    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 181
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    .line 182
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 181
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v15

    .line 183
    :try_start_0
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->d:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/android/app/music/provider/sync/MusicSyncInfo;->a:[Ljava/lang/String;

    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "_id"

    move-object/from16 v1, p0

    .line 183
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v1, :cond_1

    .line 186
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    :goto_1
    const/4 v3, 0x0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v2, v0

    goto :goto_4

    :cond_1
    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x1

    const/4 v5, 0x2

    if-lez v3, :cond_6

    const-string v3, "_id"

    .line 188
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 189
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 190
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    const v6, 0x10001

    const-string v2, "mediaStore"

    .line 191
    invoke-static {v1, v6, v2}, Lcom/samsung/android/app/music/provider/sync/MusicSyncInfo;->a(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 195
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ContentValues;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    .line 194
    invoke-static {v7, v15, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v12, v0

    .line 197
    :try_start_2
    rem-int/lit16 v0, v12, 0xc8

    if-nez v0, :cond_3

    .line 198
    new-array v0, v5, [Landroid/net/Uri;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    aput-object v2, v0, v9

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Meta;->b:Landroid/net/Uri;

    aput-object v2, v0, v4

    .line 199
    invoke-static {v7, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;[Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    if-eqz v1, :cond_a

    .line 205
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_8

    :catch_1
    move-wide v10, v13

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-wide v10, v13

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v0

    move-wide v10, v13

    .line 183
    :goto_4
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    :goto_5
    if-eqz v1, :cond_5

    if-eqz v3, :cond_4

    .line 205
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    :try_start_6
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_6
    throw v2

    :cond_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_7
    if-lez v12, :cond_8

    .line 210
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->d(Landroid/content/Context;)V

    .line 213
    :cond_8
    rem-int/lit16 v0, v12, 0xc8

    if-eqz v0, :cond_9

    .line 214
    new-array v0, v5, [Landroid/net/Uri;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Meta;->b:Landroid/net/Uri;

    aput-object v1, v0, v4

    invoke-static {v7, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;[Landroid/net/Uri;)V

    :cond_9
    return v12

    :catch_4
    :goto_7
    move-wide v13, v10

    :cond_a
    :goto_8
    move-wide v10, v13

    goto/16 :goto_0
.end method

.method private static b(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;
    .locals 12

    .line 349
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->f:[Ljava/lang/String;

    const-string v3, "title!=\'\' AND is_music=1 AND cp_attrs=65537"

    const-string v5, "source_id"

    const/4 v4, 0x0

    move-object v0, p0

    .line 350
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v7, "source_id"

    const-string v8, "date_modified"

    const-string v9, "title"

    const-string v10, "source_album_id"

    const-string v11, "source_artist_id"

    move-object v6, p0

    .line 352
    invoke-static/range {v6 .. v11}, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper$CombinedInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 355
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 349
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_2

    if-eqz v0, :cond_1

    .line 355
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    throw v1
.end method

.method private static c(Landroid/content/Context;)V
    .locals 8

    .line 427
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$DBSyncInfo;->a:Landroid/net/Uri;

    const-string v0, "sync_locale"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "sync_content_type=?"

    const-string v0, "MediaProvider"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 431
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 432
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    :catch_0
    move-exception p0

    move-object v2, p0

    goto/16 :goto_1

    :cond_0
    move-object v3, v2

    .line 435
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 436
    sget-object v4, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkLocale() -  Locale.getDefault(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", currentLocale: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 440
    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(I)Ljava/lang/String;

    move-result-object v3

    .line 441
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "date_modified"

    .line 442
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 443
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    .line 444
    invoke-static {p0, v5, v4, v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 447
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 448
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "MM-dd hh:mm:ss.SSS"

    .line 449
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v5, "sync_content_type"

    const-string v6, "MediaProvider"

    .line 450
    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "sync_date_integer"

    .line 452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "sync_date_format"

    .line 453
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "sync_full_update"

    .line 454
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "sync_msg"

    .line 455
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sync_locale"

    .line 456
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$DBSyncInfo;->a:Landroid/net/Uri;

    invoke-static {p0, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-eqz v0, :cond_2

    .line 459
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    .line 427
    :goto_1
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v2, :cond_3

    .line 459
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_3
    throw p0
.end method

.method private static d(Landroid/content/Context;)V
    .locals 10

    .line 464
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->b:Landroid/net/Uri;

    const-string v0, "group_concat(source_album_id, \',\')"

    .line 465
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "_data IS NULL"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 470
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 471
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v2, 0x0

    .line 475
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 476
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 478
    :cond_1
    sget-object v5, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v4, "album_art"

    .line 479
    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v6

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id IN ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    .line 482
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz v0, :cond_2

    .line 505
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    .line 486
    :cond_3
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_5

    if-eqz v0, :cond_4

    .line 505
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    .line 490
    :cond_5
    :try_start_2
    new-array v4, v3, [Landroid/content/ContentValues;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_6

    .line 492
    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 493
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    aput-object v6, v4, v5

    .line 494
    aget-object v6, v4, v5

    const-string v7, "source_album_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 495
    aget-object v6, v4, v5

    const-string v7, "_data"

    const/4 v8, 0x1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    aget-object v6, v4, v5

    const-string v7, "album_art_location"

    const-string v8, "mediaStore"

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 501
    :cond_6
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->b:Landroid/net/Uri;

    .line 502
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "match"

    const-string v5, "albumArt"

    invoke-virtual {v2, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 503
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 504
    invoke-static {p0, v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_7

    .line 505
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v1, p0

    .line 481
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    if-eqz v0, :cond_9

    if-eqz v1, :cond_8

    .line 505
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    :goto_2
    throw p0

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_2
    move-exception p0

    move-object v1, p0

    goto :goto_4

    .line 472
    :cond_a
    :goto_3
    :try_start_5
    sget-object p0, Lcom/samsung/android/app/music/provider/sync/SyncAudioHelper;->a:Ljava/lang/String;

    const-string v2, "syncAlbumArtTables : get (source_album_id,\',\') is failed."

    invoke-static {p0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_b

    .line 476
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_b
    return-void

    .line 469
    :goto_4
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    if-eqz v0, :cond_d

    if-eqz v1, :cond_c

    .line 476
    :try_start_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_c
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_d
    :goto_6
    throw p0
.end method
