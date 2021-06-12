.class final Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$DataHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataHandler"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

.field private final b:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;Landroid/os/HandlerThread;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HandlerThread;",
            ")V"
        }
    .end annotation

    const-string v0, "handlerThread"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$DataHandler;->a:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    .line 35
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$DataHandler;->b:Landroid/os/HandlerThread;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;Landroid/os/HandlerThread;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 32
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "PlaylistItemThread"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$DataHandler;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;Landroid/os/HandlerThread;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    if-nez p1, :cond_0

    .line 38
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 76
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$DataHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$DataHandler;->b:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 78
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$DataHandler;->a:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    check-cast v1, Landroid/os/Handler;

    invoke-static {p1, v1}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->a(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;Landroid/os/Handler;)V

    goto/16 :goto_2

    .line 40
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;

    .line 41
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->a()J

    move-result-wide v12

    .line 42
    new-instance p1, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$DataHandler;->a:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->a()Landroid/content/Context;

    move-result-object v0

    .line 44
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    .line 42
    invoke-direct {p1, v0, v3, v4, v4}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    const-string v0, "album_id"

    const-string v3, "cp_attrs"

    .line 49
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v11, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;

    int-to-long v6, v4

    const/4 v8, 0x0

    const v9, 0x10001

    .line 55
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->e()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    move-result-object v10

    move-object v3, v11

    move-wide v4, v12

    .line 50
    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;-><init>(JJIILcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;)V

    .line 57
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$DataHandler;->a:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->a()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p1, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->uri:Landroid/net/Uri;

    const-string v3, "args.uri"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p1, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->selection:Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->orderBy:Ljava/lang/String;

    move-object v7, v0

    invoke-static/range {v5 .. v10}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    .line 58
    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 59
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x0

    const-string v5, "album_id"

    .line 144
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 62
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v7

    const-string v8, "cp_attrs"

    .line 145
    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x0

    const/16 v10, 0x11

    const/4 v11, 0x0

    .line 60
    invoke-static/range {v2 .. v11}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;->a(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;JJIILcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;ILjava/lang/Object;)Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;

    move-result-object v11

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$DataHandler;->a:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->a(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;)Landroid/util/LruCache;

    move-result-object v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v11}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$DataHandler;->a:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->a(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;)Landroid/util/LruCache;

    move-result-object v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$PlaylistItemInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :goto_0
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 70
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$DataHandler;->a:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->b(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;)Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$uiHandler$1;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$DataHandler;->a:Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->b(Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;)Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$uiHandler$1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$uiHandler$1;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$uiHandler$1;->sendMessage(Landroid/os/Message;)Z

    .line 72
    invoke-static {}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->b()Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$Companion;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$DataHandler;->removeMessages(I)V

    .line 73
    invoke-static {}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater;->b()Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$Companion;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistItemUpdater$DataHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 58
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {p1, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 40
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.music.list.local.PlaylistItemUpdater.PlaylistItemInfo"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
