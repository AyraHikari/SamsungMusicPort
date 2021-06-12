.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaCenter"

.field private static final REMOTE_TAG:I = 0x6a

.field private static final SUB_TAG:Ljava/lang/String; = "MediaSession: "

.field private static final SUPPORTED_ACTIONS:J = 0x1b7fL

.field private static final TAG:Ljava/lang/String; = "SV-MediaCenter"

.field private static final UNKOWN_DURATION:J = -0x1L


# instance fields
.field private final mArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;

.field private final mContext:Landroid/content/Context;

.field private mHasPendingMediaMetadata:Z

.field private final mLaunchIntentMusic:Landroid/app/PendingIntent;

.field private final mMediaButtonComponentName:Landroid/content/ComponentName;

.field private mMediaButtonRegistered:Z

.field private final mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private mMediaMetadata:Landroid/media/MediaMetadata;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMediaSession:Landroid/media/session/MediaSession;

.field private final mMediaSessionData:Landroid/os/Bundle;

.field private final mPlaybackStateBuilder:Landroid/media/session/PlaybackState$Builder;

.field private mQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionCallBack:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Ljava/lang/Class;Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;",
            "Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;",
            "Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;",
            ")V"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSessionData:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mHasPendingMediaMetadata:Z

    .line 95
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaButtonRegistered:Z

    .line 101
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 103
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p2, v1, p5, p7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mSessionCallBack:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    .line 105
    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;

    .line 107
    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;->getLaunchIntentSet()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;

    move-result-object p2

    const/16 p3, 0x6a

    const/4 p5, 0x1

    .line 109
    invoke-interface {p2, p5, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/ILaunchIntentSet;->getLaunchIntentMusic(ZI)Landroid/content/Intent;

    move-result-object p2

    .line 108
    invoke-static {p1, p3, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mLaunchIntentMusic:Landroid/app/PendingIntent;

    .line 110
    new-instance p2, Landroid/content/ComponentName;

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaButtonComponentName:Landroid/content/ComponentName;

    .line 113
    new-instance p1, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {p1}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mPlaybackStateBuilder:Landroid/media/session/PlaybackState$Builder;

    .line 114
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mPlaybackStateBuilder:Landroid/media/session/PlaybackState$Builder;

    const-wide/16 p2, 0x1b7f

    invoke-virtual {p1, p2, p3}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    return-void
.end method

.method private addArtworkToMetadata(Landroid/media/MediaMetadata;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata;
    .locals 1
    .param p1    # Landroid/media/MediaMetadata;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 278
    :cond_0
    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0, p1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    const-string p1, "android.media.metadata.ALBUM_ART"

    .line 279
    invoke-virtual {v0, p1, p2}, Landroid/media/MediaMetadata$Builder;->putBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata$Builder;

    .line 280
    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p1

    return-object p1
.end method

.method private ensureSession()V
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSession:Landroid/media/session/MediaSession;

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->getSessionInstance(Landroid/content/Context;)Landroid/media/session/MediaSession;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSession:Landroid/media/session/MediaSession;

    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setUpMediaSession(Landroid/media/session/MediaSession;)V

    :cond_0
    return-void
.end method

.method private notifyNextSongChanged(Z)V
    .locals 3

    .line 310
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "has_next_song"

    .line 311
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.sec.android.app.music.NEXT_SONG_CHANGED"

    .line 312
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 315
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSessionData:Landroid/os/Bundle;

    const-string v1, "com.sec.android.app.music.EXTRA_HAS_NEXT_SONG"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 316
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSessionData:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setSessionExtra(Landroid/os/Bundle;)V

    const-string v0, "SV-MediaCenter"

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSession:  notifyNextSongChanged  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaSession;->sendSessionEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private setMediaButtonReceiver()V
    .locals 3

    .line 364
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 365
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 368
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaButtonComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 369
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 370
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaSession;->setMediaButtonReceiver(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private setMeta(Landroid/media/MediaMetadata;)V
    .locals 4
    .param p1    # Landroid/media/MediaMetadata;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 325
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaMetadata:Landroid/media/MediaMetadata;

    if-eqz p1, :cond_0

    const-string v0, "android.media.metadata.DURATION"

    .line 326
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string p1, "SMUSIC-SV-MediaCenter"

    const-string v0, "MediaSession: MediaSession setMeta but duration is 0, waiting play state"

    .line 329
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 330
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mHasPendingMediaMetadata:Z

    goto :goto_0

    :cond_0
    const-string v0, "SV-MediaCenter"

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSession: MediaSession setMeta  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setMetadata(Landroid/media/MediaMetadata;)V

    :goto_0
    return-void
.end method

.method private setPendingMediaMetadata(J)V
    .locals 3

    const-string v0, "SV-MediaCenter"

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSession: MediaSession setMeta duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaMetadata:Landroid/media/MediaMetadata;

    const-string v1, "android.media.metadata.DURATION"

    .line 340
    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->changeAttribute(Landroid/media/MediaMetadata;Ljava/lang/String;J)Landroid/media/MediaMetadata;

    move-result-object p1

    .line 341
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setMeta(Landroid/media/MediaMetadata;)V

    const/4 p1, 0x0

    .line 342
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mHasPendingMediaMetadata:Z

    return-void
.end method

.method private setPlaybackState(Landroid/media/session/PlaybackState$Builder;)V
    .locals 3

    .line 346
    invoke-virtual {p1}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object p1

    const-string v0, "SV-MediaCenter"

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSession: MediaSession setPlaybackState  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    return-void
.end method

.method private setPlaybackStateStop()V
    .locals 5

    .line 381
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mPlaybackStateBuilder:Landroid/media/session/PlaybackState$Builder;

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 382
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    .line 384
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mPlaybackStateBuilder:Landroid/media/session/PlaybackState$Builder;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setPlaybackState(Landroid/media/session/PlaybackState$Builder;)V

    return-void
.end method

.method private setQueue(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "SV-MediaCenter"

    const-string v1, "MediaSession: MediaSession setQueue"

    .line 357
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->setQueue(Ljava/util/List;)V

    return-void
.end method

.method private setSessionExtra(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "SV-MediaCenter"

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSession: MediaSession setSessionExtra  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setExtras(Landroid/os/Bundle;)V

    return-void
.end method

.method private setUpMediaSession(Landroid/media/session/MediaSession;)V
    .locals 2

    const-string v0, "SV-MediaCenter"

    const-string v1, "MediaSession:  setUpMediaSession()"

    .line 262
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mSessionCallBack:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setCallback(Landroid/media/session/MediaSession$Callback;)V

    .line 265
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mSessionCallBack:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->setMediaSession(Landroid/media/session/MediaSession;)V

    const/4 v0, 0x3

    .line 267
    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setFlags(I)V

    .line 269
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mLaunchIntentMusic:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setSessionActivity(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private updateMediaSessionQueueMode(Landroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    .line 221
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const-string v0, "extra.repeat_state"

    .line 225
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "extra.shuffle_state"

    .line 226
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "SV-MediaCenter"

    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaSession:  updateMediaSessionQueueMode() repeat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " shuffle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "repeat"

    .line 231
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "shuffle"

    .line 232
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "com.samsung.android.bt.AVRCP"

    .line 233
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 236
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSessionData:Landroid/os/Bundle;

    const-string v2, "com.sec.android.app.music.EXTRA_REPEAT"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSessionData:Landroid/os/Bundle;

    const-string v1, "com.sec.android.app.music.EXTRA_SHUFFLE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 238
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSessionData:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setSessionExtra(Landroid/os/Bundle;)V

    return-void
.end method

.method private updateMediaSessionState(JIJF)V
    .locals 3

    const-string v0, "SV-MediaCenter"

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSession:  updateMediaSessionState() queueItemId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " playSpeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setMediaButtonReceiver()V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mPlaybackStateBuilder:Landroid/media/session/PlaybackState$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/PlaybackState$Builder;->setActiveQueueItemId(J)Landroid/media/session/PlaybackState$Builder;

    .line 297
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mPlaybackStateBuilder:Landroid/media/session/PlaybackState$Builder;

    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    return-void
.end method

.method private updatePlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 8

    .line 243
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const/4 v4, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    const/4 v4, 0x2

    .line 244
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 245
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setPlaybackStateStop()V

    goto :goto_1

    .line 247
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getActiveQueueItemId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPosition()J

    move-result-wide v5

    .line 248
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlaySpeed()F

    move-result v7

    move-object v1, p0

    .line 247
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->updateMediaSessionState(JIJF)V

    .line 249
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mPlaybackStateBuilder:Landroid/media/session/PlaybackState$Builder;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setPlaybackState(Landroid/media/session/PlaybackState$Builder;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 176
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->ensureSession()V

    const-string v0, "com.samsung.android.app.music.core.state.ARTWORK_UPDATED"

    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "artwork"

    .line 178
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 179
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaMetadata:Landroid/media/MediaMetadata;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;

    .line 180
    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter$Util;->convert(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 179
    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->addArtworkToMetadata(Landroid/media/MediaMetadata;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata;

    move-result-object p1

    .line 181
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setMeta(Landroid/media/MediaMetadata;)V

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.android.app.music.core.state.queue.MODE_CHANGED"

    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->updateMediaSessionQueueMode(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const-string v0, "com.sec.android.app.music.NEXT_SONG_CHANGED"

    .line 184
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "has_next_song"

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->notifyNextSongChanged(Z)V

    goto :goto_0

    :cond_2
    const-string p2, "com.samsung.android.app.music.core.state.HIDE_NOTIFICATION"

    .line 186
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 187
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setPlaybackStateStop()V

    goto :goto_0

    :cond_3
    const-string p2, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 188
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 189
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMusicQueue()Ljava/util/List;

    move-result-object p1

    .line 190
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mQueue:Ljava/util/List;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 191
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mQueue:Ljava/util/List;

    .line 192
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setQueue(Ljava/util/List;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onMediaSessionCommand(Landroid/os/Bundle;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mSessionCallBack:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->onCommand(Landroid/os/Bundle;)V

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3

    .line 128
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->ensureSession()V

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mHasPendingMediaMetadata:Z

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mSessionCallBack:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->setMusicMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    .line 133
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 135
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setMeta(Landroid/media/MediaMetadata;)V

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    const-string v0, "android.media.metadata.ALBUM_ART"

    .line 138
    invoke-virtual {p1, v0}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;

    .line 140
    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter$Util;->convert(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->addArtworkToMetadata(Landroid/media/MediaMetadata;Landroid/graphics/Bitmap;)Landroid/media/MediaMetadata;

    move-result-object p1

    .line 141
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setMeta(Landroid/media/MediaMetadata;)V

    .line 143
    :goto_0
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaButtonRegistered:Z

    if-nez p1, :cond_1

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setMediaButtonReceiver()V

    .line 145
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSession:Landroid/media/session/MediaSession;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSession;->setActive(Z)V

    .line 146
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaButtonRegistered:Z

    :cond_1
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 4

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->ensureSession()V

    .line 153
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mHasPendingMediaMetadata:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    .line 154
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 156
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setPendingMediaMetadata(J)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 158
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setPendingMediaMetadata(J)V

    .line 161
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->updatePlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mSessionCallBack:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->setPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

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

    .line 168
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->ensureSession()V

    .line 169
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mQueue:Ljava/util/List;

    .line 170
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setQueue(Ljava/util/List;)V

    .line 171
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->updateMediaSessionQueueMode(Landroid/os/Bundle;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 199
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->ensureSession()V

    .line 200
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->setPlaybackStateStop()V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mSessionCallBack:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->release()V

    .line 202
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/browser/MediaSessionUtils;->releasePlayer()V

    return-void
.end method

.method public final setLyricLoader(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mSessionCallBack:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->setLyricLoader(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/ILyricLoader;)V

    return-void
.end method

.method public setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setPlaybackToLocal(Landroid/media/AudioAttributes;)V

    return-void
.end method

.method public setPlaybackToRemote(Landroid/media/VolumeProvider;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mMediaSession:Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setPlaybackToRemote(Landroid/media/VolumeProvider;)V

    return-void
.end method

.method public setPlayerLoggers(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;",
            ">;)V"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionUpdater;->mSessionCallBack:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/mediasession/MediaSessionCallback;->setPlayerLoggers(Landroid/util/SparseArray;)V

    return-void
.end method
