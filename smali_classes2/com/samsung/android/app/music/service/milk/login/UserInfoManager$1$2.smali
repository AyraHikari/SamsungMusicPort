.class Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1;->a(Lcom/samsung/android/app/music/model/UserInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/Observable<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1$2;->a:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1$2;->a:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1;->a:Lio/reactivex/subjects/PublishSubject;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1$2;->a:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1;->b:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1$2;->a:Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1;->a:Lio/reactivex/subjects/PublishSubject;

    invoke-virtual {v0}, Lio/reactivex/subjects/PublishSubject;->onComplete()V

    .line 150
    invoke-static {}, Lio/reactivex/Observable;->b()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager$1$2;->a()Lio/reactivex/Observable;

    move-result-object v0

    return-object v0
.end method
