.class public interface abstract Lcom/samsung/android/app/music/network/transport/SearchTransport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/transport/SearchTransport$Proxy;
    }
.end annotation


# virtual methods
.method public abstract a()Lio/reactivex/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchPopularModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "usm/search/popular"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "keyword"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "usm/search/discover"
    .end annotation
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "searchType"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "order"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "page"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "keyword"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchResultInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "usm/search"
    .end annotation
.end method

.method public abstract b(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "keyword"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/milksearch/SearchAutoCompleteInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "usm/search/autoComplete"
    .end annotation
.end method
