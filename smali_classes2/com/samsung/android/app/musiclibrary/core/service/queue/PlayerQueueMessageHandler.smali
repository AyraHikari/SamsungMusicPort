.class final Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;
    }
.end annotation


# static fields
.field static final MSG_ENQUEUE:I = 0xb

.field static final MSG_ENQUEUE_QUEUE_ITEMS:I = 0xc

.field static final MSG_LOAD_SAVED_VALUES:I = 0x11

.field static final MSG_MOVE_TO:I = 0xd

.field static final MSG_NOTIFY_LEGAL_ERROR:I = 0x10

.field static final MSG_RELOAD_META:I = 0xa

.field static final MSG_RELOAD_QUEUE:I = 0x9

.field static final MSG_REMOVE_AUDIO_IDS:I = 0x8

.field static final MSG_REMOVE_QUEUE_POSITIONS:I = 0x7

.field static final MSG_REORDER_ITEM:I = 0x6

.field static final MSG_RESET_MOVE_TO_COUNT:I = 0xe

.field static final MSG_SET_LIST:I = 0x1

.field static final MSG_SET_POSITION:I = 0x4

.field static final MSG_SET_QUEUE_ITEM:I = 0x5

.field static final MSG_SET_REPEAT:I = 0x3

.field static final MSG_SET_SHUFFLE:I = 0x2

.field static final MSG_SET_SORT_MODE:I = 0xf

.field static final MSG_SET_UNION_MODE:I = 0x12


# instance fields
.field private final mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 64
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 125
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {v0, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->setUnionMode(IZ)V

    goto/16 :goto_0

    .line 122
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->loadSavedValues()V

    goto/16 :goto_0

    .line 119
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->notifyLegalError()V

    goto/16 :goto_0

    .line 116
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {v0, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->setSortMode(IZ)V

    goto/16 :goto_0

    .line 83
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->resetMoveToCount()V

    goto/16 :goto_0

    .line 80
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->moveTo(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$MoveToRequest;)V

    goto/16 :goto_0

    .line 111
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget v1, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->action:I

    iget v2, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->playMode:I

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->queueItems:Ljava/util/List;

    iget-boolean v4, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->doChangeToPosition:Z

    iget v5, p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->toPosition:I

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->enqueue(IILjava/util/List;ZI)V

    goto/16 :goto_0

    .line 107
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->enqueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V

    goto :goto_0

    .line 104
    :pswitch_8
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->reloadMeta()V

    goto :goto_0

    .line 101
    :pswitch_9
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->reloadSavedQueue(Z)V

    goto :goto_0

    .line 98
    :pswitch_a
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [J

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->removeIds([J)V

    goto :goto_0

    .line 95
    :pswitch_b
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->removePositions([I)V

    goto :goto_0

    .line 92
    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->reorder(II)V

    goto :goto_0

    .line 89
    :pswitch_d
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->setQueueItem(JI)V

    goto :goto_0

    .line 86
    :pswitch_e
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->setPosition(II)V

    goto :goto_0

    .line 77
    :pswitch_f
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-interface {v0, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->setRepeat(IZ)V

    goto :goto_0

    .line 74
    :pswitch_10
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-interface {v0, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->setShuffle(IZ)V

    goto :goto_0

    .line 71
    :pswitch_11
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler$IInternalListRequest;->setList(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public post(III)V
    .locals 0

    .line 144
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public post(ILjava/lang/Object;II)V
    .locals 0

    .line 139
    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 140
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/PlayerQueueMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 134
    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
