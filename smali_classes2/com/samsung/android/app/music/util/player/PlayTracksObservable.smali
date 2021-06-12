.class public Lcom/samsung/android/app/music/util/player/PlayTracksObservable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:[J

.field private final c:Z

.field private final d:I

.field private e:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "-",
            "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/os/Handler;

.field private i:Z

.field private final j:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

.field private k:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;[JLjava/util/List;IZ)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [J
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[J",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;IZ)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->h:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->i:Z

    .line 78
    new-instance v1, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$1;-><init>(Lcom/samsung/android/app/music/util/player/PlayTracksObservable;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->j:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    .line 281
    new-instance v1, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$5;-><init>(Lcom/samsung/android/app/music/util/player/PlayTracksObservable;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->k:Ljava/lang/Runnable;

    .line 111
    iput-object p2, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->b:[J

    .line 112
    iput-object p3, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->g:Ljava/util/List;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->a:Landroid/content/Context;

    .line 114
    iput-boolean p5, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->c:Z

    if-gtz p4, :cond_0

    const/4 p4, 0x0

    .line 119
    :cond_0
    iput p4, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->d:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;[JLjava/util/List;IZLcom/samsung/android/app/music/util/player/PlayTracksObservable$1;)V
    .locals 0

    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;-><init>(Landroid/content/Context;[JLjava/util/List;IZ)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/util/player/PlayTracksObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->f:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IZ)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;IZ)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
            ">;"
        }
    .end annotation

    .line 124
    new-instance v0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$3;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$2;

    invoke-direct {p2, p0, p3, p4}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$2;-><init>(Landroid/content/Context;IZ)V

    .line 139
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
            ">;"
        }
    .end annotation

    .line 170
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/FixedPlaylistIds;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->b(Landroid/content/Context;Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a()V
    .locals 15

    monitor-enter p0

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->e:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMetadataAndFireEventIfNeeded. unsubscribed or token null. subscriber - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->e:Lio/reactivex/ObservableEmitter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", token - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->f:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 226
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    .line 227
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v3

    if-nez v2, :cond_1

    .line 229
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkMetadataAndFireEventIfNeeded. metadata is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    monitor-exit p0

    return-void

    .line 233
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    .line 234
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v4, 0x1

    .line 236
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->position()J

    move-result-wide v5

    .line 237
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v7

    const/4 v8, -0x1

    .line 239
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getMessage()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_4

    const-string v8, "extra_result_code"

    .line 241
    invoke-virtual {v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 244
    :cond_4
    iget-object v9, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->b:[J

    iget v10, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->d:I

    aget-wide v10, v9, v10

    .line 246
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->d()Ljava/lang/String;

    move-result-object v9

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkMetadataAndFireEventIfNeeded. audioId - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", meta[track - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "]. isPlaying - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSupposeToPlaying - "

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", pos - "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", resultCode - "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", should wait - "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->b()Z

    move-result v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", candidate - "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", state - "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {v9, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x138a

    if-eq v8, v0, :cond_8

    .line 260
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-nez v0, :cond_7

    if-eqz v4, :cond_7

    .line 261
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v7}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 266
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->c()V

    goto :goto_3

    .line 262
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->e:Lio/reactivex/ObservableEmitter;

    new-instance v7, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;

    iget-object v4, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->g:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-interface {v0, v7}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 264
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->e:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto :goto_3

    .line 269
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 271
    :goto_3
    monitor-exit p0

    return-void

    .line 256
    :cond_8
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->e:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lcom/samsung/android/app/music/util/player/CanNotPlaySimultaneousException;

    invoke-direct {v1}, Lcom/samsung/android/app/music/util/player/CanNotPlaySimultaneousException;-><init>()V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 257
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 218
    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/util/player/PlayTracksObservable;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->b(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private a(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/util/player/PlayTracksObservable;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->i:Z

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/util/player/PlayTracksObservable;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->i:Z

    return p1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Z)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
            ">;"
        }
    .end annotation

    .line 176
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->g(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$4;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$4;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/util/player/PlayTracksObservable;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->a()V

    return-void
.end method

.method private b(Lio/reactivex/ObservableEmitter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "-",
            "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->j:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->registerCallback(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)Z

    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->b:[J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->b:[J

    array-length v0, v0

    if-lez v0, :cond_0

    .line 212
    iget-object v1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->b:[J

    iget v2, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->d:I

    const/16 v3, -0x65

    const/16 v4, -0x64

    const v5, 0x10000001

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIIIILjava/lang/String;)I

    goto :goto_0

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "audioIds null or length 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private b()Z
    .locals 1

    .line 278
    iget-boolean v0, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->c:Z

    return v0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/util/player/PlayTracksObservable;)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c()V
    .locals 4

    .line 289
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/util/player/PlayTracksObservable;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->j:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    return-object p0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayTracksObservable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/util/player/PlayTracksObservable;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->f:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-object p0
.end method


# virtual methods
.method public a(Lio/reactivex/ObservableEmitter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 312
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->e:Lio/reactivex/ObservableEmitter;

    .line 313
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->wasServiceConnected()Z

    move-result v0

    .line 314
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call. service connected - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 317
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->b(Lio/reactivex/ObservableEmitter;)V

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->a:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$7;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$7;-><init>(Lcom/samsung/android/app/music/util/player/PlayTracksObservable;Lio/reactivex/ObservableEmitter;)V

    const-class p1, Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->f:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 299
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v0, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/player/PlayTracksObservable$6;-><init>(Lcom/samsung/android/app/music/util/player/PlayTracksObservable;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 307
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/util/rx/SubscriberAdapter;

    invoke-direct {v1}, Lcom/samsung/android/app/music/util/rx/SubscriberAdapter;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
