.class public Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;,
        Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
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
            "Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;",
            ">;"
        }
    .end annotation

    .line 227
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 230
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playlistIdInfo is null. id - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 234
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->b()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser$PlaylistIdInfo;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "OnlineRadioPlayUtils"

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshRadio. playlist. id - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/network/request/browse/PlaylistDetailApi;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 241
    invoke-static {p1}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->c(Ljava/lang/String;)Lio/reactivex/functions/Function;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 243
    invoke-static {p0}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->c(Landroid/content/Context;)Lio/reactivex/functions/Function;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/reactivex/Observable;->c(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0

    .line 235
    :cond_2
    :goto_0
    new-instance p0, Lcom/samsung/android/app/music/util/player/UnsupportedRadioPlaylistException;

    const-string p1, "album/artist does not support play radio"

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/util/player/UnsupportedRadioPlaylistException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/Observable;->a(Ljava/lang/Throwable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Lio/reactivex/Observable;
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
            "IZ)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;",
            ">;"
        }
    .end annotation

    .line 166
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 167
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 168
    invoke-static {p2, p4, p3}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(Ljava/lang/String;ZI)Lio/reactivex/functions/Function;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;Ljava/lang/String;ZLjava/util/List;)V
    .locals 10
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/PlayTrackInfo;",
            ">;)V"
        }
    .end annotation

    .line 174
    invoke-interface {p1}, Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;->e()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-interface {p1}, Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;->c()Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-interface {p1}, Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;->d()Z

    move-result v5

    sget-object v8, Lcom/samsung/android/app/music/model/PlayTrackInfo;->PLAY_TRACK_INFO_CONVERTER:Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;

    .line 177
    invoke-interface {p1}, Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;->a()Lcom/samsung/android/app/music/model/AdInfo;

    move-result-object v9

    move-object v0, p0

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    .line 174
    invoke-static/range {v0 .. v9}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;Lcom/samsung/android/app/music/model/AdInfo;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;IZLcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const/4 v0, 0x0

    .line 157
    invoke-static {p0, p1, v0, p2, p3}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Lio/reactivex/Observable;

    move-result-object p0

    .line 158
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    const/4 p1, -0x1

    .line 159
    invoke-static {p1, p4}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(ILcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p0

    .line 160
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lio/reactivex/functions/Consumer;

    move-result-object p1

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lio/reactivex/functions/Consumer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .line 130
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b()Lio/reactivex/Observable;

    move-result-object v0

    .line 131
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 132
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/functions/Function;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 133
    invoke-static {p0}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->b(Landroid/content/Context;)Lio/reactivex/functions/Function;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    .line 134
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    const/16 p1, 0x44e

    .line 135
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(ILcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p0

    .line 136
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lio/reactivex/functions/Consumer;

    move-result-object p1

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lio/reactivex/functions/Consumer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/util/List;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;Lcom/samsung/android/app/music/model/AdInfo;)V
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
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Lcom/samsung/android/app/music/model/AdInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/android/app/music/model/OnlineTrack;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter<",
            "TT;",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/samsung/android/app/music/model/AdInfo;",
            ")V"
        }
    .end annotation

    .line 187
    new-instance v11, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;

    move-object v0, v11

    move-object/from16 v1, p7

    move-object v2, p0

    move-object/from16 v3, p8

    move-object/from16 v4, p4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$1;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/samsung/android/app/music/browse/util/BrowseTrackDbInserter$Converter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/samsung/android/app/music/model/AdInfo;)V

    invoke-static {v11}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object v0

    .line 222
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lio/reactivex/functions/Consumer;

    move-result-object v1

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lio/reactivex/functions/Consumer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;)V
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
    .param p4    # Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 119
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/FixedPlaylistIds;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;ZLcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 151
    invoke-static {p0, p1, v0, p2, p3}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;)V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[JZIZLcom/samsung/android/app/music/model/AdInfo;)V
    .locals 12

    move/from16 v0, p4

    move/from16 v7, p5

    const-string v1, "OnlineRadioPlayUtils"

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playRadioInternal. id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", name - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", pos - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", shuffle - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-static/range {p7 .. p7}, Lcom/samsung/android/app/music/model/AdInfo;->convertAdInfoToLong(Lcom/samsung/android/app/music/model/AdInfo;)J

    move-result-wide v8

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ltz v7, :cond_1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, v8

    move-object v6, p3

    move/from16 v7, p5

    move/from16 v8, p6

    .line 253
    invoke-static/range {v0 .. v8}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playRadioQueue(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J[JIZ)V

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    :goto_1
    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v10, p3

    move/from16 v11, p6

    .line 257
    invoke-static/range {v4 .. v11}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playRadioQueue(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J[JZ)V

    :goto_2
    return-void
.end method

.method static a(Ljava/util/List;Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 5
    .param p1    # Lcom/samsung/android/app/music/model/UserInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/android/app/music/model/OnlineTrack;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/samsung/android/app/music/model/UserInfo;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 276
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 280
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 281
    new-instance v1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$2;

    invoke-direct {v1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$2;-><init>()V

    .line 282
    invoke-static {p0, v1}, Lcom/samsung/android/app/music/util/CollectionsUtils;->b(Ljava/util/Collection;Lcom/samsung/android/app/music/util/CollectionsUtils$Condition;)I

    move-result v1

    const/4 v2, 0x0

    .line 301
    invoke-static {p1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->a(Lcom/samsung/android/app/music/model/UserInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 302
    new-instance p1, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$3;

    invoke-direct {p1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$3;-><init>()V

    .line 303
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/util/CollectionsUtils;->b(Ljava/util/Collection;Lcom/samsung/android/app/music/util/CollectionsUtils$Condition;)I

    move-result v2

    :cond_1
    const-string p1, "OnlineRadioPlayUtils"

    .line 316
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filterRadioPlayableOrBan. original size - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", not playable - "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", not radio playable - "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", final size - "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 316
    invoke-static {p1, p0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    const-string p0, "OnlineRadioPlayUtils"

    const-string p1, "filterRadioPlayableOrBan. track is empty."

    .line 277
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 264
    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a()Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p0

    .line 265
    invoke-static {p0}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->a(Lcom/samsung/android/app/music/model/UserInfo;)Z

    move-result p0

    return p0
.end method

.method private static a(Lcom/samsung/android/app/music/model/UserInfo;)Z
    .locals 0
    .param p0    # Lcom/samsung/android/app/music/model/UserInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 271
    invoke-virtual {p0}, Lcom/samsung/android/app/music/model/UserInfo;->isStreamingUser()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;)V
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
    .param p4    # Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 124
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/FixedPlaylistIds;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;)V
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
    .param p4    # Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    const/4 v0, -0x1

    .line 143
    invoke-static {p0, p1, p2, v0, p3}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Lio/reactivex/Observable;

    move-result-object p0

    .line 144
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 145
    invoke-static {v0, p4}, Lcom/samsung/android/app/music/util/player/OnlinePlayRxFunctions;->a(ILcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;)Lio/reactivex/ObservableTransformer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableTransformer;)Lio/reactivex/Observable;

    move-result-object p0

    .line 146
    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lio/reactivex/functions/Consumer;

    move-result-object p1

    invoke-static {}, Lio/reactivex/internal/functions/Functions;->a()Lio/reactivex/functions/Consumer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
