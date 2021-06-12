.class public Lcom/samsung/android/app/music/network/request/usermy/VoucherApis;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/network/request/usermy/VoucherApis$CursorException;,
        Lcom/samsung/android/app/music/network/request/usermy/VoucherApis$VoucherException;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;J)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Lio/reactivex/Observable<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/samsung/android/app/music/network/request/usermy/VoucherApis$3;

    invoke-direct {v0, p1, p2, p0}, Lcom/samsung/android/app/music/network/request/usermy/VoucherApis$3;-><init>(JLandroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 61
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/UserMyTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserMyTransport;

    move-result-object v0

    const/16 v1, 0x57d

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/app/music/network/transport/UserMyTransport;->a(ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 62
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/network/request/usermy/VoucherApis$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/request/usermy/VoucherApis$2;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 32
    invoke-static {p0}, Lcom/samsung/android/app/music/network/transport/UserMyTransport$Instance;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/network/transport/UserMyTransport;

    move-result-object v0

    const/16 v1, 0x580

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/network/transport/UserMyTransport;->c(I)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/network/request/usermy/VoucherApis$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/network/request/usermy/VoucherApis$1;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public static b(Landroid/content/Context;J)Lio/reactivex/Observable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 99
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/music/network/request/usermy/VoucherApis;->a(Landroid/content/Context;J)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/network/request/usermy/VoucherApis$5;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/network/request/usermy/VoucherApis$5;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/network/request/usermy/VoucherApis$4;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/network/request/usermy/VoucherApis$4;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p0

    return-object p0
.end method
