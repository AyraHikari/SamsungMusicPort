.class public interface abstract Lcom/samsung/android/app/music/network/transport/BasicTransport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientBasicQueryInterceptor;,
        Lcom/samsung/android/app/music/network/transport/BasicTransport$StartClientUrlRouterInterceptor;,
        Lcom/samsung/android/app/music/network/transport/BasicTransport$Instance;
    }
.end annotation


# virtual methods
.method public abstract a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            a = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "mcc"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "mnc"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "testYn"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "packageName"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "isRoaming"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/basic/CheckCountryModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "/usm/basic/checkCountry"
    .end annotation
.end method

.method public abstract a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            a = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "mcc"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "mnc"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "csc"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "testYn"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "isRoaming"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "nMcc"
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "nMnc"
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "packageName"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/basic/StartClientModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "/usm/basic/startClient"
    .end annotation
.end method
