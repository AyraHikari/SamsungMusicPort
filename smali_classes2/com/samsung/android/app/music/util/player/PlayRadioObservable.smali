.class public Lcom/samsung/android/app/music/util/player/PlayRadioObservable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
.implements Lio/reactivex/ObservableOnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/samsung/android/app/music/model/OnlineTrack;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;",
        "Lio/reactivex/ObservableOnSubscribe<",
        "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final f:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter<",
            "TT;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/String;

.field private final h:Z

.field private final i:Z

.field private final j:Lcom/samsung/android/app/music/model/AdInfo;

.field private k:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "-",
            "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

.field private m:Landroid/os/Handler;

.field private n:Z

.field private final o:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

.field private p:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;Ljava/lang/String;ZZLcom/samsung/android/app/music/model/AdInfo;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter<",
            "TT;",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/samsung/android/app/music/model/AdInfo;",
            ")V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->m:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->n:Z

    .line 89
    new-instance v0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$1;-><init>(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->o:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    .line 304
    new-instance v0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$4;-><init>(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->p:Ljava/lang/Runnable;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->a:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->b:Ljava/lang/String;

    .line 127
    iput-object p3, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->c:Ljava/lang/String;

    .line 128
    iput-object p4, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->d:Ljava/lang/String;

    .line 129
    iput-object p7, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->g:Ljava/lang/String;

    .line 130
    iput-object p5, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->e:Ljava/util/List;

    .line 131
    iput-object p6, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->f:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    .line 132
    iput-boolean p8, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->h:Z

    .line 133
    iput-boolean p9, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->i:Z

    .line 134
    iput-object p10, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->j:Lcom/samsung/android/app/music/model/AdInfo;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->l:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;Landroid/util/Pair;Ljava/lang/String;Z)Lio/reactivex/Observable;
    .locals 10
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/util/Pair;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/android/app/music/model/OnlineTrack;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter<",
            "TT;",
            "Landroid/content/ContentValues;",
            ">;>;",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    invoke-interface {p2}, Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;->e()Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-interface {p2}, Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/util/List;

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v5, p3

    check-cast v5, Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    .line 197
    invoke-interface {p2}, Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;->d()Z

    move-result v7

    .line 198
    invoke-interface {p2}, Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;->a()Lcom/samsung/android/app/music/model/AdInfo;

    move-result-object v9

    move-object v0, p0

    move-object v1, p1

    move-object v6, p4

    move v8, p5

    .line 195
    invoke-static/range {v0 .. v9}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;Ljava/lang/String;ZZLcom/samsung/android/app/music/model/AdInfo;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 170
    :cond_1
    :goto_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$2;

    invoke-direct {p2, p0, p4, p5}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$2;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;Ljava/lang/String;ZZLcom/samsung/android/app/music/model/AdInfo;)Lio/reactivex/Observable;
    .locals 0

    .line 52
    invoke-static/range {p0 .. p9}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;Ljava/lang/String;ZZLcom/samsung/android/app/music/model/AdInfo;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Lio/reactivex/Observable;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

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

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 140
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;Landroid/util/Pair;Ljava/lang/String;Z)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private a()Ljava/lang/String;
    .locals 2

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayRadioObservable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->b(Lio/reactivex/ObservableEmitter;)V

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

