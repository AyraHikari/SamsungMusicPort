.class public Lcom/samsung/android/app/music/network/request/recommend/RecommendApis;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Lcom/samsung/android/app/music/network/request/post/recommend/PlayerPostBody;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/music/network/request/post/recommend/PlayerPostBody;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/recommend/PlayerModel;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/RecommendTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/RecommendTransport;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/app/music/network/transport/RecommendTransport;->a(ILcom/samsung/android/app/music/network/request/post/recommend/PlayerPostBody;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
