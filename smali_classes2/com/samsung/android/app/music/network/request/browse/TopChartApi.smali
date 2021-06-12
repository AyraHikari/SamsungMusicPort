.class public Lcom/samsung/android/app/music/network/request/browse/TopChartApi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lio/reactivex/Completable;
    .locals 0

    .line 31
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/network/request/browse/TopChartApi;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lio/reactivex/Completable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;>;"
        }
    .end annotation

    .line 64
    new-instance v0, Lcom/samsung/android/app/music/network/request/browse/TopChartApi$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/request/browse/TopChartApi$2;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/browse/topchart/TopChartModel;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/BrowseTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/BrowseTransport;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/music/network/transport/BrowseTransport;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;J)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .line 45
    invoke-static {p0}, Lcom/samsung/android/app/music/network/request/browse/TopChartApi;->a(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/request/browse/TopChartApi$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/request/browse/TopChartApi$1;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/functions/Function;)Lio/reactivex/Completable;

    move-result-object p0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 54
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Lio/reactivex/Completable;->a(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Completable;

    move-result-object p0

    .line 57
    :cond_0
    :try_start_0
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Completable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Lio/reactivex/Completable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/TrackModel;",
            ">;)",
            "Lio/reactivex/Completable;"
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/samsung/android/app/music/network/request/browse/TopChartApi$3;

    invoke-direct {v0, p1, p0, p2}, Lcom/samsung/android/app/music/network/request/browse/TopChartApi$3;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0}, Lio/reactivex/Completable;->a(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    return-object p0
.end method
