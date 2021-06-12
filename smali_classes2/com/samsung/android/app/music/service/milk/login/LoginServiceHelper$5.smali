.class Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$5;
.super Lcom/samsung/android/app/music/util/rx/SubscriberAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/util/rx/SubscriberAdapter<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;Ljava/lang/String;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$5;->b:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    iput-object p2, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/app/music/util/rx/SubscriberAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 3

    .line 333
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/util/rx/SubscriberAdapter;->onNext(Ljava/lang/Object;)V

    .line 335
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$5;->b:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->d(Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;)Lcom/samsung/android/app/music/service/milk/IMilkService;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$5;->b:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->c(Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$5;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/IMilkService;->updateUserInfo(ILjava/lang/String;Lcom/samsung/android/app/music/model/PushInfo;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 337
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 330
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$5;->a(Ljava/lang/Boolean;)V

    return-void
.end method
