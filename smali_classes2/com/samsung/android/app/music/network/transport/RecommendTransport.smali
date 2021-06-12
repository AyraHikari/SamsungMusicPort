.class public interface abstract Lcom/samsung/android/app/music/network/transport/RecommendTransport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/transport/RecommendTransport$Instance;
    }
.end annotation


# virtual methods
.method public abstract a(IILjava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            a = "id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lretrofit2/http/Query;
            a = "type"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "genreIds"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "artistIds"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/recommend/GetPreferenceModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "usm/recommend/preference"
    .end annotation
.end method

.method public abstract a(ILcom/samsung/android/app/music/model/recommend/SaveUserPreferencePostBody;)Lio/reactivex/Observable;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            a = "id"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/model/recommend/SaveUserPreferencePostBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/app/music/model/recommend/SaveUserPreferencePostBody;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        a = "usm/recommend/user/preference"
    .end annotation
.end method

.method public abstract a(ILcom/samsung/android/app/music/network/request/post/recommend/PlayerPostBody;)Lio/reactivex/Observable;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            a = "id"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/network/request/post/recommend/PlayerPostBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/app/music/network/request/post/recommend/PlayerPostBody;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/recommend/PlayerModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        a = "usm/recommend/player"
    .end annotation
.end method
