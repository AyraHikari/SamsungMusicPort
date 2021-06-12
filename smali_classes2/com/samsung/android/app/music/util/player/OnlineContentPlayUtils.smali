.class public final Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;,
        Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$InternalTrackListModel;,
        Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;J)Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 265
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->e(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    .line 267
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p2, p3, p1}, Lio/reactivex/Observable;->b(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p0

    .line 269
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/Observable;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 271
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    new-instance p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;

    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;-><init>()V

    const/4 p1, -0x1

    .line 273
    iput p1, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->a:I

    :goto_0
    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/model/PlayTrackInfo;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/app/music/model/PlayTrackInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 113
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/PlayTrackInfo;->isExplicit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v0

    .line 114
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->a(Landroid/content/Context;Lcom/samsung/android/app/music/model/UserInfo;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "OnlineContentPlayUtils"

    const-string v1, "playTrack : Not Permitted (Explicit)"

    .line 117
    invoke-static {p1, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "explicit-invalid"

    .line 119
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/music/milk/MilkDialogLauncher;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 123
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->a(Landroid/content/Context;Ljava/util/List;I)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 95
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->c(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$1;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 96
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 220
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b()Lio/reactivex/Observable;

    move-result-object v0

    .line 221
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 222
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/functions/Function;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    const/4 v0, 0x0

    .line 223
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->b(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/functions/Function;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    .line 224
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    const/16 p1, 0x44e

    .line 225
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(ILcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p0

    .line 226
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lio/reactivex/functions/Consumer;

    move-result-object p1

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lio/reactivex/functions/Consumer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 180
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 170
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->e(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 171
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 172
    invoke-static {p2}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->b(Ljava/lang/String;)Lio/reactivex/functions/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    .line 173
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    const/4 p1, -0x1

    .line 174
    invoke-static {p1, p3}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(ILcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$OnPlayContentResultListener;)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p0

    .line 175
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lio/reactivex/functions/Consumer;

    move-result-object p1

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lio/reactivex/functions/Consumer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IZ)V
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/PlayTrackInfo;",
            ">;IZ)V"
        }
    .end annotation

    .line 133
    sget-object v3, Lcom/samsung/android/app/music/model/PlayTrackInfo;->PLAY_TRACK_INFO_CONVERTER:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;IZ)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;IZ)V
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter<",
            "TT;",
            "Landroid/content/ContentValues;",
            ">;IZ)V"
        }
    .end annotation

    .line 142
    new-instance v7, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$2;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;Ljava/lang/String;IZ)V

    invoke-static {v7}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    .line 162
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 163
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lio/reactivex/functions/Consumer;

    move-result-object p1

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lio/reactivex/functions/Consumer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;I)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/PlayTrackInfo;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 128
    invoke-static {p0, v0, p1, p2, v1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;IZ)V

    return-void
.end method

.method static a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 426
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 431
    new-instance v1, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$6;

    invoke-direct {v1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$6;-><init>()V

    .line 432
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/util/CollectionsUtils;->b(Ljava/util/Collection;Lcom/samsung/android/app/music/util/CollectionsUtils$Condition;)I

    move-result v1

    const-string v2, "OnlineContentPlayUtils"

    .line 446
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filterTrackPlayableOrBan. original size - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", not playable - "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", final size - "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 446
    invoke-static {v2, p0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "OnlineContentPlayUtils"

    const-string v0, "filterTrackPlayableOrBan. track is empty."

    .line 427
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static a([JILjava/lang/String;Z)V
    .locals 12
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_2

    .line 231
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 236
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->b()I

    move-result v1

    const/4 v2, 0x1

    const v3, 0x10000001

    const/4 v4, 0x0

    move-object v5, p0

    move-object v6, p2

    move v7, p3

    invoke-static/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play(IIILjava/lang/String;[JLjava/lang/String;Z)V

    goto :goto_0

    .line 240
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->b()I

    move-result v5

    const v6, 0x10000001

    const/4 v7, 0x0

    move-object v8, p0

    move v9, p1

    move-object v10, p2

    move v11, p3

    invoke-static/range {v5 .. v11}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play(IILjava/lang/String;[JILjava/lang/String;Z)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p0, "OnlineContentPlayUtils"

    const-string p1, "internalPlay. ids null!!"

    .line 232
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v0, 0x2710

    .line 251
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;J)Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;J)Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 298
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->f(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    .line 300
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p2, p3, p1}, Lio/reactivex/Observable;->b(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p0

    .line 302
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/Observable;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 304
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 305
    new-instance p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;

    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;-><init>()V

    const/4 p1, -0x1

    .line 306
    iput p1, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->a:I

    :goto_0
    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 190
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->f(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 191
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 192
    invoke-static {p2}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->b(Ljava/lang/String;)Lio/reactivex/functions/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    .line 193
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lio/reactivex/functions/Consumer;

    move-result-object p1

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lio/reactivex/functions/Consumer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v0, 0x2710

    .line 284
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->b(Landroid/content/Context;Ljava/lang/String;J)Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;J)Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 331
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->g(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-lez p1, :cond_0

    .line 333
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p2, p3, p1}, Lio/reactivex/Observable;->b(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object p0

    .line 335
    :cond_0
    invoke-virtual {p0}, Lio/reactivex/Observable;->c()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 337
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 338
    new-instance p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;

    invoke-direct {p0}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;-><init>()V

    const/4 p1, -0x1

    .line 339
    iput p1, p0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->a:I

    :goto_0
    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 203
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 204
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 205
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lio/reactivex/functions/Consumer;

    move-result-object p1

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lio/reactivex/functions/Consumer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v0, 0x2710

    .line 317
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->c(Landroid/content/Context;Ljava/lang/String;J)Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;

    move-result-object p0

    return-object p0
.end method

.method static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
            ">;"
        }
    .end annotation

    .line 210
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->g(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 211
    invoke-static {p2}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->b(Ljava/lang/String;)Lio/reactivex/functions/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 346
    invoke-static {p0, p1, v0}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->c(Landroid/content/Context;Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$3;

    invoke-direct {v0}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$3;-><init>()V

    .line 347
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 354
    invoke-static {p0}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(Landroid/content/Context;)Lio/reactivex/functions/Function;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 359
    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$4;

    invoke-direct {v0}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$4;-><init>()V

    .line 360
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 367
    invoke-static {p0}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(Landroid/content/Context;)Lio/reactivex/functions/Function;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;",
            ">;"
        }
    .end annotation

    .line 373
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 376
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "playlistIdInfo is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 378
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->e(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 380
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 381
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->i()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->f(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 383
    :cond_2
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/network/request/browse/PlaylistDetailApi;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$5;

    invoke-direct {v0}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$5;-><init>()V

    .line 384
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 392
    invoke-static {p0}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(Landroid/content/Context;)Lio/reactivex/functions/Function;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
