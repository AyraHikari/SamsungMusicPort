.class public Lcom/samsung/android/app/music/network/request/bixby/BixbyApis;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/bixby/TPOPlaylistResponse;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/samsung/android/app/music/network/request/bixby/BixbyApis$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/network/request/bixby/BixbyApis$3;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/browse/playlist/PlaylistDetailModel;",
            ">;"
        }
    .end annotation

    .line 15
    new-instance v0, Lcom/samsung/android/app/music/network/request/bixby/BixbyApis$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/network/request/bixby/BixbyApis$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/bixby/RulePlaylistResponse;",
            ">;"
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/samsung/android/app/music/network/request/bixby/BixbyApis$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/network/request/bixby/BixbyApis$2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
