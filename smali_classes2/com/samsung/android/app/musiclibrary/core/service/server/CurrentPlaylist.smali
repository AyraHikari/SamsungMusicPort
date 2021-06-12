.class public final Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;,
        Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;
    }
.end annotation


# instance fields
.field private final activeQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

.field private final context:Landroid/content/Context;

.field private final header:Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;

.field private final socket:Ljava/net/Socket;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;Ljava/net/Socket;Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "header"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socket"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activeQueue"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist;->header:Lcom/samsung/android/app/musiclibrary/core/service/server/ContentProxyServerResponder$Header;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist;->socket:Ljava/net/Socket;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist;->activeQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    return-void
.end method

.method private final writeBodyByQueueOrder(Ljava/io/OutputStream;)V
    .locals 22

    move-object/from16 v1, p0

    .line 43
    iget-object v0, v1, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist;->activeQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 45
    new-array v4, v2, [J

    iget-object v5, v1, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist;->activeQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getCurAudioId()J

    move-result-wide v5

    aput-wide v5, v4, v3

    goto :goto_1

    .line 47
    :cond_0
    iget-object v4, v1, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist;->activeQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    const/16 v5, 0xc

    invoke-interface {v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getExtraInformation(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    check-cast v4, Ljava/util/List;

    .line 50
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [J

    .line 51
    check-cast v4, Ljava/lang/Iterable;

    .line 113
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v3, 0x1

    if-gez v3, :cond_1

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_1
    check-cast v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;

    .line 52
    iget-wide v8, v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$ListInfo$PlayItem;->audioId:J

    aput-wide v8, v5, v3

    move v3, v7

    goto :goto_0

    :cond_2
    move-object v4, v5

    .line 56
    :goto_1
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 57
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;

    .line 58
    iget-object v5, v1, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist;->context:Landroid/content/Context;

    .line 59
    sget-object v6, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v7, "_id"

    const-string v8, "source_id"

    const-string v9, "cp_attrs"

    const-string v10, "title"

    const-string v12, "artist"

    .line 61
    filled-new-array {v7, v8, v9, v10, v12}, [Ljava/lang/String;

    move-result-object v7

    .line 57
    invoke-direct {v3, v5, v6, v4, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;-><init>(Landroid/content/Context;Landroid/net/Uri;[J[Ljava/lang/String;)V

    check-cast v3, Landroid/database/Cursor;

    .line 115
    move-object v4, v3

    check-cast v4, Ljava/io/Closeable;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/Throwable;

    :try_start_0
    move-object v6, v4

    check-cast v6, Landroid/database/Cursor;

    .line 126
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_4

    .line 128
    :cond_3
    :goto_2
    move-object v6, v3

    check-cast v6, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;

    const/16 v7, 0x63

    .line 67
    invoke-virtual {v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->getLong(I)J

    move-result-wide v7

    if-eqz v0, :cond_4

    .line 68
    iget-object v9, v1, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist;->activeQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v9}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getNowPlayingListPosition()I

    move-result v9

    goto :goto_3

    :cond_4
    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->getPosition()I

    move-result v9

    .line 70
    :goto_3
    new-instance v10, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;

    int-to-long v12, v9

    .line 71
    invoke-static {v7, v8, v12, v13}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueListProducer;->getQueueItemId(JJ)J

    move-result-wide v13

    .line 73
    invoke-virtual {v6, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v12, "c.getString(1)"

    invoke-static {v9, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x2

    .line 74
    invoke-virtual {v6, v12}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->getLong(I)J

    move-result-wide v18

    const/4 v12, 0x3

    .line 75
    invoke-virtual {v6, v12}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v12, "c.getString(3)"

    invoke-static {v15, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x4

    .line 76
    invoke-virtual {v6, v12}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueCursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v12, "c.getString(4)"

    invoke-static {v6, v12}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v10

    move-object/from16 v20, v15

    move-wide v15, v7

    move-object/from16 v17, v9

    move-object/from16 v21, v6

    .line 70
    invoke-direct/range {v12 .. v21}, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Item;-><init>(JJLjava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_6

    .line 131
    :goto_4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 80
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;

    .line 81
    iget-object v2, v1, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist;->activeQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getShuffleMode()I

    move-result v6

    .line 82
    iget-object v2, v1, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist;->activeQueue:Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IPlayerQueue;->getRepeatMode()I

    move-result v7

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v5, v0

    .line 80
    invoke-direct/range {v5 .. v11}, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist$Queue;-><init>(IIIJLjava/util/ArrayList;)V

    .line 87
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Gson().toJson(q)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lkotlin/text/Charsets;->a:Ljava/nio/charset/Charset;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const-string v2, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v6, p1

    invoke-virtual {v6, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object/from16 v6, p1

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v5, v0

    .line 115
    :try_start_1
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_5
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 47
    :cond_7
    new-instance v0, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type kotlin.collections.List<com.samsung.android.app.musiclibrary.core.service.queue.QueueInfo.ListInfo.PlayItem>"

    invoke-direct {v0, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final writePlaylist()V
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Ljava/io/OutputStream;

    .line 36
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/server/OutputStreamKt;->writeSuccessHeader(Ljava/io/OutputStream;)V

    const-string v3, "out"

    .line 37
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/server/CurrentPlaylist;->writeBodyByQueueOrder(Ljava/io/OutputStream;)V

    .line 38
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method
