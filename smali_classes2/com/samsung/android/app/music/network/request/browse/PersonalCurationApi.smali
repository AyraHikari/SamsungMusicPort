.class public Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/browse/main/PersonalCurationModel;",
            ">;"
        }
    .end annotation

    .line 28
    new-instance v0, Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/request/browse/PersonalCurationApi$1;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
