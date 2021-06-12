.class public Lcom/samsung/android/app/music/network/request/browse/YearApi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Observable;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lio/reactivex/Observable<",
            "Lcom/samsung/android/app/music/model/browse/year/YearModel;",
            ">;"
        }
    .end annotation

    .line 20
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/BrowseTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/BrowseTransport;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/app/music/network/transport/BrowseTransport;->c(Ljava/lang/String;Ljava/lang/String;I)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
