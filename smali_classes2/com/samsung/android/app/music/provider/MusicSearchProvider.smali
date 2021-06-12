.class public Lcom/samsung/android/app/music/provider/MusicSearchProvider;
.super Landroid/content/ContentProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/MusicSearchProvider$QueryParser;
    }
.end annotation


# static fields
.field private static final a:Landroid/net/Uri;

.field private static final b:Landroid/content/UriMatcher;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "content://com.sec.android.app.music.MusicSearchProvider"

    .line 100
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "audio/albumart"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a:Landroid/net/Uri;

    .line 103
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->b:Landroid/content/UriMatcher;

    .line 107
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.MusicSearchProvider"

    const-string v2, "search_suggest_query"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.MusicSearchProvider"

    const-string v2, "search_suggest_query/*"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 110
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.MusicSearchProvider"

    sget-object v2, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_URI_PATH_REGEX_QUERY:Ljava/lang/String;

    const/4 v4, 0x3

    .line 111
    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 113
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->b:Landroid/content/UriMatcher;

    const-string v1, "com.sec.android.app.music.MusicSearchProvider"

    const-string v2, "audio/albumart/#"

    const/4 v5, 0x4

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v6, "_id"

    const-string v7, "suggest_icon_1"

    const-string v8, "suggest_text_1"

    const-string v9, "suggest_text_2"

    const-string v10, "suggest_intent_data"

    const-string v11, "suggest_intent_extra_data"

    .line 116
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->c:[Ljava/lang/String;

    const/16 v0, 0x9

    .line 122
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "suggest_icon_1"

    aput-object v1, v0, v3

    const-string v1, "suggest_icon_2"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "suggest_text_1"

    aput-object v1, v0, v4

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v5

    const-string v1, "suggest_intent_data"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_COLUMN_TARGET_TYPE:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "suggest_intent_extra_data"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/support/android/app/SearchManagerCompat;->SUGGEST_COLUMN_GROUP:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->d:[Ljava/lang/String;

    const-string v0, "title"

    const-string v1, "album"

    const-string v2, "artist"

    .line 130
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->e:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 508
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 511
    :try_start_0
    invoke-static/range {p1 .. p6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->b(Landroid/content/Context;Landroid/net/Uri;)V

    return-object p3

    :catchall_0
    move-exception p3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->b(Landroid/content/Context;Landroid/net/Uri;)V

    throw p3
.end method

.method private a(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 11

    const-string v0, "_id"

    .line 232
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "album_id"

    .line 233
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "title"

    .line 234
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "artist"

    .line 235
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "album"

    .line 236
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-ltz v0, :cond_2

    if-ltz v4, :cond_2

    if-ltz v2, :cond_2

    if-gez v3, :cond_0

    goto :goto_1

    .line 241
    :cond_0
    new-instance v5, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->c:[Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 242
    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x5

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    .line 252
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 253
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 255
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v8, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a:Landroid/net/Uri;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v8, "global_search"

    .line 260
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 263
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 265
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 267
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->moveToFirst()Z

    return-object v5

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/database/Cursor;[Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "Provider"

    .line 279
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getResultFancyCursor : fancyOrigin\'s Count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    .line 280
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", limit "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 279
    invoke-static {v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    return-object v5

    .line 286
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    const/4 v8, 0x7

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    const-string v8, "com.sec.android.app.music"

    .line 288
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "android.resource://com.sec.android.app.music/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const-string v11, "music_player_default_cover_for_sfinder"

    const-string v12, "drawable"

    .line 289
    invoke-virtual {v10, v11, v12, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 288
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 290
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    const v9, 0x7f0b0091

    .line 297
    :try_start_0
    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0b0082

    .line 298
    invoke-virtual {v4, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v11, 0x7f0b03da

    .line 299
    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    new-instance v5, Landroid/database/MatrixCursor;

    sget-object v12, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->d:[Ljava/lang/String;

    invoke-direct {v5, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 309
    new-instance v12, Landroid/database/MatrixCursor;

    sget-object v13, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->d:[Ljava/lang/String;

    invoke-direct {v12, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 310
    new-instance v13, Landroid/database/MatrixCursor;

    sget-object v14, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->d:[Ljava/lang/String;

    invoke-direct {v13, v14}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v1, :cond_d

    if-nez v3, :cond_2

    .line 314
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 316
    :cond_2
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const-string v15, "_id"

    .line 317
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    const-string v14, "mime_type"

    .line 318
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v16, v11

    const-string v11, "artist"

    .line 319
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v17, v13

    const-string v13, "album_id"

    .line 320
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v18, v10

    const-string v10, "album"

    .line 321
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move/from16 v19, v10

    const-string v10, "title"

    .line 322
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move/from16 v20, v10

    const-string v10, "data1"

    .line 323
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v21, v12

    const-string v12, "data2"

    .line 324
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 326
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-object/from16 v22, v9

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v6, :cond_c

    .line 328
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    move/from16 v23, v6

    .line 329
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move/from16 v24, v14

    const-string v14, "artist"

    .line 330
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    const-string v6, "Provider"

    .line 332
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v9

    const-string v9, "getResultFancyCursor : artistCursor\'s Count : "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->getCount()I

    move-result v9

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 332
    invoke-static {v6, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->getCount()I

    move-result v6

    if-lt v6, v3, :cond_3

    move/from16 v33, v3

    move-object/from16 v29, v4

    move/from16 v30, v10

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v32, v18

    move/from16 v14, v19

    move/from16 v4, v20

    move-object/from16 v9, v21

    move-object/from16 v31, v22

    goto/16 :goto_4

    .line 338
    :cond_3
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 339
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9, v2}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 340
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    sget-object v9, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a:Landroid/net/Uri;

    move/from16 v28, v15

    .line 342
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    invoke-static {v9, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v9

    .line 341
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-direct {v0, v4, v1, v10, v12}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a(Landroid/content/Context;Landroid/database/Cursor;II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x2

    .line 348
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v22

    .line 350
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-virtual {v5, v7}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    goto :goto_2

    :cond_4
    move/from16 v28, v15

    move-object/from16 v9, v22

    :goto_2
    move/from16 v33, v3

    move-object/from16 v29, v4

    move-object/from16 v31, v9

    move/from16 v30, v10

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v32, v18

    move/from16 v14, v19

    move/from16 v4, v20

    move-object/from16 v9, v21

    move/from16 v15, v28

    goto/16 :goto_4

    :cond_5
    move/from16 v25, v9

    move/from16 v28, v15

    move-object/from16 v9, v22

    const-string v14, "album"

    .line 354
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v6, "Provider"

    .line 356
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getResultFancyCursor : albumCursor\'s Count : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual/range {v21 .. v21}, Landroid/database/MatrixCursor;->getCount()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 356
    invoke-static {v6, v14}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {v21 .. v21}, Landroid/database/MatrixCursor;->getCount()I

    move-result v6

    if-lt v6, v3, :cond_6

    goto :goto_2

    :cond_6
    move/from16 v14, v19

    .line 362
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 363
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v0, v15, v2}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    move/from16 v15, v28

    .line 364
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    move-object/from16 v29, v4

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    sget-object v4, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a:Landroid/net/Uri;

    move-object/from16 v31, v9

    move/from16 v30, v10

    .line 366
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v4, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 365
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0b042b

    invoke-static {v4, v9, v10}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 369
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    .line 373
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, v18

    .line 375
    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, v21

    .line 377
    invoke-virtual {v9, v7}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    goto/16 :goto_3

    :cond_7
    move-object/from16 v29, v4

    move-object/from16 v31, v9

    move/from16 v30, v10

    move-object/from16 v4, v18

    move-object/from16 v9, v21

    move/from16 v15, v28

    goto/16 :goto_3

    :cond_8
    move-object/from16 v29, v4

    move-object/from16 v31, v9

    move/from16 v30, v10

    move-object/from16 v4, v18

    move/from16 v14, v19

    move-object/from16 v9, v21

    move/from16 v15, v28

    .line 379
    invoke-direct {v0, v6}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "Provider"

    .line 381
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v4

    const-string v4, "getResultFancyCursor : trackCursor\'s Count : "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual/range {v17 .. v17}, Landroid/database/MatrixCursor;->getCount()I

    move-result v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 381
    invoke-static {v6, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    invoke-virtual/range {v17 .. v17}, Landroid/database/MatrixCursor;->getCount()I

    move-result v4

    if-lt v4, v3, :cond_9

    move-object/from16 v3, v17

    goto/16 :goto_5

    :cond_9
    move/from16 v4, v20

    .line 387
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 388
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10, v2}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 389
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    sget-object v10, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a:Landroid/net/Uri;

    move/from16 v33, v3

    .line 391
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v10, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 390
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v10, 0x7f0b042b

    invoke-static {v2, v3, v10}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 394
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .line 398
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v16

    .line 403
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v17

    .line 405
    invoke-virtual {v3, v7}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    goto :goto_4

    :cond_a
    move/from16 v33, v3

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    goto :goto_4

    :cond_b
    :goto_3
    move/from16 v33, v3

    move-object/from16 v32, v4

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v20

    :goto_4
    add-int/lit8 v6, v25, 0x1

    .line 327
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v20, v4

    move-object/from16 v21, v9

    move/from16 v19, v14

    move/from16 v14, v24

    move-object/from16 v4, v29

    move/from16 v10, v30

    move-object/from16 v22, v31

    move-object/from16 v18, v32

    move/from16 v3, v33

    move-object/from16 v2, p2

    move v9, v6

    move/from16 v6, v23

    goto/16 :goto_1

    :cond_c
    move-object/from16 v3, v17

    move-object/from16 v9, v21

    goto :goto_5

    :cond_d
    move-object v9, v12

    move-object v3, v13

    :goto_5
    const-string v1, "Provider"

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "artistCursor count "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/database/MatrixCursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Provider"

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "albumCursor count "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/database/MatrixCursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Provider"

    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trackCursor count "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/database/MatrixCursor;->getCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    new-instance v1, Landroid/database/MergeCursor;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/database/Cursor;

    const/4 v4, 0x0

    aput-object v5, v2, v4

    const/4 v4, 0x1

    aput-object v9, v2, v4

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    return-object v1

    :catch_0
    nop

    const-string v2, "Provider"

    const-string v3, "Text resource not found exception"

    .line 301
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_e

    .line 302
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_e

    .line 303
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->close()V

    :cond_e
    return-object v5
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 473
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 475
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 476
    new-instance v2, Lcom/samsung/android/app/music/provider/MusicSearchProvider$QueryParser;

    invoke-direct {v2}, Lcom/samsung/android/app/music/provider/MusicSearchProvider$QueryParser;-><init>()V

    .line 477
    invoke-virtual {v2, p1}, Lcom/samsung/android/app/music/provider/MusicSearchProvider$QueryParser;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 479
    array-length v2, p1

    const-string v4, "SMUSIC-Provider"

    .line 480
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RegExSeg length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 483
    rem-int/lit8 v5, v4, 0x2

    if-nez v5, :cond_0

    .line 484
    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    aget-object v5, p1, v4

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 490
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Search;->a:Landroid/net/Uri;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 490
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Search;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const/4 p1, 0x0

    .line 494
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 495
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 496
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 495
    :cond_2
    invoke-direct {p0, v1, p1, v3}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a(Landroid/database/Cursor;[Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 498
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p2

    if-nez p2, :cond_3

    .line 499
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    :goto_1
    if-eqz v1, :cond_4

    .line 498
    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result p2

    if-nez p2, :cond_4

    .line 499
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p1
.end method

.method private a(Landroid/content/Context;Landroid/database/Cursor;II)Ljava/lang/String;
    .locals 6

    .line 421
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 423
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/high16 v1, 0x7f0d0000

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 424
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v5, 0x0

    aput-object p3, v4, v5

    .line 423
    invoke-virtual {p1, v1, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p3, 0x7f0d0004

    .line 425
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    new-array v2, v3, [Ljava/lang/Object;

    .line 426
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v5

    .line 425
    invoke-virtual {p1, p3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method private a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 216
    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    const-string p1, "Provider"

    .line 217
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Search: queryInternal grant permission name "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "audio/"

    .line 273
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/ogg"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-ogg"

    .line 274
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 433
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 434
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private b(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 444
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->e:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 446
    sget-object v4, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->e:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " LIKE ?"

    .line 447
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_0

    const-string v4, " ) OR ( "

    .line 450
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string v1, " )"

    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v1, "_id"

    const-string v3, "album_id"

    const-string v6, "title"

    const-string v7, "artist"

    const-string v8, "album"

    filled-new-array {v1, v3, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ( "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ) AND "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "is_music"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v0, 0x3

    new-array v8, v0, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v8, v1

    const/4 v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v0

    sget-object v9, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->e:Ljava/lang/String;

    move-object v3, p0

    .line 455
    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    .line 466
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 468
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x1

    .line 221
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    const-string p1, "Provider"

    const-string p2, "Search: queryInternal revoke granted permission"

    .line 222
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "Provider"

    const-string p2, "Search: not support delete"

    .line 142
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 148
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/albumart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Provider"

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search:  getType uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "vnd.android.cursor.dir/audio"

    return-object p1

    :cond_0
    const-string p1, "Provider"

    const-string v0, "Search: not support getType"

    .line 152
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "Provider"

    const-string p2, "Search: not support insert"

    .line 158
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 2

    const-string v0, "SMUSIC-Provider"

    const-string v1, "Search: onCreate"

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 194
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string p1, "Provider"

    const-string p2, "openFile : only album art uri is valid request."

    .line 196
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 200
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 203
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->b:Landroid/net/Uri;

    .line 204
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 205
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 207
    :try_start_0
    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->b(Landroid/content/Context;Landroid/net/Uri;)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->b(Landroid/content/Context;Landroid/net/Uri;)V

    throw p2
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p2, "Provider"

    .line 171
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "query uri : "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sget-object p2, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->b:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    const/4 p3, 0x1

    const/4 p5, 0x0

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-nez p4, :cond_1

    const-string p2, ""

    const-string p3, "limit"

    .line 180
    invoke-virtual {p1, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 179
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 182
    :cond_1
    aget-object p2, p4, p5

    const-string p3, "limit"

    .line 183
    invoke-virtual {p1, p3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 182
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1

    .line 176
    :cond_2
    aget-object p1, p4, p5

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicSearchProvider;->b(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "Provider"

    const-string p2, "Search: not support update"

    .line 164
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
