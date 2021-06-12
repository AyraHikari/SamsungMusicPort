.class Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer$OnTimeOutCallback;


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

    .line 114
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$2;->a:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "SAServiceWrapper"

    const-string v1, "onReceiveAccessToken is not received /timeout : 8sec"

    .line 117
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$2;->a:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->a(Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;)Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$OnReceiveAccessTokenListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "error_code"

    const-string v2, "SAC_TIMEOUT"

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "error_message"

    const-string v2, "onReceiveAccessToken is not received(timeout)"

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$2;->a:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->a(Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;)Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$OnReceiveAccessTokenListener;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/app/music/service/milk/SABundle;

    invoke-direct {v3, v0}, Lcom/samsung/android/app/music/service/milk/SABundle;-><init>(Landroid/os/Bundle;)V

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$OnReceiveAccessTokenListener;->a(ZLcom/samsung/android/app/music/service/milk/SABundle;)V

    .line 126
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$2;->a:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->c(Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;)Lcom/msc/sa/aidl/ISAService;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$2;->a:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->b(Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/msc/sa/aidl/ISAService;->unregisterCallback(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
