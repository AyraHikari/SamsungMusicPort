.class Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$6;
.super Lcom/samsung/android/app/music/util/rx/SubscriberAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->j()V
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
.field final synthetic a:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;)V
    .locals 0

    .line 345
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$6;->a:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    invoke-direct {p0}, Lcom/samsung/android/app/music/util/rx/SubscriberAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .line 348
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/util/rx/SubscriberAdapter;->onNext(Ljava/lang/Object;)V

    .line 350
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$6;->a:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->d(Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;)Lcom/samsung/android/app/music/service/milk/IMilkService;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$6;->a:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->c(Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;)I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/music/service/milk/IMilkService;->requestLogin(IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 352
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 345
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$6;->a(Ljava/lang/Boolean;)V

    return-void
.end method
