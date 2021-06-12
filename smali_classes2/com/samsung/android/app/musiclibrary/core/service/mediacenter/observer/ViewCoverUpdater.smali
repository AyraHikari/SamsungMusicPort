.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;
    }
.end annotation


# static fields
.field private static final EXTRA_COVER_VIEW_REMOTE:Ljava/lang/String; = "remote"

.field private static final EXTRA_COVER_VIEW_TYPE:Ljava/lang/String; = "type"

.field private static final EXTRA_COVER_VIEW_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final EXTRA_MUSIC_IS_PLAYING:Ljava/lang/String; = "isPlaying"

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-MediaCenter"

.field private static final SUB_TAG:Ljava/lang/String; = "ViewCoverUpdater"

.field private static final TAG:Ljava/lang/String; = "SV-MediaCenter"

.field private static final VALUE_COVER_VIEW_TYPE_MUSIC_CONTROLLER:Ljava/lang/String; = "music_controller"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLastUpdatedIsPlaying:Z

.field private mMusicRemoteController:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;

.field private final mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

.field private final mRemoteViewBuilderFactory:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

.field private final mSupportControllerService:Z

.field private mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

.field private mWasShowCover:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;Z)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mWasShowCover:Z

    .line 75
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 77
    iput-boolean p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mSupportControllerService:Z

    .line 78
    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/abstraction/IObserversAbstractionFactory;->getRemoteViewAbsFactory()Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;

    move-result-object p1

    .line 79
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory;->getFactory(I)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilderFactory:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

    return-void
.end method

.method private buildMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4

    .line 159
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getArtist()Ljava/lang/String;

    move-result-object v1

    .line 162
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilderFactory:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilderAbsFactory$IRemoteViewBuilderFactory;->create(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 163
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    invoke-interface {v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setMeta(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    .line 164
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setTextsMarqueeEnabled(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    const-string p1, "SMUSIC-SV-MediaCenter"

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " buildMetadata : Title - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Artist - "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 173
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mLastUpdatedIsPlaying:Z

    .line 174
    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mLastUpdatedIsPlaying:Z

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->setPlayStatus(Z)Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    return-void
.end method

.method private hideViewCover(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 178
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->hideViewCover(Landroid/content/Context;Z)V

    return-void
.end method

.method private hideViewCover(Landroid/content/Context;Z)V
    .locals 1

    if-nez p2, :cond_0

    .line 182
    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mWasShowCover:Z

    if-eqz p2, :cond_1

    .line 183
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->isRebuildUpdateCover()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->updateViewCover(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)V

    :cond_1
    return-void
.end method

.method private isRebuildUpdateCover()Z
    .locals 6

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->isOverMaxUpdatedCount()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    .line 232
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v1

    .line 233
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->buildMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 235
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueSize()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 236
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->isStopped(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mWasShowCover:Z

    if-eqz v2, :cond_3

    .line 239
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 240
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v1

    invoke-direct {p0, v2, v3, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->updateViewCover(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)V

    goto :goto_1

    .line 237
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->hideViewCover(Landroid/content/Context;)V

    :cond_3
    :goto_1
    return v0

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method private isStopped(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 155
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private needRemoteViewUpdate()Z
    .locals 4

    .line 215
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->createInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    .line 217
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mSupportControllerService:Z

    if-eqz v0, :cond_0

    .line 218
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mMusicRemoteController:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mMusicRemoteController:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;->bindService(Landroid/content/Context;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->getCoverType()I

    move-result v0

    const-string v1, "SV-MediaCenter"

    .line 223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CoverType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private updateViewCover(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)V
    .locals 3

    if-eqz p4, :cond_0

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p4, "SMUSIC-SV-MediaCenter"

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " currently calling! make visibility false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p4, 0x0

    :cond_0
    const-string v0, "SMUSIC-SV-MediaCenter"

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " updateViewCover : visibility - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iput-boolean p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mWasShowCover:Z

    .line 199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 200
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "type"

    const-string v2, "music_controller"

    .line 201
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "visibility"

    .line 202
    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "isPlaying"

    .line 203
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p4, :cond_1

    const-string p3, "remote"

    .line 205
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 209
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->needRemoteViewUpdate()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 210
    sget-object p2, Lcom/samsung/android/app/music/support/android/os/UserHandleCompat;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string p2, "SV-MediaCenter"

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->SUB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " onExtraChanged() action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mWasShowCover:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mWasShowCover:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mWasShowCover:Z

    if-eqz p2, :cond_2

    const-string p2, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    .line 128
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->isRebuildUpdateCover()Z

    move-result p1

    if-nez p1, :cond_2

    .line 130
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object p2

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mLastUpdatedIsPlaying:Z

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->updateViewCover(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)V

    goto :goto_0

    .line 133
    :cond_0
    sget-object p2, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 134
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->hideViewCover(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string p2, "com.samsung.android.app.music.core.state.HIDE_NOTIFICATION"

    .line 135
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 136
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->hideViewCover(Landroid/content/Context;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 5

    .line 84
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->buildMetadata(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueSize()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    .line 88
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->isStopped(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mWasShowCover:Z

    if-eqz p1, :cond_3

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 92
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mLastUpdatedIsPlaying:Z

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->updateViewCover(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)V

    goto :goto_1

    .line 89
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->hideViewCover(Landroid/content/Context;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    if-nez v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->isStopped(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->hideViewCover(Landroid/content/Context;)V

    return-void

    .line 105
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mLastUpdatedIsPlaying:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSamePlaybackState(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 109
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->isRebuildUpdateCover()Z

    move-result v0

    if-nez v0, :cond_3

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->buildPlaybackState(Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 111
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mWasShowCover:Z

    if-eqz p1, :cond_3

    .line 112
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mRemoteViewBuilder:Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/remoteview/IRemoteViewBuilder;->build()Landroid/widget/RemoteViews;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mLastUpdatedIsPlaying:Z

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mWasShowCover:Z

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->updateViewCover(Landroid/content/Context;Landroid/widget/RemoteViews;ZZ)V

    :cond_3
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

.method public release()V
    .locals 2

    .line 143
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mSupportControllerService:Z

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mMusicRemoteController:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mMusicRemoteController:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater$MusicRemoteController;->unbindService(Landroid/content/Context;)V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mViewCoverManager:Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/hardware/ViewCoverManager;->release()V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observer/ViewCoverUpdater;->hideViewCover(Landroid/content/Context;)V

    return-void
.end method