.method static synthetic a(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->n:Z

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->n:Z

    return p1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;Ljava/lang/String;ZZLcom/samsung/android/app/music/model/AdInfo;)Lio/reactivex/Observable;
    .locals 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/android/app/music/model/OnlineTrack;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter<",
            "TT;",
            "Landroid/content/ContentValues;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/samsung/android/app/music/model/AdInfo;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
            ">;"
        }
    .end annotation

    .line 206
    new-instance v11, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;Ljava/lang/String;ZZLcom/samsung/android/app/music/model/AdInfo;)V

    .line 209
    invoke-static {v11}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v2, v3, v1}, Lio/reactivex/Observable;->b(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/util/rx/ObservableLogger;

    .line 210
    invoke-direct {v11}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "playRadio"

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/app/music/util/rx/ObservableLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$3;

    invoke-direct {v1, v11}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$3;-><init>(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;)V

    .line 211
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Action;)Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized b()V
    .locals 13

    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->k:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkMetadataAndFireEventIfNeeded. unsubscribed or token null. subscriber - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->k:Lio/reactivex/ObservableEmitter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    .line 242
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getRadioMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    .line 243
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getRadioPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v3

    if-nez v2, :cond_1

    .line 245
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "checkMetadataAndFireEventIfNeeded. metadata is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    monitor-exit p0

    return-void

    .line 249
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->isSupposedToPlaying()Z

    move-result v0

    .line 250
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isRadioPlaying()Z

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

    .line 252
    :goto_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->position()J

    move-result-wide v5

    .line 253
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v7

    const/4 v8, -0x1

    .line 255
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getMessage()Landroid/os/Bundle;

    move-result-object v9

    if-eqz v9, :cond_4

    const-string v8, "extra_result_code"

    .line 257
    invoke-virtual {v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 260
    :cond_4
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getChannelId()Ljava/lang/String;

    move-result-object v9

    .line 261
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->a()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkMetadataAndFireEventIfNeeded. playlist - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->b:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", meta[playlistId - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", track - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "]. isPlaying - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSupposeToPlaying - "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", pos - "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", resultCode - "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", wait - "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->d()Z

    move-result v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", state - "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-static {v10, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x138a

    if-eq v8, v0, :cond_8

    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->b:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz v4, :cond_7

    .line 278
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->d()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, v7}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->a(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 284
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->c()V

    goto :goto_3

    .line 279
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->k:Lio/reactivex/ObservableEmitter;

    new-instance v7, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;

    iget-object v4, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->e:Ljava/util/List;

    iget-object v5, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->b:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->c:Ljava/lang/String;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-interface {v0, v7}, Lio/reactivex/ObservableEmitter;->onNext(Ljava/lang/Object;)V

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->k:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->onComplete()V

    goto :goto_3

    .line 287
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->c()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 289
    :goto_3
    monitor-exit p0

    return-void

    .line 273
    :cond_8
    :try_start_3
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->k:Lio/reactivex/ObservableEmitter;

    new-instance v1, Lcom/samsung/android/app/music/util/player/CanNotPlaySimultaneousException;

    invoke-direct {v1}, Lcom/samsung/android/app/music/util/player/CanNotPlaySimultaneousException;-><init>()V

    invoke-interface {v0, v1}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 274
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 234
    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->b()V

    return-void
.end method

.method private b(Lio/reactivex/ObservableEmitter;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ObservableEmitter<",
            "-",
            "Lcom/samsung/android/app/music/util/player/PlayingTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "playlist id shouldn\'t be empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lio/reactivex/ObservableEmitter;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->o:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->registerCallback(Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback;)Z

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->g:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->h:Z

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->e:Ljava/util/List;

    iget-object v8, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->f:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    iget-object v9, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->j:Lcom/samsung/android/app/music/model/AdInfo;

    .line 226
    invoke-static/range {v0 .. v9}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;Lcom/samsung/android/app/music/model/AdInfo;)V

    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;)Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->o:Lcom/samsung/android/app/musiclibrary/core/service/IPlayerServiceCallback$Stub;

    return-object p0
.end method

.method private c()V
    .locals 4

    .line 292
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->p:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 293
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->m:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->p:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->l:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-object p0
.end method

.method private d()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->i:Z

    return v0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;)Ljava/lang/String;
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->b:Ljava/lang/String;

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

    .line 326
    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->k:Lio/reactivex/ObservableEmitter;

    .line 327
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->wasServiceConnected()Z

    move-result v0

    .line 328
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->a()Ljava/lang/String;

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

    .line 331
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->b(Lio/reactivex/ObservableEmitter;)V

    goto :goto_0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->a:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$6;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$6;-><init>(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;Lio/reactivex/ObservableEmitter;)V

    const-class p1, Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->l:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 313
    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    new-instance v0, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/util/player/PlayRadioObservable$5;-><init>(Lcom/samsung/android/app/music/util/player/PlayRadioObservable;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object v0

    .line 321
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/util/rx/SubscriberAdapter;

    invoke-direct {v1}, Lcom/samsung/android/app/music/util/rx/SubscriberAdapter;-><init>()V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
