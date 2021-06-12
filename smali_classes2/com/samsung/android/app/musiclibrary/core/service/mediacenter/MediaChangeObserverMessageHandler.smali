.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# static fields
.field private static final MSG_UPDATE_EXTRAS:I = 0x4

.field private static final MSG_UPDATE_METADATA:I = 0x1

.field private static final MSG_UPDATE_PLAYBACK_STATE:I = 0x2

.field private static final MSG_UPDATE_QUEUE:I = 0x3


# instance fields
.field private final mCallback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 34
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;->mCallback:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 65
    invoke-virtual {p1, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 56
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 53
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    .line 49
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_0

    .line 46
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x4

    .line 86
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 76
    invoke-direct {p0, v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x3

    .line 81
    invoke-direct {p0, v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method
