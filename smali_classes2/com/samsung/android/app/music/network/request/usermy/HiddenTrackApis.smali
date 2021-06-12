.class public Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$HiddenTrackException;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 23
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/UserMyTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserMyTransport;

    move-result-object v0

    const/16 v1, 0x584

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/transport/UserMyTransport;->f(I)Lio/reactivex/Observable;

    move-result-object v0

    .line 24
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$1;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Z)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 55
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/UserMyTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserMyTransport;

    move-result-object v0

    .line 56
    invoke-static {p1}, Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackList;->create(Ljava/util/List;)Lcom/samsung/android/app/music/model/milkhistory/HiddenTrackList;

    move-result-object p1

    const/16 v1, 0x586

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/music/network/transport/UserMyTransport;->b(ILcom/samsung/android/app/music/model/milkhistory/HiddenTrackList;)Lio/reactivex/Observable;

    move-result-object p1

    .line 57
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$2;

    invoke-direct {v0, p2, p0}, Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis$2;-><init>(ZLandroid/content/Context;)V

    .line 58
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
