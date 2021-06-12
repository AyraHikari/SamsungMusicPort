.class public Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaCenter"

.field private static final SUB_TAG:Ljava/lang/String; = "StandAlone: "

.field private static final TAG:Ljava/lang/String; = "SV-MediaCenter"


# instance fields
.field private final mArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;

.field protected final mContext:Landroid/content/Context;

.field private mLastRemoteViewIsPlaying:Z

.field private mLatestIsPlaying:Z

.field final mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IStandAloneRemoteViewUpdateHelper;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IStandAloneRemoteViewUpdateHelper;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->mLastRemoteViewIsPlaying:Z

    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->mLatestIsPlaying:Z

    .line 64
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 66
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IStandAloneRemoteViewUpdateHelper;

    .line 67
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->mArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "com.samsung.android.app.music.core.state.ARTWORK_UPDATED"

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "artwork"

    .line 124
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 125
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IStandAloneRemoteViewUpdateHelper;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->mContext:Landroid/content/Context;

    invoke-interface {p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IStandAloneRemoteViewUpdateHelper;->updateArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v1

    const-string v2, "android.media.metadata.ALBUM_ART"

    .line 79
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 81
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->addArtworkToMetadata(Landroid/media/MediaMetadata;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p1

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IStandAloneRemoteViewUpdateHelper;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IStandAloneRemoteViewUpdateHelper;->updateMetadataChanged(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->mLatestIsPlaying:Z

    return-void

    .line 96
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->mLastRemoteViewIsPlaying:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSamePlaybackState(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->mLatestIsPlaying:Z

    .line 97
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v1

    if-ne v0, v1, :cond_1

    const-string p1, "SMUSIC-SV-MediaCenter"

    const-string v0, "StandAlone: onPlaybackStateChanged() isSamePlaybackState is true"

    .line 100
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 103
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->mLastRemoteViewIsPlaying:Z

    .line 104
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->mLastRemoteViewIsPlaying:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->mLatestIsPlaying:Z

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IStandAloneRemoteViewUpdateHelper;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IStandAloneRemoteViewUpdateHelper;->updatePlaybackStateChanged(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

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

    return-void
.end method

.method final updateLatestIsPlaying(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/StandAloneRemoteViewUpdater;->mLatestIsPlaying:Z

    return-void
.end method
