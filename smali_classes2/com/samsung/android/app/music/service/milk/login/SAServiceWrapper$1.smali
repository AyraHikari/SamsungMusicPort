.class Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$1;
.super Lcom/msc/sa/aidl/ISACallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$1;->a:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;

    invoke-direct {p0}, Lcom/msc/sa/aidl/ISACallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveAccessToken(IZLandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "SAServiceWrapper"

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveAccessToken() isSuccess : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ResultData : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$1;->a:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;

    iget-object p1, p1, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->release()V

    .line 107
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$1;->a:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->a(Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;)Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$OnReceiveAccessTokenListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$1;->a:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->a(Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;)Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$OnReceiveAccessTokenListener;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/service/milk/SABundle;

    invoke-direct {v0, p3}, Lcom/samsung/android/app/music/service/milk/SABundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$OnReceiveAccessTokenListener;->a(ZLcom/samsung/android/app/music/service/milk/SABundle;)V

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$1;->a:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->c(Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;)Lcom/msc/sa/aidl/ISAService;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$1;->a:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;

    invoke-static {p2}, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->b(Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/msc/sa/aidl/ISAService;->unregisterCallback(Ljava/lang/String;)Z

    return-void
.end method
