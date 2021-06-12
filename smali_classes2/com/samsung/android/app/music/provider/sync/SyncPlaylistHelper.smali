.class public final Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;,
        Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;,
        Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Landroid/net/Uri;

.field private static final c:Landroid/net/Uri;

.field private static final d:Landroid/net/Uri;

.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;

.field private static final i:[Ljava/lang/String;

.field private static final j:[Ljava/lang/String;

.field private static final k:[Ljava/lang/String;

.field private static final l:[Ljava/lang/String;

.field private static final m:[Ljava/lang/String;

.field private static final n:Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MusicSync-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;

    .line 42
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    const-string v0, "content://com.sec.android.app.music/audio/playlists/sync_playlist_queue"

    .line 46
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->b:Landroid/net/Uri;

    .line 49
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 50
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "secFilter"

    const-string v2, "include"

    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->c:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.app.music/"

    .line 54
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->d:Landroid/net/Uri;

    const-string v0, "_id"

    const-string v1, "playlist_id"

    const-string v2, "playlist_name"

    const-string v3, "sync_down_action"

    .line 57
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->e:[Ljava/lang/String;

    const-string v0, "source_playlist_id"

    const-string v1, "name"

    .line 64
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->f:[Ljava/lang/String;

    const-string v0, "source_id"

    const-string v1, "play_order"

    .line 69
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->g:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "date_added"

    const-string v2, "name"

    .line 74
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->h:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "source_playlist_id * 1 AS source_playlist_id"

    const-string v2, "date_added"

    const-string v3, "name"

    .line 80
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->i:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "name"

    const-string v2, "_data"

    const-string v3, "date_added"

    .line 87
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->j:[Ljava/lang/String;

    const-string v0, "audio_id"

    const-string v1, "play_order"

    const-string v2, "album_id"

    .line 94
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->k:[Ljava/lang/String;

    const-string v0, "_id"

    .line 101
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->l:[Ljava/lang/String;

    const-string v0, "_id"

    const-string v1, "source_playlist_id"

    .line 105
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->m:[Ljava/lang/String;

    .line 121
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->n:Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;J)I
    .locals 7

    const-string v0, "external"

    .line 538
    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->k:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 537
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 562
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return p0

    :cond_1
    const/4 p2, 0x0

    :try_start_0
    const-string v0, "audio_id"

    .line 543
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "play_order"

    .line 544
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 546
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 547
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 548
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "audio_source_id"

    .line 550
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 549
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "play_order"

    .line 551
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 555
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 556
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncUpInsertFavoriteMembers source count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content://com.sec.android.app.music/audio/media/favorite_tracks/offline_sync"

    .line 557
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->f(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 560
    new-array v0, v0, [Landroid/content/ContentValues;

    .line 561
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    .line 560
    invoke-static {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 562
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object p2, p0

    .line 537
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 562
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    throw p0
.end method

.method private static a(Landroid/content/Context;JJ)I
    .locals 7

    const-string v0, "external"

    .line 507
    invoke-static {v0, p1, p2}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->k:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    .line 506
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    .line 533
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return p0

    :cond_1
    const/4 p2, 0x0

    :try_start_0
    const-string v0, "audio_id"

    .line 512
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "play_order"

    .line 513
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 515
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 516
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 517
    new-instance v3, Landroid/content/ContentValues;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/content/ContentValues;-><init>(I)V

    const-string v4, "audio_source_id"

    .line 519
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 518
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "play_order"

    .line 520
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 521
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 524
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 525
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertPlaylistMembers source count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content://com.sec.android.app.music/audio/playlists/sync_all_bulk_insert"

    .line 527
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p3

    .line 526
    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    .line 530
    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->f(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    .line 531
    new-array p4, v0, [Landroid/content/ContentValues;

    .line 532
    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Landroid/content/ContentValues;

    .line 531
    invoke-static {p0, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 533
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object p2, p0

    .line 506
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    .line 533
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    throw p0
.end method

.method public static a(Landroid/content/Context;[J)I
    .locals 11

    .line 1189
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1190
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->b:Landroid/net/Uri;

    .line 1191
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-wide v5, p1, v3

    .line 1192
    invoke-static {p0, v0, v1, v5, v6}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;J)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-eqz v9, :cond_0

    .line 1195
    invoke-static {p0, v7, v8, v5, v6}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->b(Landroid/content/Context;JJ)I

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method private static a(Landroid/content/Context;JJLjava/lang/String;)J
    .locals 8

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_4

    .line 683
    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->c:Landroid/net/Uri;

    const-string v1, "name"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 684
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 688
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 689
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v2, p0

    goto :goto_1

    :cond_0
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_3

    .line 691
    invoke-virtual {v3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    goto :goto_4

    .line 683
    :goto_1
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v1, :cond_2

    if-eqz v2, :cond_1

    .line 694
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p1

    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_3
    throw p0

    :cond_3
    :goto_4
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v0, :cond_5

    return-wide p1

    .line 701
    :cond_5
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->k:Z

    if-eqz p1, :cond_6

    .line 702
    invoke-static {p0, p3, p4, p5}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide p0

    goto :goto_5

    :cond_6
    const-wide/16 p0, -0x1

    :goto_5
    return-wide p0
.end method

.method private static a(Landroid/content/Context;JLjava/lang/String;)J
    .locals 8

    .line 746
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 748
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "name"

    .line 749
    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p3

    const-wide/16 v0, -0x1

    const/4 v2, 0x1

    if-nez p3, :cond_0

    .line 752
    sget-object p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    const-string p1, "getAndUpdatePlaylistSourceId : insert to MediaProvider failed --> skip"

    invoke-static {v2, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    return-wide v0

    .line 761
    :cond_0
    invoke-static {p3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 764
    sget-object p3, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->d:Landroid/net/Uri;

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    .line 765
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "source_playlist_id"

    .line 766
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 767
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    .line 768
    invoke-static {p0, p3, v5, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-ge p0, v2, :cond_1

    .line 770
    sget-object p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    const-string p1, "getAndUpdatePlaylistSourceId failed."

    invoke-static {v2, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    return-wide v0

    .line 778
    :cond_1
    sget-object p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getAndUpdatePlaylistSourceId new source playlist id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v3
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;J)J
    .locals 14

    const-string v0, "name"

    .line 1231
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "_id=?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    .line 1234
    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    aput-object v1, v5, v7

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 1232
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1235
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1236
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v2

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1231
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v3, :cond_0

    .line 1238
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    throw v2

    :cond_2
    move-object v3, v2

    :goto_2
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    if-nez v3, :cond_4

    .line 1241
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "import / export get playlist name failed. uri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, p3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1241
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    return-wide v0

    .line 1248
    :cond_4
    new-instance v1, Landroid/support/v4/util/ArraySet;

    invoke-direct {v1}, Landroid/support/v4/util/ArraySet;-><init>()V

    const-string v4, "name"

    .line 1249
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "name LIKE ?"

    new-array v12, v0, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x25

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v7

    const-string v13, "name"

    move-object v8, p0

    move-object/from16 v9, p2

    .line 1250
    invoke-static/range {v8 .. v13}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1253
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_7

    .line 1254
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1255
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/support/v4/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v2, v0

    .line 1249
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_4
    if-eqz v4, :cond_6

    if-eqz v2, :cond_5

    .line 1258
    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_5
    throw v1

    :cond_7
    if-eqz v4, :cond_8

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v2, v3

    .line 1260
    :goto_6
    invoke-virtual {v1}, Landroid/support/v4/util/ArraySet;->size()I

    move-result v4

    if-gt v0, v4, :cond_a

    .line 1261
    invoke-virtual {v1, v2}, Landroid/support/v4/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_7

    .line 1264
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1267
    :cond_a
    :goto_7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "name"

    .line 1268
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1269
    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "content://com.sec.android.app.music/"

    .line 1270
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "is_sync"

    .line 1271
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_b
    move-object v1, p0

    move-object/from16 v3, p2

    .line 1274
    invoke-static {p0, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 1276
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    goto :goto_8

    :cond_c
    const-wide/16 v0, 0x0

    .line 1279
    :goto_8
    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createPlaylist : Name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", newId "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0
.end method

.method private static a(Landroid/content/Context;Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;ZLjava/lang/String;)Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;
    .locals 28
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 302
    iget-object v4, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;->b:Ljava/lang/String;

    if-eqz v4, :cond_13

    iget-object v4, v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->c:Ljava/lang/String;

    if-nez v4, :cond_0

    goto/16 :goto_f

    .line 311
    :cond_0
    new-instance v4, Ljava/util/StringTokenizer;

    iget-object v5, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;->b:Ljava/lang/String;

    const-string v6, ","

    invoke-direct {v4, v5, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    new-instance v5, Ljava/util/StringTokenizer;

    iget-object v6, v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->c:Ljava/lang/String;

    const-string v7, ","

    invoke-direct {v5, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 318
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 325
    :goto_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 326
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 327
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 328
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 329
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_2
    if-eqz v6, :cond_f

    if-eqz v8, :cond_f

    .line 332
    invoke-virtual {v6, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v16

    if-lez v16, :cond_4

    .line 334
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v22, v4

    move-object/from16 v21, v5

    move-object v8, v7

    move-object v2, v12

    move-object v7, v6

    :goto_4
    const/4 v6, 0x0

    goto/16 :goto_c

    :cond_4
    if-gez v16, :cond_6

    .line 337
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v22, v4

    move-object/from16 v21, v5

    move-object v2, v12

    goto :goto_4

    .line 340
    :cond_6
    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 341
    iget-object v6, v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->b:Ljava/util/List;

    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    move-object/from16 v21, v5

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v22, v4

    .line 342
    iget-object v4, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;->c:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 343
    iget-object v4, v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->d:Ljava/util/List;

    invoke-interface {v4, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    .line 344
    iget-object v4, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;->d:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 345
    iget-object v1, v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->e:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    cmp-long v23, v16, v23

    if-nez v23, :cond_8

    .line 349
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_7

    goto :goto_6

    :cond_7
    const/16 v23, 0x0

    goto :goto_7

    :cond_8
    :goto_6
    const/16 v23, 0x1

    :goto_7
    const-string v2, "external"

    .line 356
    invoke-static {v2, v7, v8}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    move/from16 v25, v15

    const-string v15, "audio_id"

    move/from16 v26, v14

    const/4 v14, 0x0

    .line 354
    invoke-static {v0, v3, v2, v14, v15}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;

    move-result-object v2

    .line 361
    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->a(J)Landroid/net/Uri;

    move-result-object v14

    const-string v15, "cp_attrs=65537"

    move-object/from16 v27, v12

    const-string v12, "source_id"

    .line 360
    invoke-static {v0, v3, v14, v15, v12}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;

    move-result-object v12

    .line 366
    invoke-virtual {v2, v12}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    iget v2, v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;->a:I

    iget v14, v12, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;->a:I

    if-le v2, v14, :cond_9

    or-int/lit8 v23, v23, 0x10

    :cond_9
    and-int/lit8 v2, v23, 0x1

    const/4 v14, 0x1

    if-ne v2, v14, :cond_a

    .line 372
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v14, "name"

    .line 373
    invoke-virtual {v2, v14, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "date_added"

    .line 374
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v2, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 375
    sget-object v14, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    .line 376
    invoke-static {v14}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v15, 0x0

    .line 375
    invoke-static {v0, v14, v2, v3, v15}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    add-int v18, v18, v2

    :cond_a
    and-int/lit8 v2, v23, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_b

    .line 382
    invoke-static {v0, v7, v8, v5, v6}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;JJ)I

    move-result v14

    .line 383
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->d:Landroid/net/Uri;

    const-string v3, "playlist_track_rearrange_play_order"

    .line 384
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 383
    invoke-virtual {v13, v2, v3, v5, v6}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 385
    iget v2, v12, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;->a:I

    add-int v20, v20, v2

    add-int v19, v19, v14

    goto :goto_8

    :cond_b
    const/4 v6, 0x0

    const/4 v14, 0x0

    :goto_8
    and-int/lit8 v2, v23, 0x11

    if-eqz v2, :cond_c

    .line 390
    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    iget v1, v12, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v2, v27

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_c
    move-object/from16 v2, v27

    .line 396
    :goto_9
    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual/range {v22 .. v22}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    goto :goto_a

    :cond_d
    move-object v7, v6

    .line 397
    :goto_a
    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual/range {v21 .. v21}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_e
    move-object v1, v6

    :goto_b
    add-int/lit8 v14, v26, 0x1

    add-int/lit8 v15, v25, 0x1

    move-object v8, v1

    :goto_c
    move-object v12, v2

    move-object v6, v7

    move-object/from16 v5, v21

    move-object/from16 v4, v22

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    goto/16 :goto_2

    :cond_f
    move-object v2, v12

    if-nez v18, :cond_11

    if-nez v19, :cond_11

    if-eqz v20, :cond_10

    goto :goto_d

    .line 425
    :cond_10
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    return-object v0

    .line 410
    :cond_11
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " updated ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v3, :cond_12

    const-string v5, "{sourceName:"

    .line 413
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/DebugUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", targetName:"

    .line 415
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/DebugUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", previousCount:"

    .line 417
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", updatedCount:"

    .line 418
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "}, "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_12
    const-string v2, "] from "

    .line 420
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 421
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/provider/MusicDBInfo$SyncLog;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 423
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v15, v0

    invoke-direct/range {v15 .. v20}, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;-><init>(IIIII)V

    return-object v0

    .line 303
    :cond_13
    :goto_f
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;
    .locals 20
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    iget-object v3, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->c:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v3, "_id"

    .line 231
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " NOT IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->c:Ljava/lang/String;

    .line 232
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 236
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 239
    sget-object v3, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->j:[Ljava/lang/String;

    .line 241
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x0

    const-string v10, "_id"

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v10

    .line 240
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 243
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_4

    :cond_2
    const-string v2, "_id"

    .line 247
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "name"

    .line 248
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "_data"

    .line 249
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "date_added"

    .line 250
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 253
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->b:Landroid/net/Uri;

    .line 254
    invoke-static {v6}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->d(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    const/4 v12, 0x0

    const/4 v15, 0x0

    .line 258
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 259
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 260
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 261
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "source_playlist_id"

    move/from16 v17, v2

    .line 262
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v11, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "name"

    .line 263
    invoke-virtual {v11, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "_data"

    .line 264
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "date_added"

    .line 265
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v11, v2, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 266
    invoke-static {v0, v6, v11}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_3

    .line 268
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "syncUpInsert failed. source playlist id : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    add-int/lit8 v12, v12, 0x1

    .line 272
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    .line 274
    invoke-static {v0, v13, v14, v10, v11}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;JJ)I

    move-result v2

    add-int/2addr v15, v2

    .line 275
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    move/from16 v2, v17

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_5

    .line 278
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    if-lez v12, :cond_7

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " inserted ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_6

    const-string v4, "{"

    .line 288
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "name:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/DebugUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", memberCnt:"

    .line 290
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "}, "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    const-string v2, "] from "

    .line 292
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    .line 293
    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/provider/MusicDBInfo$SyncLog;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 294
    new-instance v0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;-><init>(IIIII)V

    return-object v0

    .line 296
    :cond_7
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    const/4 v9, 0x0

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v9, v0

    goto :goto_5

    .line 244
    :cond_8
    :goto_4
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_9

    .line 278
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v0

    .line 239
    :goto_5
    :try_start_2
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :goto_6
    if-eqz v1, :cond_b

    if-eqz v9, :cond_a

    .line 278
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v9, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    :goto_7
    throw v2
.end method

.method static a(Landroid/content/Context;Ljava/util/EnumSet;ZLjava/lang/String;)Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;
    .locals 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/EnumSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/EnumSet<",
            "Lcom/samsung/android/app/music/provider/sync/SyncOperation;",
            ">;Z",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;"
        }
    .end annotation

    .line 131
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/provider/sync/MusicSyncService;->b(Landroid/content/Context;Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p1

    .line 133
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_PLAYLIST_SYNC_DOWN:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 134
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_PLAYLIST_INSERT:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 135
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_PLAYLIST_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {p1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 136
    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncOperation;->LOCAL_PLAYLIST_FAVORITE_UPDATE:Lcom/samsung/android/app/music/provider/sync/SyncOperation;

    invoke-virtual {p1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    .line 139
    sget-object p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    return-object p0

    .line 142
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->b(Landroid/content/Context;)V

    if-eqz v0, :cond_1

    .line 143
    invoke-virtual {p1}, Ljava/util/EnumSet;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 144
    sget-object p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    return-object p0

    :cond_1
    const/4 p1, 0x0

    .line 150
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    .line 151
    sget-object v4, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    .line 152
    sget-object v5, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    if-eqz v1, :cond_2

    .line 155
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->f(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;

    move-result-object p1

    .line 156
    invoke-static {p0, p1, p3}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    move-result-object v0

    :cond_2
    if-eqz v2, :cond_4

    .line 160
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->e(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;

    move-result-object v1

    if-nez p1, :cond_3

    .line 163
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->f(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;

    move-result-object p1

    .line 165
    :cond_3
    invoke-static {p0, v1, p1, p2, p3}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;ZLjava/lang/String;)Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    move-result-object v4

    :cond_4
    if-eqz v3, :cond_5

    .line 169
    invoke-static {p0, p2, p3}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;ZLjava/lang/String;)Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    move-result-object v5

    .line 172
    :cond_5
    new-instance p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->c()I

    move-result v7

    const/4 v8, 0x0

    .line 173
    invoke-virtual {v4}, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->d()I

    move-result v9

    invoke-virtual {v0}, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->e()I

    move-result p1

    .line 174
    invoke-virtual {v4}, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->e()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {v5}, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->e()I

    move-result p2

    add-int v10, p1, p2

    .line 175
    invoke-virtual {v4}, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->f()I

    move-result p1

    invoke-virtual {v5}, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->f()I

    move-result p2

    add-int v11, p1, p2

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;-><init>(IIIII)V

    return-object p0
.end method

.method private static a(Landroid/content/Context;ZLjava/lang/String;)Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;
    .locals 12
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 431
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    const-string v1, "syncUpFavoriteTrackList"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->c:Landroid/net/Uri;

    sget-object v4, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->l:[Ljava/lang/String;

    const-string v5, "name=\'FavoriteList#328795!432@1341\'"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 434
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 436
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 437
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v2, p0

    .line 433
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_1

    if-eqz v2, :cond_0

    .line 439
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-virtual {v2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    throw p0

    :cond_2
    const-wide/16 v3, 0x0

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    const-string v0, "external"

    .line 442
    invoke-static {v0, v3, v4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    const-string v5, "audio_id"

    .line 441
    invoke-static {p0, p1, v0, v2, v5}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;

    move-result-object v0

    .line 445
    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    const-string v6, "cp_attrs=65537"

    const-string v7, "source_id"

    invoke-static {p0, p1, v5, v6, v7}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;

    move-result-object p1

    .line 451
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    iget v0, v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;->a:I

    iget v5, p1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;->a:I

    if-le v0, v5, :cond_4

    .line 453
    invoke-static {p0, v3, v4}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;J)I

    move-result v10

    .line 455
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->d:Landroid/net/Uri;

    const-string v4, "favorite_track_rearrange_play_order"

    invoke-virtual {v0, v3, v4, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    const/4 v0, 0x1

    .line 458
    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " favorite updated [previousCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", updatedCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Lcom/samsung/android/app/music/provider/MusicDBInfo$SyncLog;->a(Landroid/content/Context;[Ljava/lang/String;)V

    .line 461
    new-instance p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v11, p1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;->a:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;-><init>(IIIII)V

    return-object p0

    .line 463
    :cond_4
    sget-object p0, Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;->a:Lcom/samsung/android/app/music/provider/sync/PlaylistSyncUpResult;

    return-object p0
.end method

.method private static a(Landroid/content/Context;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x2

    .line 470
    new-array v2, v2, [Ljava/lang/String;

    aput-object p4, v2, v1

    const-string p4, "album_id"

    aput-object p4, v2, v0

    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_0
    const-string p4, "count(*)"

    const-string v2, "album_id"

    .line 472
    filled-new-array {p4, v2}, [Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :goto_1
    const-string v8, "play_order"

    const/4 v7, 0x0

    move-object v3, p0

    move-object v4, p2

    move-object v6, p3

    .line 477
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p3, 0x0

    if-nez p0, :cond_2

    .line 479
    :try_start_0
    sget-object p1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPlaylistMembersCompareInfo get failed uri "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    .line 484
    sget-object p1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->n:Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 501
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    move-object p3, p1

    goto :goto_3

    .line 486
    :cond_2
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-eqz p2, :cond_8

    .line 487
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p4

    if-nez p4, :cond_3

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_6

    .line 491
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 493
    :cond_4
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p4

    if-nez p4, :cond_4

    .line 496
    new-instance p4, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p2, p1}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_5

    .line 501
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object p4

    .line 499
    :cond_6
    :try_start_2
    new-instance p1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p2, p4}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;-><init>(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_7

    .line 501
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object p1

    .line 488
    :cond_8
    :goto_2
    :try_start_3
    sget-object p1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->n:Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$PlaylistMemberInfo;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p0, :cond_9

    .line 501
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object p1

    .line 476
    :goto_3
    :try_start_4
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    if-eqz p0, :cond_b

    if-eqz p3, :cond_a

    .line 501
    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    invoke-virtual {p3, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_a
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_b
    :goto_5
    throw p1
.end method

.method static synthetic a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILandroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    .line 961
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    const-string v1, "syncDownUpdate"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    invoke-static {p1, p2, p3, p5, p6}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 963
    sget-object p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    const-string p1, "syncDownUpdate no need"

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0xcd

    const/4 v1, 0x2

    if-eq p3, v0, :cond_3

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_4

    .line 986
    :pswitch_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p5, :cond_1

    .line 989
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "_id="

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v4, p2

    goto :goto_1

    .line 991
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "("

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ") AND _id="

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 993
    :goto_1
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$2;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$2;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 999
    invoke-virtual {p2}, Ljava/lang/Thread;->run()V

    goto :goto_4

    .line 969
    :pswitch_1
    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->k:Z

    if-eqz p2, :cond_2

    :goto_2
    move-object v4, p5

    goto :goto_3

    .line 972
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") AND "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "name"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "=\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "FavoriteList#328795!432@1341"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_2

    .line 976
    :goto_3
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$1;

    move-object v0, p3

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$1;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 982
    invoke-virtual {p2}, Ljava/lang/Thread;->run()V

    goto :goto_4

    .line 1003
    :cond_3
    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1004
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    const-string p0, "2_playlist_members"

    invoke-static {p1, p2, p3, p0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 1013
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    const-string v1, "syncDownDelete"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1015
    sget-object p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    const-string p1, "syncDownDelete no need"

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 p2, 0x64

    if-eq p3, p2, :cond_2

    const/16 p0, 0xc8

    if-eq p3, p0, :cond_1

    goto :goto_1

    :cond_1
    const-string p0, "2_playlist_members"

    .line 1036
    invoke-static {p1, p4, p5, p0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1021
    :cond_2
    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->k:Z

    if-eqz p2, :cond_3

    goto :goto_0

    .line 1024
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") AND "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "name"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "=\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "FavoriteList#328795!432@1341"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 1027
    :goto_0
    new-instance p2, Ljava/lang/Thread;

    new-instance p3, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$3;

    invoke-direct {p3, p0, p1, p4, p5}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$3;-><init>(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1032
    invoke-virtual {p2}, Ljava/lang/Thread;->run()V

    :goto_1
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .line 1175
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "playlist_name"

    const-string v2, "FAVORITE TRACKS"

    .line 1176
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "playlist_id"

    const/4 v2, -0x1

    .line 1177
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "sync_down_action"

    const-string v2, "favorite_tracks"

    .line 1178
    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "request_date"

    .line 1180
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "sync_playlist_list"

    const/4 v2, 0x0

    .line 1181
    invoke-virtual {p0, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V
    .locals 2

    .line 1164
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "playlist_id"

    .line 1165
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "sync_down_action"

    .line 1166
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "request_date"

    .line 1167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "sync_playlist_list"

    const/4 p2, 0x0

    .line 1168
    invoke-virtual {p0, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;I)V
    .locals 2

    .line 927
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    const-string v1, "syncDownInsert"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 928
    invoke-static {p0, p1, p2, v0, v0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 929
    sget-object p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    const-string p1, "syncDownInsert no need"

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x65

    if-eq p2, v0, :cond_1

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 935
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 936
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-string v0, "2_playlist_members"

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INSERT INTO sync_playlist_list (playlist_id,request_date,sync_down_action)  SELECT DISTINCT playlist_id, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\' FROM "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "audio_playlists_map"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " WHERE "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_0

    .line 1153
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 1155
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 6

    .line 179
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->b:Landroid/net/Uri;

    const-string v0, "count(*)"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string v5, "sync_down_action"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 180
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    const/4 v1, 0x0

    .line 182
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 185
    :cond_0
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    if-eqz p0, :cond_1

    .line 188
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0

    :cond_2
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 179
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p0, :cond_5

    if-eqz v1, :cond_4

    .line 188
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_1
    throw v0

    :cond_6
    :goto_2
    if-eqz p0, :cond_7

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_7
    return v0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 14
    .param p0    # Landroid/database/sqlite/SQLiteDatabase;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move/from16 v0, p2

    move-object/from16 v1, p3

    .line 1321
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->e(Landroid/net/Uri;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    return v3

    .line 1324
    :cond_0
    sget-boolean v2, Lcom/samsung/android/app/music/info/features/AppFeatures;->k:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    return v4

    :cond_1
    const/16 v2, 0xc8

    const/4 v5, 0x0

    if-eq v0, v2, :cond_8

    const/16 v2, 0xcd

    if-eq v0, v2, :cond_8

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    if-nez v1, :cond_2

    const-string v0, "name=\'FavoriteList#328795!432@1341\'"

    :goto_0
    move-object v9, v0

    goto :goto_1

    .line 1335
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "FavoriteList#328795!432@1341"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    const-string v7, "audio_playlists"

    const-string v0, "count(*)"

    .line 1338
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, p0

    move-object/from16 v10, p4

    .line 1339
    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1341
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v3, :cond_3

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 1338
    :try_start_1
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v1, :cond_5

    if-eqz v5, :cond_4

    .line 1342
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_3
    throw v2

    :cond_6
    :goto_4
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    return v3

    .line 1348
    :cond_8
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v7, "audio_playlists"

    const-string v2, "name"

    .line 1349
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v6, p0

    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1352
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1354
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FavoriteList#328795!432@1341"

    .line 1355
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    xor-int/2addr v0, v3

    if-eqz v1, :cond_9

    .line 1364
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    return v0

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v5, v0

    .line 1349
    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_5
    if-eqz v1, :cond_b

    if-eqz v5, :cond_a

    .line 1364
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    invoke-virtual {v5, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b
    :goto_6
    throw v2

    :cond_c
    if-eqz v1, :cond_d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_d
    :goto_7
    return v3

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static b(Landroid/content/Context;JJ)I
    .locals 0

    .line 1284
    invoke-static {p0, p3, p4, p1, p2}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;JJ)I

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;[J)I
    .locals 11

    .line 1208
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    .line 1209
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1210
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-wide v5, p1, v3

    .line 1211
    invoke-static {p0, v0, v1, v5, v6}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;J)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-eqz v9, :cond_0

    .line 1214
    invoke-static {p0, v5, v6, v7, v8}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->c(Landroid/content/Context;JJ)I

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method private static b(Landroid/content/Context;)V
    .locals 9

    .line 193
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    const-string v1, "syncDown"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->b:Landroid/net/Uri;

    sget-object v4, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->e:[Ljava/lang/String;

    const-string v7, "sync_down_action"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    .line 195
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    .line 197
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v2, "_id"

    .line 201
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "playlist_id"

    .line 202
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "sync_down_action"

    .line 203
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 205
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 206
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 207
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const-string v8, "2_playlist_members"

    .line 209
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 210
    invoke-static {p0, v6, v7}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->b(Landroid/content/Context;J)V

    goto :goto_1

    :cond_1
    const-string v6, "favorite_tracks"

    .line 211
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 212
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->c(Landroid/content/Context;)V

    .line 214
    :cond_2
    :goto_1
    sget-object v5, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->b:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v5, v6, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    .line 218
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v1, p0

    .line 194
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v0, :cond_6

    if-eqz v1, :cond_5

    .line 218
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    throw p0

    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    return-void
.end method

.method private static b(Landroid/content/Context;J)V
    .locals 16

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    const-wide/16 v9, 0x1

    const/4 v11, 0x1

    cmp-long v1, v7, v9

    if-gez v1, :cond_0

    .line 567
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncDownPlaylistMembersInternal abnormal playlist id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 575
    :cond_0
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->f:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 576
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v12, 0x0

    if-eqz v1, :cond_b

    .line 578
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v2, "source_playlist_id"

    .line 583
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    const-string v4, "name"

    .line 584
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    .line 585
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object/from16 v1, p0

    move-wide/from16 v4, p1

    move-object v6, v13

    .line 588
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/content/Context;JJLjava/lang/String;)J

    move-result-wide v14

    cmp-long v1, v14, v9

    if-gez v1, :cond_3

    .line 591
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncDownPlaylistMembersInternal invalid sourcePlaylistId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 597
    :cond_3
    invoke-static/range {p1 .. p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->a(J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->g:[Ljava/lang/String;

    const-string v4, "cp_attrs=65537"

    const/4 v5, 0x0

    const-string v6, "play_order"

    move-object/from16 v1, p0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_5

    if-eqz v1, :cond_4

    .line 628
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :cond_5
    :try_start_1
    const-string v2, "source_id"

    .line 605
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "play_order"

    .line 606
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 608
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 609
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 610
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "audio_id"

    .line 611
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "playlist_id"

    .line 612
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "play_order"

    .line 613
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 614
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    const-string v2, "external"

    .line 618
    invoke-static {v2, v14, v15}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v2

    .line 620
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v0, v3, v12, v12}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x0

    .line 622
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_7

    .line 624
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Landroid/content/ContentValues;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/content/ContentValues;

    .line 623
    invoke-static {v0, v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v5

    .line 626
    :cond_7
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncDownPlaylistMembersInternal source playlist Id : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", deleted : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", inserted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_8

    .line 628
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v12, v0

    .line 596
    :try_start_2
    throw v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    if-eqz v1, :cond_a

    if-eqz v12, :cond_9

    .line 628
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v0

    invoke-virtual {v12, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a
    :goto_2
    throw v2

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object v12, v0

    goto :goto_4

    .line 579
    :cond_b
    :goto_3
    :try_start_4
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    const-string v2, "syncDownPlaylistMembersInternal not exist in MusicProvider."

    invoke-static {v11, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_c

    .line 585
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c
    return-void

    .line 575
    :goto_4
    :try_start_5
    throw v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_5
    if-eqz v1, :cond_e

    if-eqz v12, :cond_d

    .line 585
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v0

    invoke-virtual {v12, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_d
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_e
    :goto_6
    throw v2
.end method

.method private static b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9

    const-string v0, "source_playlist_id"

    .line 1046
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 1048
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "name"

    .line 1049
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "name"

    .line 1051
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "_data"

    .line 1053
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string v1, "_data"

    .line 1055
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    :cond_1
    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    const-string v2, "audio_playlists"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    .line 1065
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_a

    .line 1067
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-nez p3, :cond_3

    goto/16 :goto_3

    .line 1071
    :cond_3
    new-instance p3, Ljava/util/ArrayList;

    const/16 p4, 0x3e7

    invoke-direct {p3, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1072
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "_id"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " IN ("

    .line 1073
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    move-object v3, v1

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1074
    :cond_4
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v1, v1, 0x1

    const-string v5, "?,"

    .line 1076
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1077
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v1, p4, :cond_4

    .line 1079
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1081
    sget-object v6, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1083
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/String;

    .line 1084
    invoke-interface {p3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1082
    invoke-static {p0, v6, v5, v3, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    add-int/2addr v4, v1

    .line 1086
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 1087
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "_id"

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " IN ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    if-lez v1, :cond_6

    .line 1091
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v2, ")"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 1093
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1095
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/String;

    .line 1096
    invoke-interface {p3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    .line 1094
    invoke-static {p0, v0, p4, v2, p3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v4, p0

    :cond_6
    if-eqz p1, :cond_7

    .line 1098
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1099
    :cond_7
    sget-object p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "syncDownUpdatePlaylistValueInternal updated "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object p2, p0

    .line 1064
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_9

    if-eqz p2, :cond_8

    .line 1098
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

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
    return-void
.end method

.method private static b(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 10

    .line 1105
    sget-object v0, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "source_playlist_id"

    .line 1106
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v3, "audio_playlists"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    .line 1108
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_7

    const/4 p2, 0x0

    .line 1110
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-nez p3, :cond_0

    goto/16 :goto_3

    .line 1114
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    const/16 v1, 0x1f3

    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1115
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " IN ("

    .line 1116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    move-object v4, v2

    :goto_0
    const/4 v2, 0x0

    .line 1117
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    const-string v5, "?,"

    .line 1119
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1120
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-ne v2, v1, :cond_1

    .line 1122
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1123
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/String;

    .line 1124
    invoke-interface {p3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 1123
    invoke-static {p0, v0, v4, v2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1126
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 1127
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "_id"

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " IN ("

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    if-lez v2, :cond_3

    .line 1132
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/String;

    .line 1134
    invoke-interface {p3, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    .line 1133
    invoke-static {p0, v0, v1, p3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz p1, :cond_4

    .line 1136
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object p2, p0

    .line 1107
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    .line 1136
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_2
    throw p0

    :cond_7
    :goto_3
    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_8
    return-void
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;I)V
    .locals 2

    .line 943
    sget-object v0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    const-string v1, "syncDownBulkInsert"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 944
    invoke-static {p0, p1, p2, v0, v0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;ILjava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 945
    sget-object p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    const-string p1, "syncDownBulkInsert no need"

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x65

    if-eq p2, v0, :cond_1

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 951
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 952
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-string v0, "2_playlist_members"

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static c(Landroid/content/Context;JJ)I
    .locals 8

    .line 1290
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->a(J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->g:[Ljava/lang/String;

    const-string v3, "cp_attrs=65537"

    const-string v5, "play_order"

    const/4 v4, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    .line 1294
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v1, "source_id"

    .line 1298
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "play_order"

    .line 1299
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1301
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1302
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1303
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "audio_id"

    .line 1304
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "play_order"

    .line 1305
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1306
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "external"

    .line 1309
    invoke-static {v1, p3, p4}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    .line 1310
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1312
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Landroid/content/ContentValues;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/content/ContentValues;

    .line 1311
    invoke-static {p0, v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p2

    .line 1314
    :cond_2
    sget-object p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exportPlaylistMembers mediaId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ", inserted : "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 1315
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return p2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, p0

    .line 1289
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz p1, :cond_5

    if-eqz v0, :cond_4

    .line 1315
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_5
    :goto_2
    throw p0

    :cond_6
    :goto_3
    if-eqz p1, :cond_7

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_7
    return p2
.end method

.method private static c(Landroid/content/Context;)V
    .locals 11

    .line 632
    invoke-static {p0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->d(Landroid/content/Context;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 p0, 0x1

    .line 635
    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncDownPlaylistMembersInternal invalid sourcePlaylistId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 640
    :cond_0
    sget-object v4, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$Tracks;->a:Landroid/net/Uri;

    sget-object v5, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->g:[Ljava/lang/String;

    const-string v6, "cp_attrs=65537"

    const/4 v7, 0x0

    const-string v8, "play_order"

    move-object v3, p0

    .line 641
    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_2

    if-eqz v2, :cond_1

    .line 672
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    const/4 v3, 0x0

    :try_start_0
    const-string v4, "source_id"

    .line 649
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "play_order"

    .line 650
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 652
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 653
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 654
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "audio_id"

    .line 655
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "playlist_id"

    .line 656
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "play_order"

    .line 657
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 658
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string v4, "external"

    .line 662
    invoke-static {v4, v0, v1}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    .line 664
    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->a(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v5, v3, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x0

    .line 666
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_4

    .line 668
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Landroid/content/ContentValues;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/ContentValues;

    .line 667
    invoke-static {p0, v4, v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v7

    .line 670
    :cond_4
    sget-object p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syncDownFavoriteTracksInternal source playlist Id : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", deleted : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", inserted : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_5

    .line 672
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v3, p0

    .line 640
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v2, :cond_7

    if-eqz v3, :cond_6

    .line 672
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_2
    throw p0
.end method

.method private static d(Landroid/content/Context;)J
    .locals 7

    .line 712
    sget-object v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->c:Landroid/net/Uri;

    const-string v0, "_id"

    .line 715
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "name=?"

    const-string v0, "FavoriteList#328795!432@1341"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    .line 716
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 719
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 720
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v3, p0

    goto :goto_1

    :cond_0
    move-wide v4, v1

    :goto_0
    cmp-long v6, v4, v1

    if-nez v6, :cond_5

    .line 725
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "name"

    const-string v6, "FavoriteList#328795!432@1341"

    .line 726
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    sget-object v5, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->c:Landroid/net/Uri;

    .line 730
    invoke-static {p0, v5, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    .line 732
    sget-object v4, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    const-string v5, "getFavoriteSourceId insert failed."

    invoke-static {p0, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 737
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v1

    .line 735
    :cond_2
    :try_start_1
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 715
    :goto_1
    :try_start_2
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz v0, :cond_4

    if-eqz v3, :cond_3

    .line 737
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_3
    throw p0

    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 739
    :cond_6
    sget-object p0, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFavoriteSourceId source playlist id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v4
.end method

.method private static e(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;
    .locals 9

    .line 783
    sget-object v1, Landroid/provider/MediaStore$Audio$Playlists;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->h:[Ljava/lang/String;

    const-string v5, "_id"

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    .line 784
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    .line 786
    :try_start_0
    new-instance v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;-><init>(Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$1;)V

    if-eqz p0, :cond_5

    .line 787
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 795
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;->a:I

    .line 796
    new-instance v2, Ljava/util/ArrayList;

    iget v3, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;->a:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;->c:Ljava/util/List;

    .line 797
    new-instance v2, Ljava/util/ArrayList;

    iget v3, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;->a:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;->d:Ljava/util/List;

    .line 799
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id"

    .line 801
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "date_added"

    .line 802
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "name"

    .line 803
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 806
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 807
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 811
    :cond_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 812
    iget-object v6, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;->c:Ljava/util/List;

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 813
    iget-object v6, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;->d:Ljava/util/List;

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 816
    :cond_2
    iget v3, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;->a:I

    if-lez v3, :cond_3

    .line 818
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz p0, :cond_4

    .line 821
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v1

    :cond_5
    :goto_1
    const/4 v2, 0x0

    .line 788
    :try_start_1
    iput v2, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;->a:I

    .line 789
    iput-object v0, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;->b:Ljava/lang/String;

    .line 790
    iput-object v0, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;->c:Ljava/util/List;

    .line 791
    iput-object v0, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$SourceCombinedInfo;->d:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_6

    .line 821
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 783
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz p0, :cond_8

    if-eqz v0, :cond_7

    .line 821
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_3
    throw v1
.end method

.method private static f(Landroid/content/Context;)Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;
    .locals 12

    .line 825
    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->a:Landroid/net/Uri;

    sget-object v2, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->i:[Ljava/lang/String;

    const-string v3, "is_sync=0"

    const-string v5, "source_playlist_id"

    const/4 v4, 0x0

    move-object v0, p0

    .line 826
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    .line 829
    :try_start_0
    new-instance v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;-><init>(Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$1;)V

    if-eqz p0, :cond_5

    .line 830
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 839
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->a:I

    .line 840
    new-instance v2, Ljava/util/ArrayList;

    iget v3, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->a:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->b:Ljava/util/List;

    .line 841
    new-instance v2, Ljava/util/ArrayList;

    iget v3, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->a:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->e:Ljava/util/List;

    .line 842
    new-instance v2, Ljava/util/ArrayList;

    iget v3, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->a:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->d:Ljava/util/List;

    .line 843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id"

    .line 845
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "source_playlist_id"

    .line 847
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "date_added"

    .line 848
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v6, "name"

    .line 849
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 853
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    .line 854
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 855
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 857
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getTargetCombinedInfo() there is unmatched playlist "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 859
    sget-object v9, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper;->a:Ljava/lang/String;

    invoke-static {v8, v9, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 865
    :cond_1
    iget-object v8, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->b:Ljava/util/List;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v7, 0x2c

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 867
    iget-object v7, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->d:Ljava/util/List;

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    iget-object v7, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->e:Ljava/util/List;

    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 871
    :cond_2
    iget v3, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->a:I

    if-lez v3, :cond_3

    .line 873
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    if-eqz p0, :cond_4

    .line 876
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v1

    :cond_5
    :goto_1
    const/4 v2, 0x0

    .line 831
    :try_start_1
    iput v2, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->a:I

    .line 832
    iput-object v0, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->c:Ljava/lang/String;

    .line 833
    iput-object v0, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->b:Ljava/util/List;

    .line 834
    iput-object v0, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->d:Ljava/util/List;

    .line 835
    iput-object v0, v1, Lcom/samsung/android/app/music/provider/sync/SyncPlaylistHelper$TargetCombinedInfo;->e:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_6

    .line 876
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 825
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz p0, :cond_8

    if-eqz v0, :cond_7

    .line 876
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_8
    :goto_3
    throw v1
.end method
