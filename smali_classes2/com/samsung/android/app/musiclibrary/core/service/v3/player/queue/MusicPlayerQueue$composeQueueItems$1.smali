.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->composeQueueItems([J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    b = "MusicPlayerQueue.kt"
    c = {}
    d = "invokeSuspend"
    e = "com.samsung.android.app.musiclibrary.core.service.v3.player.queue.MusicPlayerQueue$composeQueueItems$1"
.end annotation


# instance fields
.field final synthetic $list:[J

.field label:I

.field private p$:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;[JLkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;->$list:[J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;->$list:[J

    invoke-direct {v0, v1, v2, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;[JLkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    .line 366
    iget v2, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;->label:I

    if-nez v2, :cond_4

    instance-of v2, v0, Lkotlin/Result$Failure;

    if-nez v2, :cond_3

    iget-object v0, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;->p$:Lkotlinx/coroutines/CoroutineScope;

    .line 367
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/List;

    .line 368
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;

    .line 369
    iget-object v4, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Landroid/content/Context;

    move-result-object v4

    .line 370
    iget-object v5, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getOptions$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->getContents()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "options.contents.getMatc\u2026ents.UriType.MEDIA_TRACK)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    iget-object v6, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;->$list:[J

    .line 372
    iget-object v7, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    invoke-static {v7}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getOptions$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;->getQueueItemProjection()[Ljava/lang/String;

    move-result-object v7

    .line 368
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;-><init>(Landroid/content/Context;Landroid/net/Uri;[J[Ljava/lang/String;)V

    check-cast v3, Landroid/database/Cursor;

    .line 656
    move-object v4, v3

    check-cast v4, Ljava/io/Closeable;

    const/4 v5, 0x0

    check-cast v5, Ljava/lang/Throwable;

    :try_start_0
    move-object v6, v4

    check-cast v6, Landroid/database/Cursor;

    .line 667
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_0

    move-object/from16 v17, v4

    goto/16 :goto_1

    .line 669
    :cond_0
    :goto_0
    move-object v6, v3

    check-cast v6, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;

    .line 374
    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->a(Lkotlinx/coroutines/CoroutineScope;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    .line 375
    :cond_1
    :try_start_1
    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->getPosition()I

    move-result v7

    int-to-long v7, v7

    const/16 v9, 0x63

    .line 376
    invoke-virtual {v6, v9}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/content/QueueCursor;->getLong(I)J

    move-result-wide v9

    .line 377
    new-instance v11, Landroid/media/MediaDescription$Builder;

    invoke-direct {v11}, Landroid/media/MediaDescription$Builder;-><init>()V

    .line 378
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    .line 379
    iget-object v12, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    move-object v13, v6

    check-cast v13, Landroid/database/Cursor;

    const-string v14, "title"

    invoke-static {v12, v13, v14}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getStringOrNull(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 380
    iget-object v13, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    move-object v14, v6

    check-cast v14, Landroid/database/Cursor;

    const-string v15, "artist"

    invoke-static {v13, v14, v15}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getStringOrNull(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 381
    move-object v14, v12

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v11, v14}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    .line 382
    move-object v14, v13

    check-cast v14, Ljava/lang/CharSequence;

    invoke-virtual {v11, v14}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    .line 383
    new-instance v14, Landroid/os/Bundle;

    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    const-string v15, "com.google.android.music.mediasession.music_metadata"

    move-object/from16 v16, v0

    .line 386
    iget-object v0, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v17, v4

    :try_start_2
    move-object v4, v6

    check-cast v4, Landroid/database/Cursor;

    invoke-static {v0, v12, v13, v4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$buildExtraMeta(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;)Landroid/media/MediaMetadata;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 384
    invoke-virtual {v14, v15, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "com.samsung.android.app.music.metadata.music_metadata.META_OTHERS"

    .line 390
    iget-object v4, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    check-cast v6, Landroid/database/Cursor;

    invoke-static {v4, v6}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$buildExtraMetaOthers(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Landroid/database/Cursor;)Landroid/media/MediaMetadata;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    .line 388
    invoke-virtual {v14, v0, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 383
    invoke-virtual {v11, v14}, Landroid/media/MediaDescription$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/MediaDescription$Builder;

    .line 394
    new-instance v0, Landroid/media/session/MediaSession$QueueItem;

    invoke-virtual {v11}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v4

    iget-object v6, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    invoke-static {v6, v9, v10, v7, v8}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$convertQueueItemId(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;JJ)J

    move-result-wide v6

    invoke-direct {v0, v4, v6, v7}, Landroid/media/session/MediaSession$QueueItem;-><init>(Landroid/media/MediaDescription;J)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 672
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v4, v17

    .line 656
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 396
    iget-object v0, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    iget-object v3, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getQueueOptionBuilder$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$notifyQueueComposed(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption$Builder;)V

    .line 397
    iget-object v0, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    iget-object v2, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getPlayList$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)[J

    move-result-object v2

    iget-object v3, v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue$composeQueueItems$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$getCurrentPosition$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;->access$saveQueue(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;[JI)V

    .line 398
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v4, v17

    goto :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v4, v17

    goto :goto_2

    :cond_2
    move-object/from16 v0, v16

    move-object/from16 v4, v17

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :goto_2
    move-object v5, v0

    .line 656
    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    invoke-static {v4, v5}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 366
    :cond_3
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    .line 398
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
