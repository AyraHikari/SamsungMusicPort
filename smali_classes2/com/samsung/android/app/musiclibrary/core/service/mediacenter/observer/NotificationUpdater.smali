.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# static fields
.field private static final DEBUG_PERFORMANCE:Z = false

.field private static final DEFAULT_TINT_URI:Landroid/net/Uri;

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaCenter"

.field private static final SUB_TAG:Ljava/lang/String; = "Notification: "

.field private static final TAG:Ljava/lang/String; = "SV-MediaCenter"


# instance fields
.field private final mArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;

.field private final mContext:Landroid/content/Context;

.field private mLastUpdatedIsPlaying:Z

.field private mLastUpdatedIsRemote:Z

.field private final mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

.field private final mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private mOnCoverStateChangeListener:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;

.field private mQueueSize:I

.field private mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

.field private final mRemoteViewBuilderFactory:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

.field private final mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

.field private mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    sget-object v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->b:Landroid/net/Uri;

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->DEFAULT_TINT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mQueueSize:I

    .line 89
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    .line 91
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 92
    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;

    .line 93
    invoke-interface {p4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;->getRemoteViewAbsFactory()Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;

    move-result-object p1

    const/4 p2, 0x2

    .line 94
    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;->getFactory(I)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilderFactory:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

    .line 95
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, p5, p4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper$INotificationUpdaterDelegate;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;)Z
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->isRebuildUpdateNotification()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;)Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildLayoutForSViewCover(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildBrandName(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;)V

    return-void
.end method

.method private buildAlbumViewVisibility(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)V
    .locals 0

    .line 356
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->needToShowAlbum(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 357
    :goto_0
    invoke-interface {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->setAlbumViewVisibility(I)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    return-void
.end method

.method private buildArtwork(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;

    invoke-static {v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter$Util;->convert(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->setArtwork(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->setArtworkBackground(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private buildBrandName(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;)V
    .locals 0

    .line 350
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->setBrandName()Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    return-void
.end method

.method private buildConnectivityStatus(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;II)V
    .locals 0

    .line 341
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->isRemotePlayer(II)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsRemote:Z

    .line 342
    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsRemote:Z

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->setIsRemotePlayer(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    return-void
.end method

.method private buildLayoutForSViewCover(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;Z)V
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildAlbumViewVisibility(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)V

    return-void
.end method

.method private buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 289
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsPlaying:Z

    .line 290
    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->setIsRemotePlayer(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    goto :goto_0

    .line 292
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsPlaying:Z

    .line 293
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v0

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getSoundPath()I

    move-result p2

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->isRemotePlayer(II)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsRemote:Z

    .line 294
    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsRemote:Z

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->setIsRemotePlayer(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    .line 296
    :goto_0
    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsPlaying:Z

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->setPlayStatus(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    return-void
.end method

.method private buildTextMarquee(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)V
    .locals 0

    .line 346
    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    return-void
.end method

.method private buildTintBackground(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 2

    if-nez p3, :cond_0

    .line 309
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    move-result-object p2

    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->DEFAULT_TINT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getColor(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    move-result-object p2

    goto :goto_0

    .line 311
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getInstance()Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache;->getColor(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;

    move-result-object p2

    .line 313
    :goto_0
    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->setTintColor(Lcom/samsung/android/app/musiclibrary/core/martworkcache/TintColorCache$TintInfo;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    return-void
.end method

.method private ensureViewCoverManager(Landroid/content/Context;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    if-eqz v0, :cond_0

    return-void

    .line 102
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->isSupportCoverSView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mOnCoverStateChangeListener:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;

    .line 116
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    .line 117
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mOnCoverStateChangeListener:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->addOnCoverStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    :goto_0
    return-void
.end method

.method private getAlbumUri(Landroid/net/Uri;J)Landroid/net/Uri;
    .locals 0

    if-nez p1, :cond_0

    .line 137
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->b:Landroid/net/Uri;

    return-object p1

    .line 139
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private getAlbumUri(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Landroid/net/Uri;
    .locals 2

    .line 130
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;->getMatchedArtworkUri(I)Landroid/net/Uri;

    move-result-object p1

    .line 131
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v0

    .line 132
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->getAlbumUri(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private isRebuildUpdateNotification()Z
    .locals 4

    .line 394
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->isOverMaxUpdatedCount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 396
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    .line 397
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->getAlbumUri(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->rebuildAll(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/net/Uri;)V

    .line 398
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    .line 399
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->obtainNotification(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)Landroid/app/Notification;

    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->setUpNotification(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;)V

    .line 401
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->updateNotification()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isRemotePlayer(II)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    .line 366
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    .line 368
    invoke-static {p1}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 369
    invoke-static {}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopHdmi()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isSameRemotePlayer(II)Z
    .locals 1

    .line 374
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsRemote:Z

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->isRemotePlayer(II)Z

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private needToShowAlbum(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;Z)Z
    .locals 2
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 379
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->getCoverType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string p1, "SMUSIC-SV-MediaCenter"

    const-string p2, "needToShowAlbum() but this is not the sview cover."

    .line 381
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 385
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->isAttached()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "SMUSIC-SV-MediaCenter"

    const-string p2, "needToShowAlbum() but it is not attached."

    .line 387
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    return p2
.end method

.method private rebuildAll(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/net/Uri;)V
    .locals 4

    const-string v0, "android.media.metadata.ALBUM_ART"

    .line 255
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 256
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isPrivate()Z

    move-result v1

    .line 263
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilderFactory:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;->create(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    .line 264
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    move-result-object p1

    .line 265
    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setIsPrivate(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 273
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildArtwork(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Landroid/graphics/Bitmap;)V

    .line 274
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 275
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isDeviceInteractive(Landroid/content/Context;)Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildTextMarquee(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)V

    .line 276
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildBrandName(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;)V

    .line 277
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->ensureViewCoverManager(Landroid/content/Context;)V

    .line 278
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    if-eqz p1, :cond_0

    .line 279
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->isCoverOpened()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildLayoutForSViewCover(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;Z)V

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildTintBackground(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private setArtworkBackground(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Landroid/graphics/Bitmap;)V
    .locals 12

    if-nez p2, :cond_0

    .line 318
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;->setBlurBackground(Landroid/graphics/Bitmap;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    return-void

    .line 321
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 322
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 323
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->bitmap_size_middle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-eqz p2, :cond_1

    .line 324
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 326
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 327
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 329
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr v3, p2

    int-to-float p2, v1

    mul-float v3, v3, p2

    sget p2, Lcom/samsung/android/app/musiclibrary/R$dimen;->bitmap_size_small:I

    .line 330
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    div-float v7, v3, p2

    .line 331
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p2

    .line 332
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mArtworkConverter:Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;

    .line 333
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getAlbumId()J

    move-result-wide v8

    .line 334
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v10

    move-object v5, p1

    .line 333
    invoke-virtual/range {v4 .. v11}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->updateBlurBackground(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/core/utils/graphics/BitmapConverter;FJJ)V

    :cond_1
    return-void
.end method

.method private updateMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/net/Uri;Z)V
    .locals 3

    .line 157
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->rebuildAll(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/net/Uri;)V

    .line 158
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsPlaying:Z

    invoke-virtual {p3, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->obtainNotification(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)Landroid/app/Notification;

    .line 159
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-virtual {p3, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->setUpNotification(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;)V

    if-eqz p4, :cond_0

    .line 162
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->registerNotification()V

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueSize()J

    move-result-wide p3

    long-to-int p1, p3

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mQueueSize:I

    .line 165
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mQueueSize:I

    if-gtz p1, :cond_1

    .line 166
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->unregisterNotification()V

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->isNotificationVisible()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 169
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->registerNotification()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public forceToUpdate(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;JLandroid/net/Uri;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->isNotificationVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->registerNotification()V

    goto :goto_0

    .line 151
    :cond_0
    invoke-direct {p0, p5, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->getAlbumUri(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p3

    const/4 p4, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->updateMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/net/Uri;Z)V

    :goto_0
    return-void
.end method

.method public final onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "com.samsung.android.app.music.core.state.ARTWORK_UPDATED"

    .line 221
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "artwork"

    .line 222
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 223
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildArtwork(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Landroid/graphics/Bitmap;)V

    .line 224
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 225
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->getAlbumUri(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Landroid/net/Uri;

    move-result-object v0

    .line 224
    invoke-direct {p0, p2, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildTintBackground(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 226
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->updateNotification()V

    goto/16 :goto_0

    :cond_1
    const-string v0, "com.samsung.android.app.music.core.state.ACTION_HDMI_PLUG"

    .line 227
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "soundPathType"

    .line 228
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 229
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p2

    .line 230
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->isRebuildUpdateNotification()Z

    move-result v0

    if-nez v0, :cond_6

    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result p2

    invoke-direct {p0, v0, p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildConnectivityStatus(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;II)V

    .line 232
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->updateNotification()V

    goto :goto_0

    :cond_2
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 234
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 235
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->isRebuildUpdateNotification()Z

    move-result p1

    if-nez p1, :cond_6

    .line 236
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildTextMarquee(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)V

    .line 237
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->updateNotification()V

    goto :goto_0

    :cond_3
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 239
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 240
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->isRebuildUpdateNotification()Z

    move-result p1

    if-nez p1, :cond_6

    .line 241
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildTextMarquee(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)V

    .line 242
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->updateNotification()V

    goto :goto_0

    :cond_4
    const-string p2, "android.intent.action.LOCALE_CHANGED"

    .line 244
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 245
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->isRebuildUpdateNotification()Z

    move-result p1

    if-nez p1, :cond_6

    .line 246
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildBrandName(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;)V

    .line 247
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->updateNotification()V

    goto :goto_0

    :cond_5
    const-string p2, "com.samsung.android.app.music.core.state.HIDE_NOTIFICATION"

    .line 249
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 250
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->unregisterNotification()V

    :cond_6
    :goto_0
    return-void
.end method

.method public final onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mMusicContents:Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->getAlbumUri(Lcom/samsung/android/app/musiclibrary/core/service/queue/IMusicContents;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->updateMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Landroid/net/Uri;Z)V

    return-void
.end method

.method public final onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->isNotificationVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsPlaying:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSamePlaybackState(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerType()I

    move-result v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getSoundPath()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->isSameRemotePlayer(II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->isRebuildUpdateNotification()Z

    move-result v0

    if-nez v0, :cond_3

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 185
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsPlaying:Z

    .line 186
    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->obtainNotification(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)Landroid/app/Notification;

    .line 187
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->setUpNotification(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;)V

    .line 188
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->updateNotification()V

    goto :goto_0

    .line 191
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mQueueSize:I

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    if-nez v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilderFactory:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    .line 198
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;->create(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    .line 200
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 201
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/DeviceUtils;->isDeviceInteractive(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->buildTextMarquee(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)V

    .line 202
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mLastUpdatedIsPlaying:Z

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->obtainNotification(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;Z)Landroid/app/Notification;

    .line 203
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->setUpNotification(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/INotificationRemoteViewBuilder;)V

    .line 204
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mUpdateHelper:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdateHelper;->registerNotification()V

    :cond_3
    :goto_0
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

    return-void
.end method

.method public release()V
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mOnCoverStateChangeListener:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->removeOnCoverStateChangeListener(Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager$OnCoverStateChangeListener;)V

    .line 411
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/NotificationUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->release()V

    :cond_0
    return-void
.end method
