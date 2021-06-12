.class public final Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/app/music/util/task/Result;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask$Companion;


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;",
            ">;"
        }
    .end annotation
.end field

.field private final d:J

.field private e:[J

.field private f:[J

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:Z

.field private j:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->a:Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;J[JZ)V
    .locals 9

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move v6, p5

    .line 70
    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;-><init>(Landroid/app/Activity;J[JZZLjava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;J[JZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 69
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;-><init>(Landroid/app/Activity;J[JZ)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;J[JZZLjava/lang/String;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->c:Ljava/util/ArrayList;

    const-string v0, "Playlist-AddPlaylistItems"

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructor title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", playlistId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    array-length v2, p4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", finish="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", showPlaylistDetails="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", activity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->b:Ljava/lang/ref/WeakReference;

    .line 86
    iput-wide p2, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->d:J

    if-eqz p4, :cond_1

    .line 87
    iput-object p4, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->e:[J

    .line 89
    :cond_1
    iput-object p7, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->g:Ljava/lang/String;

    .line 90
    iput-boolean p6, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->h:Z

    .line 91
    iput-boolean p5, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->i:Z

    return-void
.end method

.method private final a()Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;
    .locals 14

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 259
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v3, "_id"

    const-string v4, "cp_attrs"

    const-string v5, "local_track_id"

    const-string v6, "source_id"

    const-string v7, "title"

    const-string v8, "source_album_id"

    const-string v9, "source_artist_id"

    const-string v10, "album"

    const-string v11, "artist"

    const-string v12, "_display_name"

    const-string v13, "explicit"

    .line 260
    filled-new-array/range {v3 .. v13}, [Ljava/lang/String;

    move-result-object v3

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id IN ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->f:[J

    if-nez v5, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x3f

    const/4 v13, 0x0

    invoke-static/range {v5 .. v13}, Lkotlin/collections/ArraysKt;->a([JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 275
    iget-object v1, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v5, "uri"

    .line 276
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 275
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v7

    .line 345
    :goto_0
    move-object v2, v1

    check-cast v2, Ljava/io/Closeable;

    move-object v3, v7

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v2

    check-cast v4, Landroid/database/Cursor;

    const/4 v4, 0x0

    if-nez v1, :cond_2

    goto/16 :goto_a

    .line 356
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_a

    :cond_3
    const-string v5, "_id"

    .line 359
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 279
    move-object v8, v0

    check-cast v8, Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;

    invoke-direct {v10}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;-><init>()V

    .line 280
    invoke-virtual {v10}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getExtras()Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;

    move-result-object v11

    .line 281
    invoke-virtual {v11, v5, v6}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->setAudioId(J)V

    const-string v5, "source_album_id"

    .line 360
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v5, v7

    goto :goto_1

    :cond_4
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v11, v5}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->setAlbumId(Ljava/lang/String;)V

    const-string v5, "source_artist_id"

    .line 361
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v5, v7

    goto :goto_2

    :cond_5
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    const-string v5, "dummyArtistId"

    .line 284
    :goto_3
    invoke-virtual {v11, v5}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->setArtistIds(Ljava/lang/String;)V

    const-string v5, "artist"

    .line 362
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v5, v7

    goto :goto_4

    :cond_7
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_4
    if-eqz v5, :cond_8

    goto :goto_5

    :cond_8
    const-string v5, "unknown"

    .line 285
    :goto_5
    invoke-virtual {v11, v5}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->setArtistNames(Ljava/lang/String;)V

    const-string v5, "cp_attrs"

    .line 363
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v11, v5}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->setCpAttrs(I)V

    .line 289
    invoke-virtual {v10}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getExtras()Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->getCpAttrs()I

    move-result v5

    invoke-virtual {v10, v5}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->toAudioType(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->setAudioType(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v10}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getExtras()Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->getCpAttrs()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/app/music/provider/CpAttrs;->c(I)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "local_track_id"

    .line 364
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    const-string v5, "source_id"

    .line 365
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 290
    :goto_6
    invoke-virtual {v10, v5}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->setTrackId(Ljava/lang/String;)V

    const-string v5, "title"

    .line 366
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->setTrackTitle(Ljava/lang/String;)V

    const-string v5, "album"

    .line 367
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->setAlbumTitle(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v10}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getExtras()Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->getArtistIds()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getExtras()Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->getArtistNames()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v5, v6}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->toArtistList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->setArtistList(Ljava/util/List;)V

    const-string v5, "_display_name"

    .line 368
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_a

    move-object v5, v7

    goto :goto_7

    :cond_a
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_7
    invoke-virtual {v10, v5}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->setFileName(Ljava/lang/String;)V

    const-string v5, "explicit"

    .line 369
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_b

    move-object v5, v7

    goto :goto_8

    :cond_b
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_8
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_9

    :cond_c
    const/4 v5, 0x0

    .line 299
    :goto_9
    invoke-virtual {v10, v5}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->setExplicit(I)V

    .line 279
    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 372
    :goto_a
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 310
    iget-object v1, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->f:[J

    if-nez v1, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 374
    :cond_d
    array-length v2, v1

    :goto_b
    if-ge v4, v2, :cond_f

    aget-wide v5, v1, v4

    .line 310
    iget-object v3, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->c:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_e
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 312
    :cond_f
    new-instance v0, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->c:Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;-><init>(Ljava/util/List;)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v3, v0

    .line 345
    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_c
    invoke-static {v2, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private final a(Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;)[Landroid/content/ContentValues;
    .locals 7

    .line 316
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;->getList()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    .line 377
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-gez v2, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_0
    check-cast v3, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;

    .line 318
    iget-object v5, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "playlistTracks[index]"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;

    .line 319
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->getTrackId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getTrackId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 320
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->getTrackSeqId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    .line 322
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Result order is not matched. input trackId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " title: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getTrackTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " result trackId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " seqId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResult;->getTrackSeqId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 328
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 329
    iget-object v2, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->c:Ljava/util/ArrayList;

    check-cast v2, Ljava/lang/Iterable;

    .line 380
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    if-gez v1, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_3
    check-cast v3, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;

    .line 331
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack;->getExtras()Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrack$Extras;->getAudioId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v3, v1}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->makePlaylistMemberValues(Ljava/lang/Long;Ljava/lang/Integer;)Landroid/content/ContentValues;

    move-result-object v1

    .line 330
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v4

    goto :goto_1

    .line 334
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/content/ContentValues;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "contentValuesList.toArra\u2026(contentValuesList.size))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Landroid/content/ContentValues;

    return-object p1
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/samsung/android/app/music/util/task/Result;
    .locals 29

    move-object/from16 v0, p0

    const-string v1, "params"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    iget-object v1, v0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->f:[J

    const/4 v2, 0x0

    if-eqz v1, :cond_d

    .line 134
    iget-object v1, v0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_c

    const-string v3, "weakReference.get() ?: return null"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 136
    new-instance v15, Lcom/samsung/android/app/music/list/playlist/ConflictManager;

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v15, v3}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 138
    invoke-static {v3, v14, v13, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "key_add_tracks_to_top_of_playlist"

    invoke-interface {v4, v5, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 140
    iget-wide v5, v0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->d:J

    invoke-static {v5, v6, v4}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Members;->a(JZ)Landroid/net/Uri;

    move-result-object v12

    const/4 v5, -0x1

    .line 144
    iget-wide v6, v0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->d:J

    invoke-static {v3, v6, v7}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->getSourcePlaylistId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 146
    move-object/from16 v17, v2

    check-cast v17, Ljava/lang/String;

    const-wide/16 v18, 0x0

    .line 150
    sget-boolean v6, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/16 v10, 0x106c

    if-eqz v6, :cond_5

    if-eqz v11, :cond_5

    sget-object v6, Lcom/samsung/android/app/music/network/Retrofit;->a:Lcom/samsung/android/app/music/network/Retrofit$Companion;

    invoke-virtual {v6, v1}, Lcom/samsung/android/app/music/network/Retrofit$Companion;->a(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 151
    sget-object v1, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->Companion:Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi$Companion;->instance(Landroid/content/Context;)Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 155
    iget-wide v6, v0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->d:J

    invoke-static {v3, v6, v7}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->getLastSyncedDate(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 157
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->a()Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;

    move-result-object v7

    .line 153
    invoke-interface {v1, v11, v6, v4, v7}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApi;->addPlaylistTracks(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/app/music/list/playlist/AddPlaylistTrackRequest;)Lretrofit2/Call;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 158
    invoke-static {v1}, Lcom/samsung/android/app/music/network/RetrofitKt;->a(Lretrofit2/Call;)Lretrofit2/Response;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 159
    invoke-virtual {v1}, Lretrofit2/Response;->d()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 160
    invoke-virtual {v1}, Lretrofit2/Response;->e()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v4, "it.body()!!"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;

    .line 161
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;->getResultCode()I

    move-result v9

    if-eqz v9, :cond_2

    if-eq v9, v10, :cond_1

    move v5, v9

    move-object/from16 v20, v11

    move-object v1, v12

    move-object/from16 v22, v15

    const/4 v4, 0x0

    :goto_0
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 181
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->deviceName(Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;)Ljava/lang/String;

    move-result-object v17

    .line 182
    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;)J

    move-result-wide v18

    .line 183
    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->modifiedState(Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;)I

    move-result v1

    move v4, v1

    move v5, v9

    move-object/from16 v20, v11

    move-object v1, v12

    move-object/from16 v22, v15

    goto :goto_0

    .line 165
    :cond_2
    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->a(Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;)[Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "uri"

    .line 166
    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v12, v4}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v8

    .line 168
    array-length v4, v4

    if-ne v8, v4, :cond_3

    .line 171
    iget-wide v5, v0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->d:J

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    .line 172
    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;)J

    move-result-wide v21

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 173
    invoke-static {v1}, Lcom/samsung/android/app/music/list/playlist/SyncPlaylistApiKt;->dateSynced(Lcom/samsung/android/app/music/list/playlist/AddPlaylistTrackResponse;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x19c

    const/16 v26, 0x0

    move-object v4, v3

    move/from16 v27, v8

    move-object/from16 v8, v16

    move/from16 v28, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    move-object/from16 v20, v11

    move-object v11, v1

    move-object v1, v12

    move-object/from16 v12, v22

    move-object/from16 v13, v23

    const/16 v21, 0x0

    move/from16 v14, v24

    move-object/from16 v22, v15

    move/from16 v15, v25

    move-object/from16 v16, v26

    .line 169
    invoke-static/range {v4 .. v16}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->updatePlaylistDb$default(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILjava/lang/Object;)I

    move/from16 v14, v27

    move/from16 v5, v28

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    move/from16 v27, v8

    move-object/from16 v20, v11

    move-object v1, v12

    move-object/from16 v22, v15

    const/16 v21, 0x0

    const/16 v4, -0x64

    move/from16 v14, v27

    const/4 v4, 0x0

    const/16 v5, -0x64

    goto :goto_1

    :cond_4
    move-object/from16 v20, v11

    move-object v1, v12

    move-object/from16 v22, v15

    const/16 v21, 0x0

    const/4 v4, 0x0

    const/4 v14, 0x0

    :goto_1
    move v15, v5

    move-object/from16 v23, v17

    move/from16 v17, v4

    goto :goto_2

    :cond_5
    move-object/from16 v20, v11

    move-object v1, v12

    move-object/from16 v22, v15

    const/16 v21, 0x0

    move-object/from16 v23, v17

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v17, 0x0

    :goto_2
    if-nez v14, :cond_a

    .line 191
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 192
    iget-object v5, v0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->f:[J

    if-nez v5, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 343
    :cond_6
    array-length v6, v5

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_7

    aget-wide v8, v5, v7

    .line 193
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x2

    invoke-static {v8, v2, v9, v2}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->makePlaylistMemberValues$default(Ljava/lang/Long;Ljava/lang/Integer;ILjava/lang/Object;)Landroid/content/ContentValues;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 195
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8

    const-string v2, "uri"

    .line 197
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/ContentValues;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v5, "contentValuesList.toArra\u2026(contentValuesList.size))"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, [Landroid/content/ContentValues;

    .line 196
    invoke-static {v3, v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    add-int/2addr v14, v1

    .line 199
    sget-object v1, Lcom/samsung/android/app/music/main/LocalSyncTask;->a:Lcom/samsung/android/app/music/main/LocalSyncTask$Companion;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/main/LocalSyncTask$Companion;->a(I)V

    .line 200
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    :cond_8
    const/4 v2, 0x1

    :goto_4
    move v1, v14

    .line 203
    sget-boolean v4, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v4, :cond_9

    .line 205
    iget-wide v5, v0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->d:J

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/16 v4, 0x3e8

    int-to-long v12, v4

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v11, 0x0

    .line 207
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v2, 0x15c

    const/16 v16, 0x0

    move-object v4, v3

    move v3, v15

    move v15, v2

    .line 204
    invoke-static/range {v4 .. v16}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->updatePlaylistDb$default(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Long;ZILjava/lang/Object;)I

    goto :goto_5

    :cond_9
    move v3, v15

    goto :goto_5

    :cond_a
    move v3, v15

    move v1, v14

    :goto_5
    const/16 v2, 0x106c

    if-ne v3, v2, :cond_b

    .line 215
    iget-wide v5, v0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->d:J

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/16 v14, 0xa

    const/4 v15, 0x0

    move-object/from16 v4, v22

    move-object/from16 v8, v20

    move-object/from16 v10, v23

    move-wide/from16 v11, v18

    move/from16 v13, v17

    .line 214
    invoke-static/range {v4 .. v15}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->addConflict$default(Lcom/samsung/android/app/music/list/playlist/ConflictManager;JLjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILjava/lang/Object;)V

    .line 221
    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/app/music/list/playlist/ConflictManager;->execute()V

    .line 224
    :cond_b
    new-instance v2, Lcom/samsung/android/app/music/util/task/Result;

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/app/music/util/task/Result;-><init>(II)V

    return-object v2

    :cond_c
    return-object v2

    :cond_d
    return-object v2
.end method

.method protected a(Lcom/samsung/android/app/music/util/task/Result;)V
    .locals 5

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->j:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 229
    iget-object v1, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    const-string v2, "activity"

    .line 230
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 235
    move-object v1, v0

    check-cast v1, Landroid/app/ProgressDialog;

    iput-object v1, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->j:Landroid/app/ProgressDialog;

    const-string v1, "Playlist-AddPlaylistItems"

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object p1, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_2

    .line 240
    iget-boolean v1, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->h:Z

    if-eqz v1, :cond_1

    const-string v1, "activity"

    .line 242
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    check-cast v1, Landroid/content/Context;

    const v2, 0x100004

    .line 244
    iget-wide v3, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->d:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 245
    iget-object v4, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->g:Ljava/lang/String;

    .line 241
    invoke-static {v1, v2, v3, v4, v0}, Lcom/samsung/android/app/music/navigate/NaviUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 248
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 250
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->i:Z

    if-eqz v0, :cond_2

    .line 251
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method public synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 53
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->a([Ljava/lang/Void;)Lcom/samsung/android/app/music/util/task/Result;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 53
    check-cast p1, Lcom/samsung/android/app/music/util/task/Result;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->a(Lcom/samsung/android/app/music/util/task/Result;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 9

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->e:[J

    if-nez v0, :cond_0

    const-string v1, "originIds"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    iput-object v0, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->f:[J

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->e:[J

    if-nez v0, :cond_1

    const-string v1, "originIds"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    array-length v0, v0

    .line 97
    iget-object v1, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_7

    if-nez v1, :cond_2

    .line 98
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "context"

    .line 99
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->d:J

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v3, v2

    invoke-static/range {v3 .. v8}, Lcom/samsung/android/app/music/list/playlist/PlaylistKt;->getPlaylistMemberCount$default(Landroid/content/Context;JZILjava/lang/Object;)I

    move-result v3

    add-int/2addr v0, v3

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    if-le v0, v4, :cond_5

    .line 101
    new-instance v0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask$onPreExecute$1$1;

    invoke-direct {v0, v2}, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask$onPreExecute$1$1;-><init>(Landroid/content/Context;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    sub-int/2addr v4, v3

    if-lez v4, :cond_4

    .line 111
    new-array v0, v4, [J

    .line 112
    iget-object v2, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->e:[J

    if-nez v2, :cond_3

    const-string v3, "originIds"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    invoke-static {v2, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 110
    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->f:[J

    .line 119
    :cond_5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 120
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/samsung/android/app/music/network/Retrofit;->a:Lcom/samsung/android/app/music/network/Retrofit$Companion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/network/Retrofit$Companion;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 121
    new-instance v0, Landroid/app/ProgressDialog;

    move-object v2, v1

    check-cast v2, Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b018e

    .line 122
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 121
    iput-object v0, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->j:Landroid/app/ProgressDialog;

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->j:Landroid/app/ProgressDialog;

    if-nez v0, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_7
    return-void
.end method
