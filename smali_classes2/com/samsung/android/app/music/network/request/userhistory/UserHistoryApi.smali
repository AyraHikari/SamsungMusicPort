.class public final Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$PlayHistoryException;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 53
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/UserHistoryTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserHistoryTransport;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/network/transport/UserHistoryTransport;->a()Lio/reactivex/Observable;

    move-result-object v0

    .line 54
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$1;-><init>(Landroid/content/Context;)V

    .line 55
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;)Lio/reactivex/Observable;
    .locals 0
    .param p1    # Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/UserHistoryTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserHistoryTransport;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/music/network/transport/UserHistoryTransport;->a(Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/model/playhistory/TrackPlayInfo;)Lio/reactivex/Observable;
    .locals 0
    .param p1    # Lcom/samsung/android/app/music/model/playhistory/TrackPlayInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/music/model/playhistory/TrackPlayInfo;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/playhistory/AdjustmentResponse;",
            ">;"
        }
    .end annotation

    .line 34
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/UserHistoryTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserHistoryTransport;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/music/network/transport/UserHistoryTransport;->a(Lcom/samsung/android/app/music/model/playhistory/TrackPlayInfo;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$LocalPlayHistory;)Lio/reactivex/Observable;
    .locals 0
    .param p1    # Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$LocalPlayHistory;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$LocalPlayHistory;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/UserHistoryTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserHistoryTransport;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/music/network/transport/UserHistoryTransport;->a(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$LocalPlayHistory;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "/usm/user/history/usage/%s/free"

    const/4 v1, 0x1

    .line 84
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {p0, v0}, Lcom/samsung/android/app/music/provider/dao/LatestUpdateDateDAO;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 0

    .line 28
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayHistory;)V
    .locals 2
    .param p1    # Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayHistory;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param

    const-string v0, "UserHistoryApi"

    const-string v1, "sendVideoPlayHistory"

    .line 180
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/UserHistoryTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserHistoryTransport;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/music/network/transport/UserHistoryTransport;->a(Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayHistory;)Lio/reactivex/Observable;

    move-result-object p0

    .line 183
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$6;

    invoke-direct {p1}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$6;-><init>()V

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueHistory;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueHistory;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param

    .line 159
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/UserHistoryTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserHistoryTransport;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/music/network/transport/UserHistoryTransport;->a(Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueHistory;)Lio/reactivex/Observable;

    move-result-object p0

    .line 160
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$5;

    invoke-direct {p1}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$5;-><init>()V

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;)Lio/reactivex/Observable;
    .locals 0
    .param p1    # Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/UserHistoryTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserHistoryTransport;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/music/network/transport/UserHistoryTransport;->b(Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 131
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/UserHistoryTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserHistoryTransport;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/network/transport/UserHistoryTransport;->a(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 132
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$4;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$4;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 97
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/UserHistoryTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserHistoryTransport;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Lcom/samsung/android/app/music/network/transport/UserHistoryTransport;->a(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 98
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$3;

    invoke-direct {v1, p3, p0, p2, p1}, Lcom/samsung/android/app/music/network/request/userhistory/UserHistoryApi$3;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
