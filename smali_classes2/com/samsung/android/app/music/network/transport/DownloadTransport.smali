.class public interface abstract Lcom/samsung/android/app/music/network/transport/DownloadTransport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/transport/DownloadTransport$Instance;
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;)Lio/reactivex/Observable;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/milklyric/LyricResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
    .end annotation
.end method
