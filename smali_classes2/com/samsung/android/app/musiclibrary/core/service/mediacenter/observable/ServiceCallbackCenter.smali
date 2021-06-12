.class final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "Ui-MediaCenter"

.field private static volatile sCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;


# instance fields
.field private final mCallbackStub:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;

.field private final mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

.field private mIsCallbackRegistered:Z

.field private final mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->mObservers:Ljava/util/List;

    .line 25
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    .line 27
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->mCallbackStub:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->mIsCallbackRegistered:Z

    return-void
.end method

.method static getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;
    .locals 2

    .line 33
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->sCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->sCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;-><init>()V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->sCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->sCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;

    return-object v0
.end method

.method private hasItem(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;)Z
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 60
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 62
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    if-nez v1, :cond_1

    .line 64
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private unregisterCallbackIfEmpty()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->mCallbackStub:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unregisterCallback(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V

    const/4 v0, 0x0

    .line 148
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->mIsCallbackRegistered:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 133
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 134
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 135
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    if-nez v1, :cond_0

    .line 137
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->unregisterCallbackIfEmpty()V

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 87
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 89
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    if-nez v1, :cond_0

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->unregisterCallbackIfEmpty()V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 102
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 104
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    if-nez v1, :cond_0

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    goto :goto_0

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->unregisterCallbackIfEmpty()V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 2
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

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 118
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 120
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    if-nez v1, :cond_0

    .line 122
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    .line 127
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->unregisterCallbackIfEmpty()V

    return-void
.end method

.method public registerObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;)Ljava/lang/Boolean;
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->mIsCallbackRegistered:Z

    if-nez v0, :cond_1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->mCallbackStub:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackStub;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->registerCallback(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->mIsCallbackRegistered:Z

    .line 50
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->hasItem(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "Ui-MediaCenter"

    const-string v0, "registerObserver. but it was already registered"

    .line 51
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->mIsCallbackRegistered:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->mObservers:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->mIsCallbackRegistered:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 74
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 76
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ActivityMediaChangeCenter;

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 81
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCallbackCenter;->unregisterCallbackIfEmpty()V

    return-void
.end method
