.class Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->b()Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/reactivex/subjects/PublishSubject;

.field final synthetic b:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;Lio/reactivex/subjects/PublishSubject;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1;->b:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1;->a:Lio/reactivex/subjects/PublishSubject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/UserInfo;)V
    .locals 1

    .line 144
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/UserInfo;->isSigned()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 145
    new-instance p1, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1$2;-><init>(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1;)V

    invoke-static {p1}, Lio/reactivex/Observable;->a(Ljava/util/concurrent/Callable;)Lio/reactivex/Observable;

    move-result-object p1

    .line 152
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1$1;-><init>(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1;)V

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1;->a:Lio/reactivex/subjects/PublishSubject;

    new-instance v0, Lcom/samsung/android/app/music/service/milk/exception/SignInFailException;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/milk/exception/SignInFailException;-><init>()V

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/PublishSubject;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
