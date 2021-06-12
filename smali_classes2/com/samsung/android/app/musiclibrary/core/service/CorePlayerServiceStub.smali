.class final Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;
.super Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# instance fields
.field private final mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

.field private final mServiceFacade:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerService$Stub;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    .line 40
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    return-void
.end method

.method private getHistory(Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;
    .locals 4

    const-string v0, "queue_playlist_id"

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "queue_playlist_count"

    .line 73
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "queue_playlist_all"

    .line 74
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 75
    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;-><init>(ILjava/lang/String;IZ)V

    return-object v2
.end method


# virtual methods
.method public addQueue(II[JZILandroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p6, :cond_0

    const/4 p6, 0x0

    :goto_0
    move-object v5, p6

    goto :goto_1

    .line 67
    :cond_0
    invoke-direct {p0, p6}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->getHistory(Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;

    move-result-object p6

    goto :goto_0

    :goto_1
    move v0, p1

    move v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    .line 66
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;->create(II[JZILcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;

    move-result-object p1

    .line 68
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->addQueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$EnqueueRequest;)V

    return-void
.end method

.method public addQueueItems(ILcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->addQueueItems(ILjava/util/List;ZI)V

    return-void
.end method

.method public buffering()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->buffering()I

    move-result v0

    return v0
.end method

.method public duration()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExtraInformation(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getExtraInformation(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    return-object v0
.end method

.method public getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getNextRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getNextRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getPlayingItemExtras()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getPlayingItemExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getQueueList()Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getQueueList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 120
    :cond_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;

    invoke-direct {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;-><init>(Ljava/util/List;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getRadioQueueExtras()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->getRadioQueueExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public moveQueueItem(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->moveQueueItem(II)V

    return-void
.end method

.method public next()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->next()Z

    return-void
.end method

.method public openQueue(IILjava/lang/String;[JLcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;IZLandroid/os/Bundle;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p8

    const/4 v2, 0x0

    if-nez p5, :cond_0

    move-object v8, v2

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    move-object v8, v3

    .line 50
    :goto_0
    new-instance v10, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;

    const-wide/16 v3, 0x0

    move/from16 v5, p7

    invoke-direct {v10, v5, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;-><init>(ZJ)V

    .line 51
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move v4, p2

    .line 52
    invoke-interface {v3, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->convertToUriType(I)I

    move-result v5

    if-nez v1, :cond_1

    :goto_1
    move-object v11, v2

    goto :goto_2

    .line 53
    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->getHistory(Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;

    move-result-object v2

    goto :goto_1

    :goto_2
    move v4, p1

    move-object v6, p3

    move-object/from16 v7, p4

    move/from16 v9, p6

    .line 52
    invoke-static/range {v4 .. v11}, Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;->create(IILjava/lang/String;[JLjava/util/List;ILcom/samsung/android/app/musiclibrary/core/service/QueueRequest$PlayerOption;Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$QueueHistory;)Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;

    move-result-object v1

    .line 54
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->openQueue(Lcom/samsung/android/app/musiclibrary/core/service/QueueRequest$OpenRequest;)V

    return-void
.end method

.method public openQueuePosition(IIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->openQueuePosition(IIZ)V

    return-void
.end method

.method public pause()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->pause()V

    return-void
.end method

.method public play()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->play()V

    return-void
.end method

.method public position()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->prev(Z)Z

    return-void
.end method

.method public registerCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->registerCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    return-void
.end method

.method public removeQueueAudioIds([J)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->removeQueueAudioIds([J)I

    move-result p1

    return p1
.end method

.method public removeQueuePosition([I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->removeQueuePosition([I)I

    move-result p1

    return p1
.end method

.method public seek(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->seek(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public sendCustomEvent(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->onCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method public sendCustomEventBundle(ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->onCustomEvent(ILandroid/os/Bundle;)V

    return-void
.end method

.method public togglePlay()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->togglePlay()V

    return-void
.end method

.method public toggleQueueMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->toggleQueueMode(I)I

    return-void
.end method

.method public unregisterCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerServiceStub;->mServiceFacade:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->unregisterCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V

    return-void
.end method
