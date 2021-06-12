.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IMPL"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private mCurrentState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

.field private final mFavoriteTrackUtil:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IFavoriteTrack;

.field private final mIntentExtras:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IIntentExtras;

.field private mIsSupposeTobePlaying:Z

.field private final mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

.field private mUriType:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IIntentExtras;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->mIsSupposeTobePlaying:Z

    .line 67
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->mContext:Landroid/content/Context;

    .line 68
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;->getMusicContents()Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 69
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;->getFavoriteTrack()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IFavoriteTrack;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->mFavoriteTrackUtil:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IFavoriteTrack;

    .line 70
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->mIntentExtras:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IIntentExtras;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IIntentExtras;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$1;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IIntentExtras;)V

    return-void
.end method

.method private notifyMusicInfo(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 6
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_6

    .line 109
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 112
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    .line 113
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.music.musicservicecommnad.mediainfo"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    .line 115
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 116
    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p2

    const-string v4, "isPlaying"

    .line 117
    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "isStopped"

    .line 118
    invoke-virtual {v2, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    long-to-int p2, v0

    .line 123
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->c(I)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "android.media.metadata.MEDIA_ID"

    .line 124
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 125
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getSourceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 131
    :cond_3
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 132
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object v1

    const-string v4, "artist"

    .line 135
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    iget v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->mUriType:I

    invoke-interface {v1, v4}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 138
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v0, "uri"

    .line 139
    invoke-static {v1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    :cond_4
    const-string v1, "uri"

    .line 142
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 143
    invoke-static {v4, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 142
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 147
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->mFavoriteTrackUtil:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IFavoriteTrack;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->mContext:Landroid/content/Context;

    .line 148
    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->convertAudioId(Ljava/lang/String;)J

    move-result-wide v4

    invoke-interface {v0, v1, v4, v5, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IFavoriteTrack;->isFavorite(Landroid/content/Context;JZ)Z

    move-result p2

    const-string v0, "isfavorite"

    .line 149
    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 151
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->mIntentExtras:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IIntentExtras;

    if-eqz p2, :cond_5

    .line 152
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->mIntentExtras:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IIntentExtras;

    invoke-interface {p2, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IIntentExtras;->fillUpIntentExtras(Landroid/content/Intent;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 154
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public final onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "com.sec.android.app.music.musicservicecommand.checkplaystatus"

    .line 103
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->mCurrentMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->mCurrentState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->notifyMusicInfo(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    :cond_0
    return-void
.end method

.method public final onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    .line 75
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->mCurrentMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 76
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->mCurrentMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->mCurrentState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->notifyMusicInfo(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method public final onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    .line 81
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    .line 82
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->mCurrentState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .line 84
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->mIsSupposeTobePlaying:Z

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSamePlaybackState(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->mIsSupposeTobePlaying:Z

    .line 89
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->mCurrentMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->mCurrentState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->notifyMusicInfo(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method public final onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
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

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p1, "extra.uri_type"

    .line 98
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyMusicInfoUpdater$IMPL;->mUriType:I

    return-void
.end method
