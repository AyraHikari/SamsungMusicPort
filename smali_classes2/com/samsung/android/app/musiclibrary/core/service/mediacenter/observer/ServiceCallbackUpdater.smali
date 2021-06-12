.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater$OnCallbackCountChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV"

.field private static final SUB_TAG:Ljava/lang/String; = "UiUpdater: "

.field private static final TAG:Ljava/lang/String; = "SV"


# instance fields
.field private mAudioId:J

.field private final mControllerCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIsReleased:Z

.field private final mLock:Ljava/lang/Object;

.field private mNeedNotifySavedExtra:Z

.field private final mOnCallbackCountChangeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater$OnCallbackCountChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mSavedExtraMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mLock:Ljava/lang/Object;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mControllerCallbacks:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mSavedExtraMaps:Ljava/util/Map;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mNeedNotifySavedExtra:Z

    .line 49
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mIsReleased:Z

    const-wide/16 v0, -0x1

    .line 51
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mAudioId:J

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mOnCallbackCountChangeListeners:Ljava/util/Set;

    return-void
.end method

.method private fireOnCallbackCountChangeListener()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mOnCallbackCountChangeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater$OnCallbackCountChangeListener;

    .line 116
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mControllerCallbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater$OnCallbackCountChangeListener;->onCallbackCountChange(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getControllerCbIndexForCb(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)I
    .locals 2

    .line 233
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mControllerCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 235
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mControllerCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private notifySavedExtra()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mControllerCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mNeedNotifySavedExtra:Z

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mSavedExtraMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 246
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 252
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mNeedNotifySavedExtra:Z

    .line 253
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mSavedExtraMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_2
    return-void
.end method

.method private pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mIsReleased:Z

    if-eqz v1, :cond_0

    .line 145
    monitor-exit v0

    return-void

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mControllerCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->shouldSaveAction(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mSavedExtraMaps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mSavedExtraMaps:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mSavedExtraMaps:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iput-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mNeedNotifySavedExtra:Z

    goto :goto_2

    :cond_2
    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    .line 156
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mControllerCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    :try_start_1
    invoke-interface {v2, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "SMUSIC-SV"

    const-string v4, "UiUpdater: unexpected exception in pushExtraStateUpdate. "

    .line 168
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "SMUSIC-SV"

    const-string v4, "UiUpdater: unexpected exception in pushExtraStateUpdate. "

    .line 165
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_2
    move-exception v2

    const-string v3, "SMUSIC-SV"

    const-string v4, "UiUpdater: Removing dead callback in pushExtraStateUpdate. "

    .line 160
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mControllerCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 163
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->fireOnCallbackCountChangeListener()V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 173
    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private pushMetadataUpdate(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 5

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mIsReleased:Z

    if-eqz v1, :cond_0

    .line 97
    monitor-exit v0

    return-void

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mControllerCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 100
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mControllerCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :try_start_1
    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "SMUSIC-SV"

    const-string v4, "UiUpdater: unexpected exception in pushMetadataUpdate. "

    .line 108
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "SMUSIC-SV"

    const-string v4, "UiUpdater: Removing dead callback in pushMetadataUpdate. "

    .line 104
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mControllerCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->fireOnCallbackCountChangeListener()V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 111
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private pushPlaybackStateUpdate(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 5

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mIsReleased:Z

    if-eqz v1, :cond_0

    .line 123
    monitor-exit v0

    return-void

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mControllerCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 126
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mControllerCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :try_start_1
    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "SMUSIC-SV"

    const-string v4, "UiUpdater: unexpected exception in pushPlaybackStateUpdate. "

    .line 135
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "SMUSIC-SV"

    const-string v4, "UiUpdater: Removing dead callback in pushPlaybackStateUpdate. "

    .line 130
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mControllerCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->fireOnCallbackCountChangeListener()V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 139
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private pushQueueUpdate(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 5
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

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mIsReleased:Z

    if-eqz v1, :cond_0

    .line 179
    monitor-exit v0

    return-void

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mControllerCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 182
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mControllerCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 184
    :cond_1
    :try_start_1
    new-instance v3, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;

    invoke-direct {v3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;-><init>(Ljava/util/List;)V

    :goto_1
    invoke-interface {v2, v3, p2}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;->onQueueChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/ParceledListSlice;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "SMUSIC-SV"

    const-string v4, "UiUpdater: unexpected exception in pushQueueUpdate."

    .line 193
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v3, "SMUSIC-SV"

    const-string v4, "UiUpdater: unexpected exception in pushQueueUpdate."

    .line 191
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v2

    .line 187
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mControllerCallbacks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 188
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->fireOnCallbackCountChangeListener()V

    const-string v3, "SMUSIC-SV"

    const-string v4, "UiUpdater: Removed dead callback in pushQueueUpdate."

    .line 189
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 196
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private shouldSaveAction(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    const-string p2, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 258
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4

    .line 62
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    .line 63
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mAudioId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 64
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mAudioId:J

    .line 66
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->pushMetadataUpdate(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->pushPlaybackStateUpdate(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
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

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->pushQueueUpdate(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public registerCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mIsReleased:Z

    if-eqz v1, :cond_0

    .line 218
    monitor-exit v0

    return-void

    .line 220
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->getControllerCbIndexForCb(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)I

    move-result v1

    if-gez v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mControllerCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->fireOnCallbackCountChangeListener()V

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->notifySavedExtra()V

    .line 225
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public registerOnCallbackCountChangeListener(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater$OnCallbackCountChangeListener;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mOnCallbackCountChangeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 88
    :try_start_0
    iput-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mIsReleased:Z

    .line 89
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mOnCallbackCountChangeListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mSavedExtraMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void

    :catchall_0
    move-exception v1

    .line 89
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public unregisterCallbackListener(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->getControllerCbIndexForCb(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->mControllerCallbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 207
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->fireOnCallbackCountChangeListener()V

    .line 209
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
