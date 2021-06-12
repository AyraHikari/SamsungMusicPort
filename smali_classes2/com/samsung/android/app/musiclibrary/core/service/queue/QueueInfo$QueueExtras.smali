.class public final Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QueueExtras"
.end annotation


# instance fields
.field private final extras:Landroid/os/Bundle;

.field private final modeExtras:Landroid/os/Bundle;

.field private final supportUnionMode:Z


# direct methods
.method constructor <init>(ZI)V
    .locals 3

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->extras:Landroid/os/Bundle;

    .line 285
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->modeExtras:Landroid/os/Bundle;

    .line 290
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->supportUnionMode:Z

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->extras:Landroid/os/Bundle;

    const-string v1, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->modeExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 292
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->extras:Landroid/os/Bundle;

    const-string v1, "com.samsung.android.app.music.core.state.queue.CURRENT_QUEUE_TYPE"

    invoke-direct {p0, v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 293
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v0, "extra.shuffle_state"

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 294
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v0, "extra.repeat_state"

    invoke-direct {p0, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 295
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v0, "extra.sort_state"

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    .line 297
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string p2, "extra.union_shuffle_repeat_state"

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;II)V
    .locals 0

    .line 282
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->setQueueMode(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;ILjava/util/List;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->setQueueModeList(ILjava/util/List;)V

    return-void
.end method

.method private putChangedListMode(I)V
    .locals 2

    .line 413
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v1, "extra.list_mode_type"

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    return-void
.end method

.method private putInt(Landroid/os/Bundle;Ljava/lang/String;I)V
    .locals 0

    .line 417
    monitor-enter p0

    .line 418
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 419
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private putIntegerList(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 429
    monitor-enter p0

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    .line 430
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p3, v0

    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 431
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private putLong(Landroid/os/Bundle;Ljava/lang/String;J)V
    .locals 0

    .line 423
    monitor-enter p0

    .line 424
    :try_start_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 425
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private putRepeatMode(I)V
    .locals 2

    .line 369
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->supportUnionMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 370
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putChangedListMode(I)V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v1, "extra.repeat_state"

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    return-void
.end method

.method private putShuffleList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 389
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putShuffleList(Ljava/util/List;Z)V

    return-void
.end method

.method private putShuffleList(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 393
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->supportUnionMode:Z

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    .line 394
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putChangedListMode(I)V

    .line 396
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v0, "extra.shuffle_list"

    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    :cond_1
    invoke-direct {p0, p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putIntegerList(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private putShuffleMode(I)V
    .locals 2

    .line 362
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->supportUnionMode:Z

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 363
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putChangedListMode(I)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v1, "extra.shuffle_state"

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    return-void
.end method

.method private putSortList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 401
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putSortList(Ljava/util/List;Z)V

    return-void
.end method

.method private putSortList(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    .line 406
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putChangedListMode(I)V

    .line 408
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v0, "extra.sort_list"

    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    :cond_1
    invoke-direct {p0, p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putIntegerList(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private putSortMode(I)V
    .locals 3

    .line 384
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v1, "extra.list_mode_type"

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    .line 385
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v1, "extra.sort_state"

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    return-void
.end method

.method private putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 435
    monitor-enter p0

    .line 436
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private putUnionMode(I)V
    .locals 2

    const/4 v0, 0x3

    .line 376
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putChangedListMode(I)V

    .line 377
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->modeExtras:Landroid/os/Bundle;

    const-string v1, "extra.union_shuffle_repeat_state"

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    return-void
.end method

.method private setQueueMode(II)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 321
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putSortMode(I)V

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 323
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putSortList(Ljava/util/List;Z)V

    goto :goto_0

    .line 318
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putUnionMode(I)V

    goto :goto_0

    .line 312
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putShuffleMode(I)V

    if-nez p2, :cond_0

    .line 314
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putShuffleList(Ljava/util/List;Z)V

    goto :goto_0

    .line 309
    :pswitch_3
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putRepeatMode(I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setQueueModeList(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 337
    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putSortList(Ljava/util/List;)V

    goto :goto_0

    .line 334
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putShuffleList(Ljava/util/List;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->extras:Landroid/os/Bundle;

    return-object v0
.end method

.method putCurrentPosition(I)V
    .locals 2

    .line 354
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->extras:Landroid/os/Bundle;

    const-string v1, "extra.list_position"

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    return-void
.end method

.method public putListInfo(II)V
    .locals 1

    .line 349
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putCurrentPosition(I)V

    .line 350
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->extras:Landroid/os/Bundle;

    const-string v0, "extra.list_length"

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    return-void
.end method

.method public putPlayListId(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->extras:Landroid/os/Bundle;

    const-string v1, "com.samsung.android.app.music.core.state.queue.RADIO_PLAYLIST_ITEM_ID"

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putLong(Landroid/os/Bundle;Ljava/lang/String;J)V

    .line 442
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->extras:Landroid/os/Bundle;

    const-string p2, "com.samsung.android.app.music.core.state.queue.RADIO_PLAYLIST_ID"

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->extras:Landroid/os/Bundle;

    const-string p2, "com.samsung.android.app.music.core.state.queue.RADIO_PLAYLIST_NAME"

    invoke-direct {p0, p1, p2, p4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->extras:Landroid/os/Bundle;

    const-string p2, "com.samsung.android.app.music.core.state.queue.RADIO_PLAYLIST_DESCRIPTION"

    invoke-direct {p0, p1, p2, p5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method putQueueChangedReason(I)V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->extras:Landroid/os/Bundle;

    const-string v1, "extra.queue_changed_reason"

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    return-void
.end method

.method putUriType(I)V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->extras:Landroid/os/Bundle;

    const-string v1, "extra.uri_type"

    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/QueueInfo$QueueExtras;->putInt(Landroid/os/Bundle;Ljava/lang/String;I)V

    return-void
.end method
