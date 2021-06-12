.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$PlaylistCardViewQuery;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaCenter"

.field private static final META_INTENT_WITHIN_TIME:I = 0x3e8

.field private static final SUB_TAG:Ljava/lang/String; = "EdgePanel: "

.field private static final TAG:Ljava/lang/String; = "SV-MediaCenter"


# instance fields
.field private mIsRegistered:Z

.field private mLastOnMetaChangedTime:J

.field private mPlaylistChangeObserver:Landroid/database/ContentObserver;

.field protected final mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IStandAloneRemoteViewUpdateHelper;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;)V

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mIsRegistered:Z

    .line 55
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;)Landroid/net/Uri;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->getCardVewContentNotifyUri()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->unregisterContentObserver()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;)J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mLastOnMetaChangedTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;)Ljava/util/List;
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->reloadCardViewItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private ensurePlaylistObserver()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mPlaylistChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    return-void

    .line 147
    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mPlaylistChangeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private getCardVewContentNotifyUri()Landroid/net/Uri;
    .locals 1

    .line 140
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Meta;->b:Landroid/net/Uri;

    return-object v0
.end method

.method private declared-synchronized registerContentObserver()V
    .locals 4

    monitor-enter p0

    .line 119
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mIsRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 120
    monitor-exit p0

    return-void

    .line 122
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->ensurePlaylistObserver()V

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->getCardVewContentNotifyUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mPlaylistChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mIsRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 118
    monitor-exit p0

    throw v0
.end method

.method private reloadCardViewItems()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;",
            ">;"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 188
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$PlaylistCardViewQuery;

    invoke-direct {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater$PlaylistCardViewQuery;-><init>()V

    .line 189
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v5, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v6, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v7, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v8, v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    .line 190
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    .line 192
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const-string v3, "_id"

    .line 195
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-string v3, "number_of_tracks"

    .line 197
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 196
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "album_id"

    .line 199
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 198
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const-string v4, "name"

    .line 200
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 201
    new-instance v12, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;

    move-object v4, v12

    move v7, v3

    move-object v10, v11

    invoke-direct/range {v4 .. v10}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IEdgePanelRemoteViewBuilder$CardViewItemData;-><init>(JIJLjava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "SMUSIC-SV-MediaCenter"

    .line 203
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reloadCardViewItems() Playlist title : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " track(s)"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 189
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_2

    if-eqz v2, :cond_1

    .line 208
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    throw v0

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0
.end method

.method private declared-synchronized unregisterContentObserver()V
    .locals 2

    monitor-enter p0

    .line 129
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mIsRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 130
    monitor-exit p0

    return-void

    .line 132
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mPlaylistChangeObserver:Landroid/database/ContentObserver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 133
    monitor-exit p0

    return-void

    .line 135
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mPlaylistChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mIsRegistered:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 128
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "SMUSIC-SV-MediaCenter"

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EdgePanel: onExtrasChanged() action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;->isEdgePanelVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.samsung.android.app.music.core.state.PLAYED_INFO_CHANGED"

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.samsung.android.app.music.core.state.FAVORITE_CHANGED"

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    :cond_2
    :goto_0
    const-string p1, "SMUSIC-SV-MediaCenter"

    const-string p2, "EdgePanel: onExtrasChanged() PLAYED_INFO OR FAVOURITE CHANGED"

    .line 106
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->reloadCardViewItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;->updateCardViewItems(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public final onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;->isEdgePanelVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->unregisterContentObserver()V

    .line 62
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;->clearRemoteViews()V

    return-void

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->registerContentObserver()V

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mLastOnMetaChangedTime:J

    .line 67
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    const-string p1, "SMUSIC-SV-MediaCenter"

    .line 71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mLastOnMetaChangedTime:J

    sub-long/2addr v0, v2

    const-string v2, "EdgePanel: onMetadataChanged()"

    const-string v3, "RemoteViewBuildHelper create and compose artwork"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/DebugTspUtils;->printTspLog(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;->isEdgePanelVisible()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->updateLatestIsPlaying(Z)V

    return-void

    .line 84
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

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

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IEdgePanelUpdateHelper;->isEdgePanelVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method public release()V
    .locals 0

    .line 115
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/EdgePanelUpdater;->unregisterContentObserver()V

    return-void
.end method
