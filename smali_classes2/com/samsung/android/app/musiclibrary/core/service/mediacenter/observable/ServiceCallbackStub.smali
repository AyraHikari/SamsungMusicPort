.class final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;
.super Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-Ui-MediaCenter"

.field private static final SUB_TAG:Ljava/lang/String; = "ServiceCallback: "

.field private static final TAG:Ljava/lang/String; = "Ui-MediaCenter"

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private mActiveQueueType:I

.field private final mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mMessageHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;

.field private mRadioMediaObserver:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->EMPTY_LIST:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;)V
    .locals 1
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mActiveQueueType:I

    .line 60
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    .line 61
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mMessageHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;)V
    .locals 0

    .line 35
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->saveExtraCurrentListPosition(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;)V

    return-void
.end method

.method private static convertToQueueItems(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 181
    sget-object p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private ensureRadioObserver()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mRadioMediaObserver:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mRadioMediaObserver:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;

    :cond_0
    return-void
.end method

.method private getActiveQueueType(Landroid/os/Bundle;)I
    .locals 2

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    const/4 v1, 0x0

    .line 171
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private getActiveQueueType(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;)I
    .locals 2

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    const/4 v1, 0x0

    .line 165
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private static saveExtraCurrentListPosition(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;)V
    .locals 2

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueuePosition()J

    move-result-wide v0

    long-to-int p0, v0

    const-string v0, "extra.list_position"

    .line 188
    invoke-virtual {p1, v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private setActiveQueueType(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mActiveQueueType:I

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 106
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 107
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->getActiveQueueType(Landroid/os/Bundle;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->setActiveQueueType(I)V

    .line 108
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mActiveQueueType:I

    if-ne v0, v1, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->ensureRadioObserver()V

    :cond_0
    const/4 v0, -0x1

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "com.samsung.android.app.music.core.state.queue.CURRENT_QUEUE_TYPE"

    .line 114
    invoke-virtual {p2, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_2

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mRadioMediaObserver:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;

    if-eqz v0, :cond_4

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mRadioMediaObserver:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    .line 120
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->setMusicExtras(Landroid/os/Bundle;)V

    .line 122
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    monitor-enter v0

    .line 125
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->setMusicExtras(Landroid/os/Bundle;)V

    .line 126
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mRadioMediaObserver:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;

    if-eqz v0, :cond_4

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mRadioMediaObserver:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 131
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mMessageHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :catchall_1
    move-exception p1

    .line 126
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueType()I

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v1

    .line 73
    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->saveExtraCurrentListPosition(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;)V

    .line 74
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->setMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 75
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 77
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->ensureRadioObserver()V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mRadioMediaObserver:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 81
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mMessageHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->getActiveQueueType(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mActiveQueueType:I

    .line 90
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mActiveQueueType:I

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->setPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 93
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->ensureRadioObserver()V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mRadioMediaObserver:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mMessageHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method public onQueueChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;Landroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->convertToQueueItems(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;)Ljava/util/List;

    move-result-object p1

    const-string v0, "com.samsung.android.app.music.core.state.queue.CURRENT_QUEUE_TYPE"

    .line 140
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->ensureRadioObserver()V

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mRadioMediaObserver:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub$RadioMediaObserver;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mMessageHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->setMusicQueue(Ljava/util/List;Landroid/os/Bundle;)V

    const-string v1, "extra.list_position"

    .line 149
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 150
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    .line 151
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueuePosition()J

    move-result-wide v3

    long-to-int v3, v3

    if-eq v1, v3, :cond_1

    const-string v3, "com.google.android.music.mediasession.METADATA_KEY_QUEUE_POSITION"

    int-to-long v4, v1

    .line 154
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->changeAttribute(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Ljava/lang/String;J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->setMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 158
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;->mMessageHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    return-void

    :catchall_0
    move-exception p1

    .line 158
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
