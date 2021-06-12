.class Lcom/samsung/android/app/music/service/milk/login/LoginManager$7;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$7;->a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)V
    .locals 1

    const-string p1, "LoginManager"

    const-string v0, "doSimpleSignIn onNext "

    .line 557
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onComplete()V
    .locals 2

    const-string v0, "LoginManager"

    const-string v1, "doSimpleSignIn onComplete code "

    .line 540
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "LoginManager"

    const-string v1, "doSimpleSignIn onError"

    .line 545
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 548
    instance-of v0, p1, Landroid/os/RemoteException;

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/samsung/android/app/music/service/milk/exception/SACallbackException;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 552
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginManager$7;->a:Lcom/samsung/android/app/music/service/milk/login/LoginManager;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager;->b(Lcom/samsung/android/app/music/service/milk/login/LoginManager;)Lcom/samsung/android/app/music/model/UserInfo;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/model/UserInfo;->setUserStatus(I)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "LoginManager"

    const-string v0, "doSimpleSignIn SA Exception"

    .line 549
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 537
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginManager$7;->a(Ljava/lang/Integer;)V

    return-void
.end method
