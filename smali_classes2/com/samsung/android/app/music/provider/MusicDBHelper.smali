.class public final Lcom/samsung/android/app/music/provider/MusicDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/MusicDBHelper$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/provider/MusicDBHelper$Companion;

.field private static volatile c:Lcom/samsung/android/app/music/provider/MusicDBHelper;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/app/music/provider/MusicDBHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a:Lcom/samsung/android/app/music/provider/MusicDBHelper$Companion;

    const-string v0, "title_pinyin TEXT,genre_name_pinyin TEXT,composer_pinyin TEXT,_display_name_pinyin TEXT,bucket_display_name_pinyin TEXT"

    .line 1368
    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, ","

    new-instance v2, Lkotlin/text/Regex;

    invoke-direct {v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    .line 1404
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 1405
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 1406
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1407
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1369
    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_0

    .line 1408
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 1412
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object v0

    :goto_1
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_13

    .line 1414
    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->d:[Ljava/lang/String;

    const-string v0, "album_pinyin TEXT"

    .line 1372
    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, ","

    new-instance v4, Lkotlin/text/Regex;

    invoke-direct {v4, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    .line 1415
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1416
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 1417
    :cond_3
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1418
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1373
    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_3

    .line 1419
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    .line 1423
    :cond_5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object v0

    :goto_3
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_11

    .line 1425
    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->e:[Ljava/lang/String;

    const-string v0, "artist_pinyin TEXT"

    .line 1376
    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, ","

    new-instance v4, Lkotlin/text/Regex;

    invoke-direct {v4, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    .line 1426
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 1427
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 1428
    :cond_6
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1429
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1377
    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_7

    const/4 v4, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    if-nez v4, :cond_6

    .line 1430
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_5

    .line 1434
    :cond_8
    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object v0

    :goto_5
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_f

    .line 1436
    new-array v2, v1, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->f:[Ljava/lang/String;

    const-string v0, "name_pinyin TEXT"

    .line 1380
    check-cast v0, Ljava/lang/CharSequence;

    const-string v2, ","

    new-instance v4, Lkotlin/text/Regex;

    invoke-direct {v4, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    .line 1437
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1438
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 1439
    :cond_9
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1440
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1381
    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :goto_6
    if-nez v4, :cond_9

    .line 1441
    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/util/ListIterator;->nextIndex()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->b(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_7

    .line 1445
    :cond_b
    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object v0

    :goto_7
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_d

    .line 1447
    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->g:[Ljava/lang/String;

    return-void

    :cond_c
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1446
    :cond_d
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1436
    :cond_e
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1435
    :cond_f
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1425
    :cond_10
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1424
    :cond_11
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1414
    :cond_12
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1413
    :cond_13
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "smusic.db"

    const/4 v1, 0x0

    const/16 v2, 0x5338

    .line 26
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object p1, p0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b:Landroid/content/Context;

    const-string p1, "MusicDBInfo"

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicDBHelper : pinyin enabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->l_:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", MUSIC_PROVIDER_ENABLED : false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 29
    invoke-static {v1, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->setWriteAheadLoggingEnabled(Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic a()Lcom/samsung/android/app/music/provider/MusicDBHelper;
    .locals 1

    .line 25
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->c:Lcom/samsung/android/app/music/provider/MusicDBHelper;

    return-object v0
.end method

.method public static final declared-synchronized a(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/MusicDBHelper;
    .locals 2

    const-class v0, Lcom/samsung/android/app/music/provider/MusicDBHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a:Lcom/samsung/android/app/music/provider/MusicDBHelper$Companion;

    invoke-virtual {v1, p0}, Lcom/samsung/android/app/music/provider/MusicDBHelper$Companion;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/MusicDBHelper;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP VIEW IF EXISTS audio"

    .line 479
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS album_art"

    .line 480
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS audio_with_albumart"

    .line 481
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS album_info"

    .line 482
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS artist_info"

    .line 483
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS music_folders_view"

    .line 484
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS searchhelpertitle"

    .line 485
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS audio_playlists"

    .line 486
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS audio_playlists_map"

    .line 487
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS audio_playlists_map_cache"

    .line 488
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS download_queue"

    .line 489
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS dlna_dms_contents_table"

    .line 490
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS inventory"

    .line 491
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS remote_songs"

    .line 492
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS remote_songs_view"

    .line 493
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    if-gt p2, p3, :cond_1

    const/16 p3, 0x4ee8

    if-ge p2, p3, :cond_0

    const-string p2, "now_playing_queue_unique"

    const-string p3, "_id INTEGER PRIMARY KEY, audio_id INTEGER NOT NULL, recent_order INTEGER NOT NULL"

    .line 465
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "now_playing_queue_unique_view"

    const-string p3, "SELECT NPQU.*, CASE when PT.audio_id is null then AM._id else PT.audio_id end AS purchased_audio_id FROM now_playing_queue_unique AS NPQU LEFT JOIN audio_meta AS AM ON AM._id = NPQU.audio_id LEFT JOIN purchased_track AS PT ON PT.local_track_ext_320k = AM.local_track_id OR PT.local_track_ext = AM.local_track_id"

    .line 469
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 458
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal update request: can\'t downgrade from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Did you forget to wipe data?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MusicDBInfo"

    .line 456
    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;IILandroid/content/Context;)V
    .locals 3

    const-string v0, "MusicDBInfo"

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDatabase fromVersion["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "],  toVersion["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]) start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 85
    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    if-gt p2, p3, :cond_26

    const/16 v0, 0x2711

    if-ge p2, v0, :cond_0

    .line 98
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    const/16 v0, 0x2719

    if-ge p2, v0, :cond_1

    .line 103
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    const/16 v0, 0x4e38

    if-ge p2, v0, :cond_2

    const-string v0, "ALTER TABLE favorites ADD COLUMN content_location INTEGER DEFAULT 1"

    .line 107
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_2
    const/16 v0, 0x4e6d

    if-ge p2, v0, :cond_3

    .line 112
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.music.action.CLEAR_DISK_CACHE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 115
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->h(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "DROP TABLE IF EXISTS sync_count"

    .line 118
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "smusic_db_info"

    const-string v1, "sync_content_type TEXT UNIQUE on conflict replace, sync_date_integer INTEGER, sync_date_format TEXT, sync_full_update INTEGER, sync_msg TEXT, sync_locale TEXT"

    .line 119
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "restore_list"

    const-string v1, "_id INTEGER PRIMARY KEY AUTOINCREMENT, restore_action INTEGER NOT NULL, from_version INTEGER, to_version INTEGER, extra TEXT"

    .line 123
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/16 v0, 0x4e6e

    if-ge p2, v0, :cond_4

    .line 130
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->i(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "now_playing_queue_map"

    const-string v1, "_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,play_order INTEGER NOT NULL"

    .line 132
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DELETE FROM audio_playlists WHERE name=?"

    const-string v1, "now playing list 0123456789"

    .line 139
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    const/16 v0, 0x4ee8

    if-ge p2, v0, :cond_5

    .line 145
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "DROP TABLE IF EXISTS music_cache_map"

    .line 146
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS audio_playlists_map_cache"

    .line 147
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "favorites"

    const-string v1, "hearts"

    .line 148
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->l_:Z

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Z)V

    const-string v0, "audio_playlists_map_data_index"

    const-string v1, "audio_playlists_map(audio_data)"

    .line 152
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, p1, p4}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V

    .line 158
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->j(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 159
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->k(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p4, "hearts"

    const-string v0, "sub_category_type INTEGER DEFAULT 0"

    .line 162
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 165
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->d(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p4, "milk_drm"

    const-string v0, "_id INTEGER PRIMARY KEY AUTOINCREMENT, audio_id INTEGER UNIQUE,validity INTEGER DEFAULT 0,track_id TEXT"

    .line 168
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "UPDATE audio_meta SET date_modified=0"

    .line 176
    invoke-virtual {p1, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_5
    const/16 p4, 0x4ee9

    if-ge p2, p4, :cond_6

    .line 180
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->l(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_6
    const/16 p4, 0x4eec

    if-ge p2, p4, :cond_7

    const-string p4, "audio_meta"

    const-string v0, "explicit INTEGER DEFAULT 0"

    .line 186
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_7
    const/16 p4, 0x4eee

    if-ge p2, p4, :cond_8

    const-string p4, "sync_log"

    const-string v0, "time DATETIME, message TEXT"

    .line 191
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/16 p4, 0x4ef0

    if-ge p2, p4, :cond_9

    const-string p4, "INSERT OR IGNORE INTO hearts (category_type,category_id, cp_attrs) VALUES (65540, -11, 65537)"

    .line 198
    invoke-virtual {p1, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_9
    const/16 p4, 0x4ef3

    if-ge p2, p4, :cond_a

    const-string p4, "DROP TABLE IF EXISTS streaming_cache_table"

    .line 206
    invoke-virtual {p1, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_a
    const/16 p4, 0x4efd

    if-ge p2, p4, :cond_b

    .line 210
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->m(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p4, "smusic_db_log"

    const-string v0, "time DATETIME, message TEXT"

    .line 211
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const/16 p4, 0x5082

    if-ge p2, p4, :cond_c

    const-string p4, "audio_meta"

    const-string v0, "folder_hide INTEGER NOT NULL DEFAULT 0"

    .line 220
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    const-string p4, "folders"

    const-string v0, "hide INTEGER NOT NULL DEFAULT 0"

    .line 224
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 226
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->n(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p4, "hide_backup"

    const-string v0, "folder_bucket_id TEXT UNIQUE NOT NULL, hide INTEGER NOT NULL default 0"

    .line 227
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p4, "milk_drm_view"

    const-string v0, "SELECT milk_drm._id AS _id, audio_id, title, album_id, album, artist_id, artist, _data, is_secretbox, sampling_rate, mime_type, bit_depth, is_drm, validity, track_id  FROM milk_drm LEFT OUTER JOIN audio ON audio._id = milk_drm.audio_id WHERE drm_type=2"

    .line 233
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "search_track"

    .line 237
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->c()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "search_album"

    .line 241
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->b()Ljava/lang/String;

    move-result-object v0

    .line 239
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const/16 p4, 0x5087

    if-ge p2, p4, :cond_d

    const-string p4, "folders"

    const-string v0, "combined_album_ids TEXT"

    .line 248
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_d
    const/16 p4, 0x5096

    if-ge p2, p4, :cond_e

    .line 253
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->o(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_e
    const/16 p4, 0x50a0

    if-ge p2, p4, :cond_f

    .line 257
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->p(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_f
    const/16 p4, 0x50be

    if-ge p2, p4, :cond_10

    .line 261
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->q(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_10
    const/16 p4, 0x50c8

    if-ge p2, p4, :cond_11

    const-string p4, "audio_playlists_conflict"

    const-string v0, "_id INTEGER PRIMARY KEY AUTOINCREMENT, local_time DATETIME DEFAULT (DATETIME(\'now\', \'localtime\')), local_playlist_id INTEGER UNIQUE on conflict ignore, local_playlist_name TEXT, local_device_name TEXT, local_date_modified INTEGER, local_modified_state INTEGER, server_playlist_id TEXT, server_playlist_name TEXT, server_device_name TEXT, server_date_modified INTEGER, server_modified_state INTEGER, handled INTEGER DEFAULT 0"

    .line 265
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "audio_playlists_conflict_history"

    const-string v0, "_id INTEGER PRIMARY KEY AUTOINCREMENT, local_time DATETIME DEFAULT (DATETIME(\'now\', \'localtime\')), local_playlist_id, local_playlist_name TEXT, local_device_name TEXT, local_date_modified INTEGER, local_modified_state INTEGER, server_playlist_id TEXT, server_playlist_name TEXT, server_device_name TEXT, server_date_modified INTEGER, server_modified_state INTEGER, handled INTEGER DEFAULT 0"

    .line 269
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "audio_playlists_conflict_delete_trigger"

    const-string v0, "DELETE ON audio_playlists_conflict BEGIN INSERT INTO audio_playlists_conflict_history (handled, local_playlist_id, local_playlist_name, local_device_name, local_date_modified, local_modified_state, server_playlist_id, server_playlist_name, server_device_name, server_date_modified, server_modified_state) SELECT handled, local_playlist_id, local_playlist_name, local_device_name, local_date_modified, local_modified_state, server_playlist_id, server_playlist_name, server_device_name, server_date_modified, server_modified_state FROM audio_playlists_conflict WHERE audio_playlists_conflict._id=old._id AND old.handled!=0; DELETE FROM audio_playlists_conflict_history WHERE rowid IN (SELECT rowid FROM audio_playlists_conflict_history ORDER BY rowid DESC LIMIT 50,-1); END"

    .line 273
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "online_sync_log"

    const-string v0, "local_time DATETIME DEFAULT (DATETIME(\'now\', \'localtime\')), message TEXT"

    .line 278
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    const/16 p4, 0x50d2

    if-ge p2, p4, :cond_12

    const-string p4, "spotify_chart"

    const-string v0, "_id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, image_url TEXT, uri TEXT, uri_type TEXT, album_id TEXT, album_name TEXT, chart_name TEXT"

    .line 295
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    const/16 p4, 0x50d3

    if-ge p2, p4, :cond_13

    .line 302
    sget-boolean p4, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p4, :cond_13

    const-string p4, "UPDATE audio_playlists SET source_playlist_id=NULL WHERE is_sync=0 AND name!=?"

    const-string v0, "FavoriteList#328795!432@1341"

    .line 305
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 303
    invoke-virtual {p1, p4, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    const/16 p4, 0x50d4

    if-ge p2, p4, :cond_14

    const-string p4, "delete_log"

    const-string v0, "time DATETIME DEFAULT (DATETIME(\'now\')), message TEXT"

    .line 311
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    const/16 p4, 0x50d5

    if-ge p2, p4, :cond_15

    const-string v0, "audio_meta_update_of_local_track_id_trigger"

    const-string v1, "UPDATE OF local_track_id ON audio_meta WHEN old.local_track_id!=new.local_track_id BEGIN UPDATE audio_playlists_map SET audio_source_id=new.local_track_id WHERE audio_id=new._id; END"

    .line 318
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    const/16 v0, 0x5079

    if-le v0, p2, :cond_16

    goto :goto_0

    :cond_16
    if-lt p4, p2, :cond_17

    .line 326
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->r(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_17
    :goto_0
    const/16 p4, 0x50d7    # 2.9E-41f

    if-ge p2, p4, :cond_18

    .line 330
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->s(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_18
    const/16 p4, 0x51ab

    if-ge p2, p4, :cond_19

    .line 335
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->t(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string p4, "audio_playlists_cleanup"

    const-string v0, "DELETE ON audio_playlists BEGIN DELETE FROM audio_playlists_map WHERE playlist_id = old._id;END;"

    .line 336
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    const/16 p4, 0x51ad

    if-ge p2, p4, :cond_1a

    const-string p4, "audio_meta"

    const-string v0, "is_celeb INTEGER DEFAULT 0"

    .line 345
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 347
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1a
    const/16 p4, 0x51af

    if-ge p2, p4, :cond_1b

    const-string p4, "online_sync_info"

    const-string v0, "key TEXT NOT NULL, name TEXT, value TEXT NOT NULL, CONSTRAINT unique_key UNIQUE(key) ON CONFLICT REPLACE"

    .line 351
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    const/16 p4, 0x51b0

    if-ge p2, p4, :cond_1c

    .line 358
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->u(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1c
    const/16 p4, 0x51b3

    if-ge p2, p4, :cond_1d

    const-string p4, "playlist_server_response_info"

    const-string v0, "_id INTEGER PRIMARY KEY, playlist_id TEXT NOT NULL UNIQUE ON CONFLICT REPLACE, playlist_title TEXT,regist_date TEXT, update_date TEXT, server_order INTEGER, type INTEGER, track_count INTEGER, image_url TEXT, update_device_id TEXT, latest_update_date TEXT"

    .line 362
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    const/16 p4, 0x51b4

    if-ge p2, p4, :cond_1e

    .line 369
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->v(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1e
    const/16 p4, 0x51b5

    if-ge p2, p4, :cond_1f

    const-string p4, "recommended_playlist_map"

    const-string v0, "_id INTEGER PRIMARY KEY, playlist_id INTEGER NOT NULL, audio_id INTEGER NOT NULL"

    .line 373
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const/16 p4, 0x52d0

    if-ge p2, p4, :cond_20

    const-string p4, "CREATE TABLE IF NOT EXISTS milk_drm (_id INTEGER PRIMARY KEY AUTOINCREMENT, audio_id INTEGER UNIQUE,validity INTEGER DEFAULT 0,track_id TEXT);"

    .line 381
    invoke-virtual {p1, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p4, "CREATE VIEW IF NOT EXISTS milk_drm_view AS SELECT milk_drm._id AS _id, audio_id, title, album_id, album, artist_id, artist, _data, is_secretbox, sampling_rate, mime_type, bit_depth, is_drm, validity, track_id  FROM milk_drm LEFT OUTER JOIN audio ON audio._id = milk_drm.audio_id WHERE drm_type=2"

    .line 382
    invoke-virtual {p1, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_20
    const/16 p4, 0x52d1

    if-ge p2, p4, :cond_21

    const-string p4, "folders"

    const-string v0, "dummy TEXT"

    .line 389
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_21
    const/16 p4, 0x5334

    if-ge p2, p4, :cond_22

    .line 394
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_22
    const/16 p4, 0x5335

    if-ge p2, p4, :cond_23

    const-string p4, "display_name_index"

    const-string v0, "audio_meta(_display_name)"

    .line 398
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "local_track_id_index"

    const-string v0, "audio_meta(local_track_id)"

    .line 403
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "audio_playlists_map_audio_id_index"

    const-string v0, "audio_playlists_map(audio_id)"

    .line 409
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "audio_playlists_map_audio_source_id_index"

    const-string v0, "audio_playlists_map(audio_source_id)"

    .line 414
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "audio_playlists_map_file_name_index"

    const-string v0, "audio_playlists_map(audio_file_name)"

    .line 419
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    const/16 p4, 0x5336

    if-ge p2, p4, :cond_24

    const-string p4, "search_artist"

    .line 429
    sget-object v0, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->a()Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    const/16 p4, 0x5338

    if-ge p2, p4, :cond_25

    const-string p4, "hearts"

    const-string v0, "category_id_extra_album_artist TEXT"

    const-string v1, "category_id_extra_bucket_id TEXT"

    .line 437
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-direct {p0, p1, p4, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 444
    :cond_25
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/provider/RestoreContentsUtil;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 446
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateDatabase fromVersion["

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], toVersion["

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]) end"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MusicDBInfo"

    .line 447
    invoke-static {v2, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    const-string p3, "INSERT INTO smusic_db_log (time, message) VALUES (strftime(\'%Y-%m-%d %H:%M:%f\',\'now\'),?)"

    .line 450
    new-array p4, v2, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, p4, v0

    .line 448
    invoke-virtual {p1, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 92
    :cond_26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Illegal update request: can\'t downgrade from "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". Did you forget to wipe data?"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MusicDBInfo"

    .line 90
    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/Context;)V
    .locals 3

    const-string v0, "audio_playlists"

    const-string v1, "sort_by INTEGER DEFAULT -1"

    .line 962
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 960
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "music_player_pref"

    const/4 v1, 0x4

    .line 964
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "playlist_sorting_rule"

    const/4 v2, 0x0

    .line 966
    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 970
    sget-object v0, Lcom/samsung/android/app/music/info/MusicPreference$Value$Library$PlaylistSorting;->a:Ljava/lang/String;

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v1, 0x2

    .line 974
    :cond_0
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "sort_by"

    .line 975
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "audio_playlists"

    const-string v1, "name=?"

    const-string v2, "FavoriteList#328795!432@1341"

    .line 978
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 976
    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V
    .locals 8

    const-string v0, "SELECT _id FROM audio_playlists WHERE upper(name)=? AND source_playlist_id IS NULL"

    const/4 v1, 0x1

    .line 1230
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p1, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    check-cast p2, Ljava/io/Closeable;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, p2

    check-cast v2, Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1232
    invoke-static {p2, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    const/4 v4, 0x1

    .line 1239
    :goto_1
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ge p3, v5, :cond_2

    .line 1240
    invoke-interface {v2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1241
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1243
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE audio_playlists SET name=name||\' ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")\' WHERE _id=?"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1244
    new-array v6, v1, [Ljava/lang/String;

    aput-object v5, v6, v3

    .line 1242
    invoke-virtual {p1, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    move v4, v7

    goto :goto_1

    .line 1248
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1230
    invoke-static {p2, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, p1

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    invoke-static {p2, v0}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TABLE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ("

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 854
    invoke-direct {p0, p1, v0, p3}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ") "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "SELECT "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", 65537 FROM "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 855
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 859
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "DROP TABLE "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 860
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ALTER TABLE "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " RENAME TO "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 869
    invoke-direct {p0, p1, v0, p3}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x10001

    .line 870
    invoke-static {p7, p8, p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    .line 876
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "INSERT INTO "

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p8, " ("

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p8, ", "

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", "

    invoke-virtual {p7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ") "

    invoke-virtual {p7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "SELECT "

    invoke-virtual {p7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", 65537, "

    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " FROM "

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 875
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 879
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "DROP TABLE "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 880
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ALTER TABLE "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " RENAME TO "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .line 1402
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    .line 705
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ALTER TABLE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ADD COLUMN "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "MusicDBInfo"

    .line 707
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "alter column duplicate column : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final a(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 46

    const-string v0, "_id, source_id, _data, _size, mime_type, title, title_key, _display_name, duration, track, artist_id, album_id, genre, composer, year, year_name, bucket_id, bucket_display_name, sampling_rate, bit_depth, is_music, is_favorite, is_secretbox, is_drm, date_added, date_modified, date_updated, recently_played, most_played, recently_added_remove_flag, media_type"

    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", title_pinyin, genre_name_pinyin, composer_pinyin, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_display_name_pinyin, bucket_display_name_pinyin"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "album_id, source_album_id, album_key, album, album_artist"

    .line 776
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", album_pinyin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "album_id, source_album_id, album_art_location, _data"

    const-string v4, "artist_id, source_artist_id, artist_key, artist"

    .line 785
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", artist_pinyin"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v14, "_id, category_type, category_id, favorite_name, album_id, data1, data2, display_order"

    const-string v8, "_id, source_id, _data, name, date_added, date_modified, synced_hashcode"

    .line 794
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", name_pinyin"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v16, "source_id"

    const-string v17, "source_playlist_id"

    const/16 v18, 0x0

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object v15, v8

    .line 797
    invoke-static/range {v15 .. v20}, Lkotlin/text/StringsKt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 800
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", name_pinyin"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v27, "_id, audio_id, audio_source_id, playlist_id, play_order, audio_data"

    const-string v30, "audio_meta"

    const-string v31, "_id INTEGER PRIMARY KEY AUTOINCREMENT,source_id TEXT,title_unique_key TEXT UNIQUE NOT NULL,_data TEXT UNIQUE on conflict ignore,_size INTEGER,mime_type TEXT,title TEXT,title_key TEXT,_display_name TEXT,duration INTEGER,track INTEGER,artist_id INTEGER,album_id INTEGER,genre TEXT default \'<unknown>\',composer TEXT default \'<unknown>\', year INTEGER, year_name TEXT default \'<unknown>\',bucket_id TEXT,bucket_display_name TEXT,sampling_rate INTEGER default 0,bit_depth INTEGER default 0,is_music INTEGER default 1,is_favorite INTEGER default 0,is_secretbox INTEGER default 0,is_drm INTEGER default 0,date_added INTEGER,date_modified INTEGER,date_updated INTEGER,recently_played INTEGER default 0,most_played INTEGER default 0,recently_added_remove_flag INTEGER default 0, media_type INTEGER default 2,title_pinyin TEXT,genre_name_pinyin TEXT,composer_pinyin TEXT,_display_name_pinyin TEXT,bucket_display_name_pinyin TEXT,music_album_artist TEXT, music_album_artist_key TEXT, music_album_artist_pinyin TEXT, genre_name_key TEXT, composer_key TEXT, display_name_key TEXT, bucket_display_name_key TEXT, cp_attrs INTEGER NOT NULL"

    if-eqz p2, :cond_0

    move-object/from16 v32, v1

    goto :goto_0

    :cond_0
    move-object/from16 v32, v0

    :goto_0
    const-string v33, "cp_attrs"

    const-string v34, "title_unique_key"

    const-string v35, "source_id"

    const-string v36, "title"

    move-object/from16 v28, p0

    move-object/from16 v29, p1

    .line 805
    invoke-direct/range {v28 .. v36}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v39, "albums"

    const-string v40, "album_id INTEGER PRIMARY KEY, source_album_id TEXT, album_unique_key TEXT UNIQUE NOT NULL, album_key TEXT NOT NULL,album TEXT NOT NULL, album_artist TEXT, album_pinyin TEXT, album_cp_attrs INTEGER NOT NULL"

    if-eqz p2, :cond_1

    move-object/from16 v41, v3

    goto :goto_1

    :cond_1
    move-object/from16 v41, v2

    :goto_1
    const-string v42, "album_cp_attrs"

    const-string v43, "album_unique_key"

    const-string v44, "source_album_id"

    const-string v45, "album"

    move-object/from16 v37, p0

    move-object/from16 v38, p1

    .line 810
    invoke-direct/range {v37 .. v45}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v30, "artists"

    const-string v31, "artist_id INTEGER PRIMARY KEY, source_artist_id TEXT, artist_unique_key TEXT UNIQUE NOT NULL, artist_key TEXT NOT NULL, artist TEXT NOT NULL,artist_pinyin TEXT, is_multple_artist INTEGER DEFAULT 0, artist_cp_attrs INTEGER NOT NULL"

    if-eqz p2, :cond_2

    move-object/from16 v32, v5

    goto :goto_2

    :cond_2
    move-object/from16 v32, v4

    :goto_2
    const-string v33, "artist_cp_attrs"

    const-string v34, "artist_unique_key"

    const-string v35, "source_artist_id"

    const-string v36, "artist"

    move-object/from16 v28, p0

    move-object/from16 v29, p1

    .line 815
    invoke-direct/range {v28 .. v36}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "hearts"

    const-string v13, "_id INTEGER PRIMARY KEY AUTOINCREMENT,category_type INTEGER,category_id TEXT,favorite_name TEXT,album_id INTEGER,data1 INTEGER DEFAULT 0,data2 INTEGER DEFAULT 0,display_order INTEGER DEFAULT 0, cp_attrs INTEGER NOT NULL,CONSTRAINT unique_favorites UNIQUE(category_type, category_id)"

    const-string v15, "cp_attrs"

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 820
    invoke-direct/range {v10 .. v15}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "album_art"

    const-string v0, "source_album_id TEXT, album_id INTEGER UNIQUE,album_art_location TEXT,_data TEXT,CONSTRAINT unique_album_art UNIQUE(source_album_id, album_art_location) ON CONFLICT REPLACE"

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object v1, v7

    move-object v7, v0

    move-object v0, v8

    move-object v8, v9

    .line 826
    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "audio_playlists"

    const-string v13, "_id INTEGER PRIMARY KEY,source_playlist_id TEXT, _data TEXT UNIQUE COLLATE NOCASE,name TEXT NOT NULL,date_added INTEGER,date_modified INTEGER,synced_hashcode TEXT,name_pinyin TEXT,name_key TEXT"

    if-eqz p2, :cond_3

    move-object/from16 v14, v21

    goto :goto_3

    :cond_3
    move-object v14, v0

    :goto_3
    if-eqz p2, :cond_4

    move-object/from16 v15, v16

    goto :goto_4

    :cond_4
    move-object v15, v1

    :goto_4
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 833
    invoke-direct/range {v10 .. v15}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v24, "audio_playlists_map"

    const-string v25, "_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,playlist_id INTEGER NOT NULL,play_order INTEGER NOT NULL,audio_source_id TEXT,audio_data TEXT"

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move-object/from16 v26, v27

    .line 840
    invoke-direct/range {v22 .. v27}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/provider/MusicDBHelper;)V
    .locals 0

    .line 25
    sput-object p0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->c:Lcom/samsung/android/app/music/provider/MusicDBHelper;

    return-void
.end method

.method private final b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    const-string v1, "sqlite_master"

    const-string v0, "type"

    const-string v2, "name"

    .line 499
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "(type=? OR type=?) AND name LIKE ?"

    const-string v0, "view"

    const-string v4, "table"

    const-string v5, "melon_%"

    .line 501
    filled-new-array {v0, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 497
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1384
    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    const/4 v2, 0x0

    check-cast v2, Ljava/lang/Throwable;

    :try_start_0
    move-object v3, v1

    check-cast v3, Landroid/database/Cursor;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1395
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 506
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 507
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "MusicDBInfo"

    .line 509
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "clearMelonDatabase : type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "view"

    const-string v6, "type"

    .line 510
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP VIEW "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 513
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP TABLE "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1398
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1400
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1384
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v0, "DROP TABLE IF EXISTS audio_meta_cache"

    .line 517
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS audio_playlists_map_online_cache"

    .line 518
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS dcf"

    .line 519
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS dcf_view"

    .line 521
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TRIGGER IF EXISTS dcf_cleanup"

    .line 522
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TRIGGER IF EXISTS melon_thumbnails_update_trigger"

    .line 523
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TRIGGER IF EXISTS download_complete_trigger"

    .line 524
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE FROM albums WHERE source_album_id IS NULL OR album_content_location!=1"

    .line 526
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE FROM album_art WHERE source_album_id IS NULL OR album_art_location!=\'mediaStore\'"

    .line 527
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE FROM artists WHERE source_artist_id IS NULL OR artist_content_location!=1"

    .line 528
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE FROM audio_meta WHERE content_location!=1"

    .line 530
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE FROM audio_playlists_map WHERE audio_data LIKE \'dummy_data_%\'"

    .line 532
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v2, p1

    .line 1384
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v1, v2}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private final b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP VIEW IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE VIEW IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AS "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private final b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 888
    invoke-direct {p0, p1, v0, p3}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INSERT INTO "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ") "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "SELECT "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " FROM "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 889
    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 893
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "DROP TABLE "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 894
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "ALTER TABLE "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " RENAME TO "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private final c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "dlna_dms_contents_table"

    const-string v1, "_id INTEGER PRIMARY KEY, provider_id TEXT, provider_name TEXT, artist TEXT, album TEXT, album_id INTEGER, title TEXT, _data TEXT, mime_type TEXT, duration INTEGER, _size LONG, extension TEXT, seed TEXT, genre TEXT"

    .line 537
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dlna_open_intent_table"

    const-string v1, "_id INTEGER PRIMARY KEY, provider_id TEXT, provider_name TEXT, artist TEXT, album TEXT, album_id INTEGER, title TEXT, _data TEXT, mime_type TEXT, duration INTEGER, _size LONG, extension TEXT, seed TEXT, genre TEXT"

    .line 542
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dlna_dms_table"

    const-string v1, "_id INTEGER PRIMARY KEY, provider_id TEXT, provider_name TEXT, album_art TEXT, nic_id TEXT"

    .line 547
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dlna_dmr_table"

    const-string v1, "_id INTEGER PRIMARY KEY, avplayer_id TEXT, avplayer_name TEXT, album_art TEXT, nic_id TEXT, is_seekable_on_paused INTEGER, ip_address TEXT"

    .line 552
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS dlna_album_art"

    .line 557
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS dlna_album_art (album_id INTEGER PRIMARY KEY, album_art TEXT);"

    .line 558
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private final c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TRIGGER IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private final d(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "album_id_idx"

    const-string v1, "audio_meta(album_id)"

    .line 565
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "artist_id_idx"

    const-string v1, "audio_meta(artist_id)"

    .line 570
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "title_idx"

    const-string v1, "audio_meta(title)"

    .line 575
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "titlekey_index"

    const-string v1, "audio_meta(title_key)"

    .line 580
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "music_artist_name_index"

    const-string v1, "audio_meta(music_album_artist)"

    .line 585
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "genre_index"

    const-string v1, "audio_meta(genre)"

    .line 590
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "composer_index"

    const-string v1, "audio_meta(composer)"

    .line 595
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bucket_id_index"

    const-string v1, "audio_meta(bucket_id)"

    .line 600
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "path_index"

    const-string v1, "audio_meta(_data)"

    .line 605
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "albumkey_index"

    const-string v1, "albums(album_key)"

    .line 611
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "album_idx"

    const-string v1, "albums(album)"

    .line 616
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "artistkey_index"

    const-string v1, "artists(artist_key)"

    .line 622
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "artist_idx"

    const-string v1, "artists(artist)"

    .line 627
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP INDEX IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE INDEX IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private final e(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "audio"

    .line 635
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$Audio;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Audio;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/MusicDBInfo$Audio;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "music_album_info"

    .line 637
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$Album;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Album;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/MusicDBInfo$Album;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "music_artist_info"

    .line 638
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$Artist;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Artist;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/MusicDBInfo$Artist;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "music_album_artist_view"

    .line 642
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$AlbumArtist;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$AlbumArtist;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/MusicDBInfo$AlbumArtist;->a()Ljava/lang/String;

    move-result-object v1

    .line 639
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "music_genres_view"

    .line 644
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$Genre;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Genre;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/MusicDBInfo$Genre;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "music_folders_view"

    .line 645
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/MusicDBInfo$Folder;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "music_composers_view"

    .line 646
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$Composer;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Composer;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/MusicDBInfo$Composer;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "search_helper_title"

    const-string v1, "SELECT * FROM audio ORDER BY title  COLLATE LOCALIZED "

    .line 648
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "search"

    .line 655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " UNION ALL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " UNION ALL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    sget-object v2, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/provider/MusicDBInfo$Search;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "bixby_total_search"

    .line 665
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBInfo$BixBySearch;->a:Lcom/samsung/android/app/music/provider/MusicDBInfo$BixBySearch;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/provider/MusicDBInfo$BixBySearch;->a()Ljava/lang/String;

    move-result-object v1

    .line 662
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final e(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string v1, "sqlite_master"

    const-string v0, "name"

    .line 719
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "type=? AND name=?"

    const/4 v0, 0x2

    .line 720
    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "table"

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    .line 718
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 721
    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 722
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ALTER TABLE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " RENAME TO "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 725
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 721
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private final f(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "MusicDBInfo"

    const-string v1, "createAudioTable"

    .line 729
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio_meta"

    const-string v1, "_id INTEGER PRIMARY KEY AUTOINCREMENT,source_id INTEGER,_data TEXT UNIQUE on conflict ignore,_size INTEGER,mime_type TEXT,title TEXT,title_key TEXT,_display_name TEXT,duration INTEGER,track INTEGER,artist_id INTEGER,album_id INTEGER,genre TEXT default \'<unknown>\',composer TEXT default \'<unknown>\', year INTEGER, year_name TEXT default \'<unknown>\',bucket_id TEXT,bucket_display_name TEXT,sampling_rate INTEGER default 0,bit_depth INTEGER default 0,is_music INTEGER default 1,is_favorite INTEGER default 0,is_secretbox INTEGER default 0,is_drm INTEGER default 0,date_added INTEGER,date_modified INTEGER,date_updated INTEGER,recently_played INTEGER default 0,most_played INTEGER default 0,recently_added_remove_flag INTEGER default 0, media_type INTEGER default 2,content_location INTEGER,exclusivity INTEGER,CONSTRAINT unique_contents UNIQUE(source_id, content_location) ON CONFLICT IGNORE"

    .line 731
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "albums"

    const-string v1, "album_id INTEGER PRIMARY KEY, source_album_id INTEGER, album_key TEXT NOT NULL,album TEXT NOT NULL, album_artist TEXT, album_content_location INTEGER NOT NULL, CONSTRAINT unique_albums UNIQUE(source_album_id, album_content_location), CONSTRAINT unique_albums_key UNIQUE(album_key, album_content_location)"

    .line 736
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "album_art"

    const-string v1, "source_album_id INTEGER, album_id INTEGER UNIQUE,album_art_location TEXT,_data TEXT,CONSTRAINT unique_album_art UNIQUE(source_album_id, album_art_location) ON CONFLICT REPLACE"

    .line 741
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "artists"

    const-string v1, "artist_id INTEGER PRIMARY KEY, source_artist_id INTEGER, artist_key TEXT NOT NULL, artist TEXT NOT NULL, artist_content_location INTEGER NOT NULL, CONSTRAINT unique_artist UNIQUE(source_artist_id, artist_content_location), CONSTRAINT unique_artist_key UNIQUE(artist_key, artist_content_location)"

    .line 746
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->l_:Z

    if-eqz v0, :cond_0

    const-string v0, "audio_meta"

    .line 753
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBHelper;->d:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "albums"

    .line 754
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBHelper;->e:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "artists"

    .line 755
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBHelper;->f:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final g(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "favorites"

    const-string v1, "_id INTEGER PRIMARY KEY AUTOINCREMENT,category_type INTEGER,category_id TEXT,favorite_name TEXT,album_id INTEGER,data1 INTEGER DEFAULT 0,data2 INTEGER DEFAULT 0,display_order INTEGER DEFAULT 0, CONSTRAINT unique_favorites UNIQUE(category_type, category_id)"

    .line 898
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "INSERT OR IGNORE INTO favorites (category_type,category_id) VALUES ( 65540,-11)"

    .line 899
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private final h(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    const-string v0, "audio_playlists"

    const-string v1, "_id INTEGER PRIMARY KEY,source_id INTEGER,_data TEXT UNIQUE COLLATE NOCASE,name TEXT NOT NULL,date_added INTEGER,date_modified INTEGER,synced_hashcode TEXT"

    .line 906
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 911
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->l_:Z

    if-eqz v0, :cond_0

    const-string v0, "audio_playlists"

    .line 912
    sget-object v1, Lcom/samsung/android/app/music/provider/MusicDBHelper;->g:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    const-string v0, "audio_playlists_map"

    const-string v1, "_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,playlist_id INTEGER NOT NULL,play_order INTEGER NOT NULL,audio_source_id INTEGER DEFAULT 0"

    .line 914
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sync_playlist_list"

    const-string v1, "_id INTEGER PRIMARY KEY, playlist_id INTEGER NOT NULL, playlist_name TEXT, sync_down_action TEXT, request_date INTEGER NOT NULL, CONSTRAINT unique_sync_list UNIQUE(playlist_id, sync_down_action) ON CONFLICT REPLACE"

    .line 920
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sync_playlist_list_update_trigger"

    const-string v1, "AFTER INSERT ON sync_playlist_list BEGIN UPDATE sync_playlist_list SET playlist_name=(SELECT name FROM audio_playlists WHERE audio_playlists._id=new.playlist_id); END"

    .line 925
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "name"

    const-string v2, "FavoriteList#328795!432@1341"

    .line 933
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_data"

    const-string v2, "FavoriteList#328795!432@1341"

    .line 936
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 934
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "date_added"

    .line 938
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v4, 0x3e8

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "audio_playlists"

    const/4 v2, 0x0

    .line 939
    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private final i(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "audio_playlists_map"

    const-string v1, "audio_data TEXT"

    .line 945
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 943
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "audio_playlists_map_data_index"

    const-string v1, "audio_playlists_map(audio_data)"

    .line 947
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->d(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "UPDATE audio_playlists_map SET audio_data=(SELECT _data FROM audio_meta WHERE _id=audio_id)"

    .line 953
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE FROM audio_playlists_map WHERE audio_data is NULL"

    .line 956
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private final j(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "UPDATE audio_meta SET music_album_artist=(SELECT CASE WHEN album_artist IS NULL THEN artist ELSE album_artist END FROM (SELECT _id, artist, album_artist FROM audio_meta LEFT OUTER JOIN artists ON audio_meta.artist_id=artists.artist_id LEFT OUTER JOIN albums ON audio_meta.album_id=albums.album_id) AS tmp_audio WHERE tmp_audio._id=audio_meta._id)"

    .line 985
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "UPDATE audio_meta SET music_album_artist=? WHERE music_album_artist IS NULL"

    const-string v1, "<unknown>"

    .line 997
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 995
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "UPDATE audio_meta SET composer=? WHERE composer IS NULL"

    const-string v1, "<unknown>"

    .line 1003
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1001
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final k(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3

    const-string v0, "audio_meta"

    const-string v1, "local_track_id TEXT"

    const-string v2, "drm_type INTEGER DEFAULT 0"

    .line 1010
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 1008
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "audio_playlists"

    const-string v1, "is_sync INTEGER DEFAULT 0"

    .line 1018
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1016
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "audio_playlists_map"

    const-string v1, "audio_cp_attrs INTEGER"

    const-string v2, "server_track_seq_id TEXT"

    .line 1023
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 1021
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "hearts"

    const-string v1, "server_category_id TEXT"

    .line 1031
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1029
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private final l(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "UPDATE audio_meta SET local_track_id=track||\'@\'||_size||\'@\'||duration WHERE cp_attrs=65537 AND local_track_id IS NULL"

    .line 1036
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private final m(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "folders"

    const-string v1, "_id INTEGER PRIMARY KEY, bucket_id TEXT, folder_bucket_id TEXT, bucket_display_name TEXT, bucket_display_name_pinyin TEXT, parent_path TEXT, path TEXT UNIQUE NOT NULL, album_id INTEGER default 0, number_of_tracks INTEGER default 0, number_of_sub_folders INTEGER default 0, number_of_total_sub_folders INTEGER default 0"

    .line 1045
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final n(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 10

    const-string v0, "MusicDBInfo"

    const-string v1, "removeFoldersFilter20610"

    .line 1053
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sqlite_master"

    const-string v0, "name"

    .line 1055
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "name=\'folders_filter\' AND type=\'table\'"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    .line 1054
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 1057
    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 1058
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "MusicDBInfo"

    const-string v3, "folders_filter backup process"

    .line 1059
    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "UPDATE folders SET hide=1 WHERE folders.folder_bucket_id IN (SELECT folder_bucket_id FROM folders_filter WHERE filter=1);"

    .line 1062
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "UPDATE audio_meta SET folder_hide=1 WHERE bucket_id IN (SELECT folder_bucket_id FROM folders_filter WHERE folders_filter.filter=1)"

    .line 1066
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1068
    :cond_0
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v0, "DROP TABLE IF EXISTS filter_backup"

    .line 1070
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TRIGGER IF EXISTS folders_insert_trigger"

    .line 1073
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TRIGGER IF EXISTS folders_delete_trigger"

    .line 1074
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TRIGGER IF EXISTS folders_update_trigger"

    .line 1075
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP VIEW IF EXISTS music_folders_tree_view"

    .line 1076
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS folders_filter"

    .line 1077
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "MusicDBInfo"

    const-string v0, "folders_filter and related components removed."

    .line 1078
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 1057
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private final o(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11

    .line 1082
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "audio_meta"

    const-string v3, "virtual_album TEXT"

    const-string v4, "virtual_artist TEXT"

    .line 1086
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    .line 1084
    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1091
    sget-boolean v2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v2, :cond_1

    const-string v4, "sqlite_master"

    const-string v2, "name"

    .line 1093
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "name=\'virtual_audio_meta\' AND type=\'table\'"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    .line 1092
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    check-cast v2, Ljava/io/Closeable;

    const/4 v3, 0x0

    .line 1095
    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v2

    check-cast v4, Landroid/database/Cursor;

    if-eqz v4, :cond_0

    .line 1096
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "virtual_audio_meta"

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "source_id"

    const-string v5, "title"

    const v6, 0x80008

    .line 1099
    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "source_id"

    .line 1104
    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1105
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT OR IGNORE INTO audio_meta (source_id, _data, title_unique_key, title, virtual_artist, virtual_album, local_track_id, cp_attrs, drm_type) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "SELECT source_id, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "title, artist, null, source_id, 524296, drm_type "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "FROM virtual_audio_meta "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "WHERE source_id IN "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(SELECT audio_source_id FROM audio_playlists_map WHERE audio_cp_attrs=524296)"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1112
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v4, "UPDATE audio_playlists_map SET audio_id=(SELECT _id FROM audio_meta WHERE source_id=audio_source_id) WHERE audio_cp_attrs=524296"

    .line 1119
    invoke-virtual {p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v4, 0x1

    :try_start_2
    const-string v5, "MusicDBInfo"

    const-string v6, "deleteVirtualAudioMetaAndAlterAudioTitleToMap20630 : update audio_id is failed"

    .line 1122
    invoke-static {v4, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1129
    :cond_0
    :goto_0
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1095
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    move-object v3, p1

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_2
    const-string v2, "DROP TABLE IF EXISTS virtual_audio_meta"

    .line 1132
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string p1, "MusicDBInfo"

    .line 1135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addColumnAudioTitleToPlaylistMap_20616 takes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final p(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "audio_playlists_map"

    const-string v1, "storage_order INTEGER DEFAULT 0"

    .line 1141
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1139
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "UPDATE audio_playlists_map SET audio_cp_attrs = CASE WHEN audio_data LIKE \'dummy_data%\' THEN ? ELSE ? END WHERE server_track_seq_id IS NULL"

    const/4 v1, 0x2

    .line 1149
    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x80002

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x10001

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1145
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "UPDATE audio_playlists_map SET storage_order = CASE WHEN audio_cp_attrs & 15 = 1 THEN 100 WHEN audio_cp_attrs & 15 = 2 THEN 200 WHEN audio_cp_attrs & 15 = 8 THEN 300 END "

    .line 1152
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private final q(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    const-string v4, "_id, source_playlist_id, _data, name, name_pinyin, date_added, is_sync, sort_by, rowid"

    const-string v5, "_id, source_playlist_id, _data, name, name_pinyin, date_added, is_sync, sort_by, display_order"

    const-string v2, "audio_playlists"

    const-string v3, "_id INTEGER PRIMARY KEY, source_playlist_id TEXT, _data TEXT UNIQUE COLLATE NOCASE, name TEXT NOT NULL, name_pinyin TEXT, date_added INTEGER DEFAULT 0, date_synced INTEGER DEFAULT 0, date_modified INTEGER DEFAULT 0, modified_state INTEGER DEFAULT 0, is_sync INTEGER DEFAULT 0, sort_by INTEGER DEFAULT -1, display_order INTEGER DEFAULT 0, date_recently_played INTEGER DEFAULT 0"

    move-object v0, p0

    move-object v1, p1

    .line 1170
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "audio_playlists_cleanup"

    const-string v1, "DELETE ON audio_playlists BEGIN DELETE FROM audio_playlists_map WHERE playlist_id = old._id;END;"

    .line 1176
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final r(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5

    .line 1183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "UPDATE audio_playlists_map SET audio_cp_attrs = (SELECT cp_attrs FROM audio_meta WHERE audio_id=audio_meta._id) WHERE audio_id IN (SELECT audio_id FROM audio_playlists_map, audio_meta WHERE audio_id=audio_meta._id AND audio_cp_attrs!=cp_attrs)"

    .line 1184
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v2, "UPDATE audio_playlists_map SET audio_cp_attrs=65537 WHERE audio_cp_attrs=524289"

    .line 1191
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "MusicDBInfo"

    .line 1195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAudioPlaylistMap20694 takes "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final s(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 8

    const-string v0, "SELECT * FROM (SELECT count(*) AS playlist_count, upper(name) AS upper_name, sum(is_sync) AS online_count FROM audio_playlists GROUP BY upper_name) WHERE playlist_count > 1"

    const/4 v1, 0x0

    .line 1204
    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    check-cast v1, Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v2, v0

    check-cast v2, Landroid/database/Cursor;

    if-eqz v2, :cond_2

    .line 1205
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "upper_name"

    .line 1209
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "online_count"

    .line 1210
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 1211
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1212
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1213
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "upperName"

    .line 1214
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v5, v6}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)V

    goto :goto_0

    .line 1216
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1204
    :try_start_2
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 1206
    :cond_2
    :goto_1
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v1, p1

    .line 1204
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception p1

    const/4 v0, 0x1

    const-string v1, "MusicDBInfo"

    .line 1221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "renameDuplicatedPlaylist20695 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final t(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    const-string v0, "favorite_album_art"

    const-string v1, "_id INTEGER PRIMARY KEY AUTOINCREMENT, thumbnail_id TEXT, thumbnail_type INTEGER, image_url TEXT,CONSTRAINT unique_favorite_album_art UNIQUE(thumbnail_id, thumbnail_type) ON CONFLICT IGNORE"

    .line 1252
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "favorite_tracks_map"

    const-string v1, "_id INTEGER PRIMARY KEY, audio_id INTEGER NOT NULL, play_order INTEGER NOT NULL, audio_source_id TEXT,audio_data TEXT, audio_cp_attrs INTEGER, storage_order INTEGER DEFAULT 0, modified_state INTEGER DEFAULT 0, date_modified INTEGER DEFAULT 0"

    .line 1256
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "favorite_tracks_info"

    const-string v1, "sort_by INTEGER DEFAULT -1"

    .line 1260
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "favorite_tracks_info_insert_trigger"

    const-string v1, "BEFORE INSERT ON favorite_tracks_info BEGIN DELETE FROM favorite_tracks_info;END"

    .line 1264
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->c(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hearts"

    const-string v1, "modified_state INTEGER DEFAULT 0"

    .line 1270
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1268
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "SELECT _id FROM audio_playlists WHERE name=?"

    const-string v1, "audio_id, play_order, audio_data, audio_source_id, audio_cp_attrs, storage_order"

    .line 1276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO favorite_tracks_map ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "SELECT "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FROM audio_playlists_map WHERE playlist_id=("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FavoriteList#328795!432@1341"

    .line 1280
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 1278
    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "INSERT INTO favorite_tracks_info (sort_by) SELECT sort_by FROM audio_playlists WHERE name=?"

    const-string v3, "FavoriteList#328795!432@1341"

    .line 1286
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 1283
    invoke-virtual {p1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1291
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE FROM audio_playlists_map WHERE playlist_id=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1290
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE FROM audio_playlists WHERE name=?"

    const-string v1, "FavoriteList#328795!432@1341"

    .line 1295
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1293
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "UPDATE hearts SET display_order=display_order+1"

    .line 1299
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "UPDATE hearts SET display_order=0 WHERE category_type=? AND category_id=?"

    const/4 v1, 0x2

    .line 1302
    new-array v1, v1, [Ljava/lang/String;

    const v2, 0x10004

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-wide/16 v4, -0xb

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 1300
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "DELETE FROM hearts WHERE category_type=?"

    .line 1308
    new-array v1, v4, [Ljava/lang/String;

    const/16 v2, 0x56

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 1306
    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private final u(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "audio_playlists_map"

    const-string v1, "audio_file_name TEXT"

    .line 1315
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1313
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-string v0, "UPDATE audio_playlists_map SET audio_file_name=(SELECT _display_name FROM audio_meta WHERE audio_id=audio_meta._id)WHERE audio_file_name IS NULL AND audio_cp_attrs & 1"

    .line 1320
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private final v(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 1336
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "UPDATE favorite_tracks_map SET audio_data=(SELECT _data FROM audio_meta WHERE audio_id=audio_meta._id) WHERE audio_cp_attrs=65537 AND audio_data NOT LIKE \'/storage%\'"

    .line 1339
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MusicDBInfo"

    const-string v1, "onCreate"

    const/4 v2, 0x1

    .line 38
    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b:Landroid/content/Context;

    const/16 v1, 0x5338

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;IILandroid/content/Context;)V

    .line 44
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->a()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b:Landroid/content/Context;

    invoke-virtual {v0, v3, p1}, Lcom/samsung/android/app/music/provider/DaoMaster;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 45
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->a()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/provider/DaoMaster;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 46
    invoke-direct {p0, p1, v2, v1}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "MusicDBInfo"

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgrade : oldVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", newVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 50
    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b:Landroid/content/Context;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;IILandroid/content/Context;)V

    .line 60
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->a()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/provider/MusicDBHelper;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/provider/DaoMaster;->a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 v0, 0x52d0

    if-ge p2, v0, :cond_0

    .line 62
    invoke-static {p1}, Lcom/samsung/android/app/music/provider/DaoMaster;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p2, "MusicDBInfo"

    const-string v0, "onUpgrade : DaoTables not exist -> call DaoMaster\'s onCreate"

    .line 63
    invoke-static {v2, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->a()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/provider/DaoMaster;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 p2, 0x0

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/DaoMaster;->a()Lcom/samsung/android/app/music/provider/DaoMaster;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/DaoMaster;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    .line 72
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/MusicDBHelper;->a(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method
