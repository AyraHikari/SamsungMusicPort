.class public interface abstract Lcom/samsung/android/app/music/network/transport/PlayTransport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/transport/PlayTransport$Instance;
    }
.end annotation


# virtual methods
.method public abstract a()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "usm/play/track/device/permission"
    .end annotation
.end method

.method public abstract a(ILjava/lang/String;)Lio/reactivex/Observable;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            a = "type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "playlistId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/TrackListInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "usm/play/track/ad"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "videoIdList"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/milkmusicvideo/MusicVideoPlayInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "usm/play/video"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "bitrate"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "codec"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lretrofit2/http/Query;
            a = "type"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "trackId"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lretrofit2/http/Query;
            a = "playFrom"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "playlistId"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "adultYn"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "explicit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/TrackListInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "usm/play/track"
    .end annotation
.end method
