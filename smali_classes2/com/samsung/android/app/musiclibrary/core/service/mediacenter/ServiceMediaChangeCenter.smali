.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;,
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;,
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_PERFORMANCE:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaCenter"

.field private static final SUB_TAG:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SV-MediaCenter"


# instance fields
.field private mActiveDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;

.field private mActivePlayerQueue:I

.field private final mArtworkController:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;

.field private final mCallback:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkCallback;

.field private final mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

.field private mHasPendingMeta:Z

.field private mIsReleased:Z

.field private mLastRequestArtworkUri:Landroid/net/Uri;

.field private final mMetaPublisher:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;

.field private final mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

.field private mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

.field private final mObserverMessageHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;

.field private mPendingPlayState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

.field private mPlaybackNotifier:Lcom/samsung/android/app/musiclibrary/core/service/player/IPlaybackNotifier;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mRadioDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

.field private final mServiceCallbackUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;

.field private final mThreadObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->SUB_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mThreadObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;

    .line 72
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    .line 74
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mRadioDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mActiveDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mHasPendingMeta:Z

    .line 91
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mIsReleased:Z

    .line 100
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkCallback;

    .line 254
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mMetaPublisher:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;

    .line 140
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 141
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->activate()V

    .line 142
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mRadioDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->activate()V

    .line 144
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;

    move-result-object p3

    .line 145
    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/SingleThreadScheduledExecutorFactory;->getLooper()Landroid/os/Looper;

    move-result-object p3

    .line 146
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mThreadObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;

    invoke-direct {v0, p3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;-><init>(Landroid/os/Looper;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mObserverMessageHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;

    .line 147
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mServiceCallbackUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;

    .line 148
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mMetaPublisher:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;

    invoke-direct {p2, p1, p4, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;-><init>(Landroid/content/Context;ILcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController$MetaPublisher;)V

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mArtworkController:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mActiveDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;I)Landroid/net/Uri;
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->getMatchedArtworkUri(I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mObserverMessageHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 51
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->SUB_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->notifyMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;Landroid/net/Uri;)Z
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->isLastRequestArtworkUri(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkCallback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mCallback:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkCallback;

    return-object p0
.end method

.method private changeActiveMediaDataCenter(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 412
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mRadioDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mActiveDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;

    goto :goto_0

    .line 414
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mActiveDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;

    .line 416
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mRadioDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyPlaybackState;->getState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->setPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    :goto_0
    return-void
.end method

.method private static getAlbumUri(Landroid/net/Uri;J)Landroid/net/Uri;
    .locals 0

    .line 329
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private getMatchedArtworkUri(I)Landroid/net/Uri;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedArtworkUri(I)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private isLastRequestArtworkUri(Landroid/net/Uri;)Z
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mLastRequestArtworkUri:Landroid/net/Uri;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private declared-synchronized notifyMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 236
    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mHasPendingMeta:Z

    .line 237
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mRadioDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    .line 238
    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueuePosition()J

    move-result-wide v1

    long-to-int v1, v1

    .line 239
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;->setMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 240
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v2, "extra.list_position"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->putInt(Ljava/lang/String;I)V

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mObserverMessageHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 242
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mPlaybackNotifier:Lcom/samsung/android/app/musiclibrary/core/service/player/IPlaybackNotifier;

    if-nez p1, :cond_1

    .line 243
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mPendingPlayState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    if-eqz p1, :cond_2

    .line 244
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mPendingPlayState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->notifyPlaybackStateChangedInternal(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    const/4 p1, 0x0

    .line 245
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mPendingPlayState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    goto :goto_1

    .line 250
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mPlaybackNotifier:Lcom/samsung/android/app/musiclibrary/core/service/player/IPlaybackNotifier;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IPlaybackNotifier;->notifyPlaybackState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 235
    monitor-exit p0

    throw p1
.end method

.method private notifyPlaybackStateChangedInternal(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3

    const-string v0, "SMUSIC-SV-MediaCenter"

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "notifyPlaybackStateChangedInternal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mObserverMessageHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 353
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mServiceCallbackUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    return-void
.end method

.method private setActivePlayerQueue(I)V
    .locals 0

    .line 406
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mActivePlayerQueue:I

    .line 407
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->changeActiveMediaDataCenter(I)V

    return-void
.end method


# virtual methods
.method public forceToUpdateNotification(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mObserverMessageHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$3;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$3;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getLastPlaybackState(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 0

    if-nez p1, :cond_0

    .line 422
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    return-object p1

    .line 424
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mRadioDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    return-object p1
.end method

.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mActiveDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mActiveDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    return-object v0
.end method

.method public getMusicQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mActiveDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;->getMusicQueue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mActiveDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getServiceCallbackUpdater()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mServiceCallbackUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;

    return-object v0
.end method

.method public getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasAsyncRequest()Z
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mArtworkController:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->hasAsyncRequest()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized notifyExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 357
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 358
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->setActivePlayerQueue(I)V

    :cond_0
    const-string v0, "com.samsung.android.app.music.core.state.queue.MODE_CHANGED"

    .line 361
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-string v1, "com.samsung.android.app.music.core.state.queue.CURRENT_QUEUE_TYPE"

    .line 364
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x1

    if-ne v1, p2, :cond_1

    .line 366
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mRadioDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->setMusicExtras(Landroid/os/Bundle;)V

    goto :goto_1

    .line 368
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->setMusicExtras(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_2
    if-nez p2, :cond_3

    const/4 p2, 0x0

    move-object v0, p2

    goto :goto_0

    .line 371
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 372
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mActiveDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;

    invoke-interface {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;->setMusicExtras(Landroid/os/Bundle;)V

    :goto_1
    const-string p2, "SMUSIC-SV-MediaCenter"

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "notifyExtrasChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mIsReleased:Z

    if-eqz p2, :cond_4

    const-string p1, "SMUSIC-SV-MediaCenter"

    .line 376
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Ignore this request, already released."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    monitor-exit p0

    return-void

    .line 379
    :cond_4
    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mObserverMessageHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 380
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mServiceCallbackUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 356
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized notifyMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/player/IPlaybackNotifier;)V
    .locals 4
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/service/player/IPlaybackNotifier;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "SMUSIC-SV-MediaCenter"

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "notifyMetadataChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mIsReleased:Z

    if-eqz v0, :cond_0

    const-string p1, "SMUSIC-SV-MediaCenter"

    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Ignore this request, already released."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 210
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mServiceCallbackUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 211
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueType()I

    move-result v0

    .line 212
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mActivePlayerQueue:I

    if-eq v0, v1, :cond_1

    const-string p1, "SV-MediaCenter"

    const-string p2, "notifyMetadataChanged (queue type of meta != active queue type)"

    .line 213
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    .line 220
    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mMusicMetadata:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    .line 221
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    .line 222
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v2

    long-to-int p1, v0

    .line 224
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->getMatchedArtworkUri(I)Landroid/net/Uri;

    move-result-object p1

    .line 225
    invoke-static {p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->getAlbumUri(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mLastRequestArtworkUri:Landroid/net/Uri;

    .line 226
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mPlaybackNotifier:Lcom/samsung/android/app/musiclibrary/core/service/player/IPlaybackNotifier;

    const/4 p2, 0x1

    .line 227
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mHasPendingMeta:Z

    .line 228
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mArtworkController:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;

    invoke-static {p2, p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$ArtworkController;Landroid/net/Uri;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 204
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized notifyPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "SMUSIC-SV-MediaCenter"

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "notifyPlaybackStateChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mIsReleased:Z

    if-eqz v0, :cond_0

    const-string p1, "SMUSIC-SV-MediaCenter"

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Ignore this request, already released."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    monitor-exit p0

    return-void

    .line 342
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mActiveDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/IMediaDataCenter;->setPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 343
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mHasPendingMeta:Z

    if-eqz v0, :cond_1

    .line 344
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mPendingPlayState:Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    goto :goto_0

    .line 346
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->notifyPlaybackStateChangedInternal(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 336
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized notifyQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
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

    monitor-enter p0

    :try_start_0
    const-string v0, "SMUSIC-SV-MediaCenter"

    .line 384
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "notifyQueueChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mIsReleased:Z

    if-eqz v0, :cond_0

    const-string p1, "SMUSIC-SV-MediaCenter"

    .line 386
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Ignore this request, already released."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 387
    monitor-exit p0

    return-void

    .line 389
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mServiceCallbackUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    const-string v0, "com.samsung.android.app.music.core.state.queue.CURRENT_QUEUE_TYPE"

    .line 392
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 394
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mRadioDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->setMusicQueue(Ljava/util/List;Landroid/os/Bundle;)V

    goto :goto_0

    .line 396
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->setMusicQueue(Ljava/util/List;Landroid/os/Bundle;)V

    .line 398
    :goto_0
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mActivePlayerQueue:I

    if-eq v0, v1, :cond_2

    const-string p1, "SV-MediaCenter"

    const-string p2, "notifyQueueChanged (queue type of meta != active queue type)"

    .line 399
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 400
    monitor-exit p0

    return-void

    .line 402
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mObserverMessageHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 403
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 383
    monitor-exit p0

    throw p1
.end method

.method public registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mThreadObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    return-void
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "SV-MediaCenter"

    const-string v1, "release()"

    .line 193
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mServiceCallbackUpdater:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ServiceCallbackUpdater;->release()V

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->deactivate()V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mRadioDataCenter:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->deactivate()V

    const/4 v0, 0x1

    .line 197
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mIsReleased:Z

    .line 198
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mObserverMessageHandler:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObserverMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mThreadObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 192
    monitor-exit p0

    throw v0
.end method

.method public unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter;->mThreadObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/ServiceMediaChangeCenter$MediaChangeObservableImpl;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    return-void
.end method
