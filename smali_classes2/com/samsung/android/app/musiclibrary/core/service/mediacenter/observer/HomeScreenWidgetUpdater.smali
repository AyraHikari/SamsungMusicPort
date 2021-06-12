.class public Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;
.super Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaCenter"

.field private static final SUB_TAG:Ljava/lang/String; = "Widget: "

.field private static final TAG:Ljava/lang/String; = "SV-MediaCenter"


# instance fields
.field protected final mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IStandAloneRemoteViewUpdateHelper;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;)V

    .line 51
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;->hasActiveWidget(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.samsung.android.app.music.core.state.queue.MODE_CHANGED"

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_1

    return-void

    :cond_1
    const-string p1, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    .line 98
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 102
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mContext:Landroid/content/Context;

    invoke-interface {p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;->updateModeChanged(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void

    :cond_3
    const-string v0, "com.samsung.android.app.music.core.action.UPDATE_WIDGET_LIST"

    .line 104
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 105
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mContext:Landroid/content/Context;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;->updateHomeWidgetList(Landroid/content/Context;)V

    return-void

    .line 108
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;->hasActiveWidget(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;->hasActiveWidget(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->updateLatestIsPlaying(Z)V

    return-void

    .line 68
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

    if-nez p2, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;->hasActiveWidget(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 83
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/HomeScreenWidgetUpdater;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IHomeScreenWidgetUpdateHelper;->updateQueueChanged(Landroid/content/Context;Landroid/os/Bundle;)V

    return-void
.end method
