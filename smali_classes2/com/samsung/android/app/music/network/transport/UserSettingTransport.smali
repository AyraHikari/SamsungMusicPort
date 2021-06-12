.class public interface abstract Lcom/samsung/android/app/music/network/transport/UserSettingTransport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/transport/UserSettingTransport$Instance;
    }
.end annotation


# virtual methods
.method public abstract a(I)Lio/reactivex/Observable;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            a = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "/usm/user/setting/downloadable/devices"
    .end annotation
.end method

.method public abstract a(ILcom/samsung/android/app/music/model/milksetting/DeleteDeviceListInfo;)Lio/reactivex/Observable;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            a = "id"
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/model/milksetting/DeleteDeviceListInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/android/app/music/model/milksetting/DeleteDeviceListInfo;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/HTTP;
        a = "DELETE"
        b = "/usm/user/setting/downloadable/devices"
        c = true
    .end annotation
.end method

.method public abstract a(ILjava/lang/String;Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            a = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "settings"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "channelId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/UserSettings;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        a = "/usm/user/setting"
    .end annotation
.end method

.method public abstract a(ILjava/lang/String;)Lio/reactivex/Single;
    .param p1    # I
        .annotation runtime Lretrofit2/http/Query;
            a = "id"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            a = "explicit"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        a = "usm/user/setting"
    .end annotation
.end method

.method public abstract a(Lcom/samsung/android/app/music/model/milksetting/SaveSettingsBody;)Lio/reactivex/Single;
    .param p1    # Lcom/samsung/android/app/music/model/milksetting/SaveSettingsBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/model/milksetting/SaveSettingsBody;",
            ")",
            "Lio/reactivex/Single<",
            "Lcom/samsung/android/app/music/model/ResponseModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        a = "usm/user/setting"
    .end annotation
.end method
