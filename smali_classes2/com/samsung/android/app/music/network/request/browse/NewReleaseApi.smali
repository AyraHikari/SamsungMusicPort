.class public Lcom/samsung/android/app/music/network/request/browse/NewReleaseApi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/browse/newrelease/NewReleaseModel;",
            ">;"
        }
    .end annotation

    .line 19
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/BrowseTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/BrowseTransport;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/samsung/android/app/music/network/transport/BrowseTransport;->b(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
