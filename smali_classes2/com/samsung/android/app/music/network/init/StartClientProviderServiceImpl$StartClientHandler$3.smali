.class Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$3;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/basic/StartClientModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;Landroid/content/Context;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$3;->b:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;

    iput-object p2, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/basic/StartClientModel;)V
    .locals 2

    const-string v0, "StartClientHandler"

    const-string v1, "doStartClient - onNext"

    .line 340
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$3;->a:Landroid/content/Context;

    .line 345
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/basic/StartClientModel;->getCurTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/network/init/ServerTimeProvider;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$3;->b:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->a(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;)Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->a(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;Lcom/samsung/android/app/music/model/basic/StartClientModel;)V

    .line 348
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->a()Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->e()V

    .line 350
    iget-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$3;->b:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;

    invoke-static {p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->b(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;)Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "ACTION_REPORT_DEVICE_ACCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 353
    iget-object p1, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$3;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$3$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$3$1;-><init>(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$3;)V

    .line 354
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/service/milk/login/UserInfoManager;->a(Lcom/samsung/android/app/music/service/milk/login/UserInfoReceiver;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 333
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;->onError(Ljava/lang/Throwable;)V

    .line 334
    invoke-static {}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->a()Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/net/observable/InitObservable;->f()V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$3;->b:Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;->a(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler;)Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;->a(Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl;Ljava/lang/Throwable;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 330
    check-cast p1, Lcom/samsung/android/app/music/model/basic/StartClientModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/network/init/StartClientProviderServiceImpl$StartClientHandler$3;->a(Lcom/samsung/android/app/music/model/basic/StartClientModel;)V

    return-void
.end method
