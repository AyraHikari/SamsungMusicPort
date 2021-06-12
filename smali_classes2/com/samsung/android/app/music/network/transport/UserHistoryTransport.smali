.class public interface abstract Lcom/samsung/android/app/music/network/transport/UserHistoryTransport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/transport/UserHistoryTransport$Instance;
    }
.end annotation


# virtual methods
.method public abstract a()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/playhistory/PlayHistoryList;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "usm/user/history/usage"
    .end annotation
.end method

.method public abstract a(ILokhttp3/MultipartBody$Part;Lokhttp3/RequestBody;)Lio/reactivex/Observable;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            a = "id"
        .end annotation
    .end param
    .param p2    # Lokhttp3/MultipartBody$Part;
        .annotation runtime Lretrofit2/http/Part;
        .end annotation
    .end param
    .param p3    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Part;
            a = "logFile"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lokhttp3/MultipartBody$Part;",
            "Lokhttp3/RequestBody;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        a = "usm/user/history/errLog"
    .end annotation
.end method

.method public abstract a(Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;)Lio/reactivex/Observable;
    .param p1    # Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        a = "usm/user/history/skip"
    .end annotation
.end method

.method public abstract a(Lcom/samsung/android/app/music/model/playhistory/TrackPlayInfo;)Lio/reactivex/Observable;
    .param p1    # Lcom/samsung/android/app/music/model/playhistory/TrackPlayInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/playhistory/TrackPlayInfo;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/playhistory/AdjustmentResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        a = "usm/user/history/adjustment"
    .end annotation
.end method

.method public abstract a(Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayHistory;)Lio/reactivex/Observable;
    .param p1    # Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayHistory;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/userhistory/postbody/VideoPlayHistory;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        a = "usm/user/history/play/video"
    .end annotation
.end method

.method public abstract a(Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$LocalPlayHistory;)Lio/reactivex/Observable;
    .param p1    # Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$LocalPlayHistory;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/service/observer/history/LocalPlayLogger$LocalPlayHistory;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        a = "usm/user/history/localplay"
    .end annotation
.end method

.method public abstract a(Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueHistory;)Lio/reactivex/Observable;
    .param p1    # Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueHistory;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/service/observer/history/PlayerQueueUpdateHistory$PlayerQueueHistory;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        a = "usm/user/history/play/queue"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            a = "orderId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "usm/user/history/usage/{orderId}/subscription"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            a = "historyId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "latestUpdateDate"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/playhistory/PlayHistoryDetailList;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "usm/user/history/usage/{historyId}/free"
    .end annotation
.end method

.method public abstract b(Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;)Lio/reactivex/Observable;
    .param p1    # Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/milkhistory/PlayEventHistoryList;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        a = "usm/user/history/complete"
    .end annotation
.end method
