.class Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender$IMPL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IMPL"
.end annotation


# static fields
.field private static final GOOGLE_LEGACY_META_CHANGED:Ljava/lang/String; = "com.android.music.metachanged"

.field private static final GOOGLE_LEGACY_PLAYSTATE_CHANGED:Ljava/lang/String; = "com.android.music.playstatechanged"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private mIsSupposeTobePlaying:Ljava/lang/Boolean;

.field private final mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

.field private mUriType:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender$IMPL;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender$IMPL;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    return-void
.end method


# virtual methods
.method public final onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 14

    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender$IMPL;->mCurrentMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    const-string v0, "android.media.metadata.MEDIA_ID"

    .line 79
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbum()Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v4

    .line 85
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueSize()J

    move-result-wide v6

    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueuePosition()J

    move-result-wide v8

    .line 87
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getPlayDirection()J

    move-result-wide v10

    .line 89
    new-instance p1, Landroid/content/Intent;

    const-string v12, "com.android.music.metachanged"

    invoke-direct {p1, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    iget-object v12, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender$IMPL;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    iget v13, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender$IMPL;->mUriType:I

    invoke-interface {v12, v13}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v12

    .line 92
    sget-object v13, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v12}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "uri"

    .line 93
    invoke-static {v12, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {p1, v13, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const-string v12, "id"

    .line 96
    invoke-virtual {p1, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "track"

    .line 97
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "artist"

    .line 98
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "album"

    .line 99
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "albumId"

    .line 100
    invoke-virtual {p1, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "playing"

    .line 101
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender$IMPL;->mIsSupposeTobePlaying:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender$IMPL;->mIsSupposeTobePlaying:Ljava/lang/Boolean;

    .line 102
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 101
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "mediaCount"

    .line 103
    invoke-virtual {p1, v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "listPosition"

    const-wide/16 v1, 0x1

    add-long/2addr v8, v1

    .line 106
    invoke-virtual {p1, v0, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "vi_direction"

    .line 107
    invoke-virtual {p1, v0, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender$IMPL;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 110
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender$IMPL;->mIsSupposeTobePlaying:Ljava/lang/Boolean;

    return-void
.end method

.method public final onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 7

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender$IMPL;->mIsSupposeTobePlaying:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender$IMPL;->mIsSupposeTobePlaying:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSamePlaybackState(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender$IMPL;->mIsSupposeTobePlaying:Ljava/lang/Boolean;

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender$IMPL;->mCurrentMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    move-object v2, v0

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender$IMPL;->mCurrentMeta:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    const-string v1, "android.media.metadata.MEDIA_ID"

    .line 129
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender$IMPL;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender$IMPL;->mUriType:I

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedUri(I)Landroid/net/Uri;

    move-result-object v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v6

    .line 134
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.music.playstatechanged"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "uri"

    .line 139
    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_2
    const-string v1, "id"

    .line 141
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "playing"

    .line 142
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender$IMPL;->mIsSupposeTobePlaying:Ljava/lang/Boolean;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "trackLength"

    .line 143
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getDuration()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v0, "position"

    .line 144
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPosition()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string p1, "artist"

    .line 145
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender$IMPL;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

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

    .line 155
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/legacy/LegacyGoogleIntentSender$IMPL;->mUriType:I

    return-void
.end method
