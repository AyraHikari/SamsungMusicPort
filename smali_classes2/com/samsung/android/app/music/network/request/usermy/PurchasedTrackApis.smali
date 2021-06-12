.class public Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$PurchasedTrackException;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;I)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 25
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis;->b(Landroid/content/Context;I)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$2;-><init>(Landroid/content/Context;I)V

    .line 26
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$1;

    invoke-direct {v1, p1, p0}, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$1;-><init>(ILandroid/content/Context;)V

    .line 32
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .line 76
    invoke-static {p0}, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis;->b(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object p0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$4;

    invoke-direct {v0}, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$4;-><init>()V

    .line 77
    invoke-virtual {p0, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Lio/reactivex/Observable;
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

    .line 86
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/UserMyTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserMyTransport;

    move-result-object v0

    const/16 v1, 0x579

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/transport/UserMyTransport;->a(I)Lio/reactivex/Observable;

    move-result-object v0

    .line 87
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$5;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;I)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$3;

    invoke-direct {v0, p1, p0}, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis$3;-><init>(ILandroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
