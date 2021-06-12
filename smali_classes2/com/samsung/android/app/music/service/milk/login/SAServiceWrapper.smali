.class public Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$OnReceiveAccessTokenListener;
    }
.end annotation


# instance fields
.field a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;

.field private final b:Landroid/content/Context;

.field private c:Lcom/msc/sa/aidl/ISAService;

.field private d:Ljava/lang/String;

.field private e:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$OnReceiveAccessTokenListener;

.field private f:Lcom/msc/sa/aidl/ISACallback$Stub;

.field private g:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$1;-><init>(Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->f:Lcom/msc/sa/aidl/ISACallback$Stub;

    .line 114
    new-instance v0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;

    new-instance v1, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$2;-><init>(Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer$OnTimeOutCallback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;

    .line 133
    new-instance v0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$3;-><init>(Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->g:Landroid/content/ServiceConnection;

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->b:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->c()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->c:Lcom/msc/sa/aidl/ISAService;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;)Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$OnReceiveAccessTokenListener;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->e:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$OnReceiveAccessTokenListener;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;)Lcom/msc/sa/aidl/ISAService;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->c:Lcom/msc/sa/aidl/ISAService;

    return-object p0
.end method

.method private c()V
    .locals 4

    const-string v0, "SAServiceWrapper"

    const-string v1, "bindSAService is called"

    .line 44
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.msc.action.samsungaccount.REQUEST_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.osp.app.signin"

    const-string v2, "com.msc.sa.service.RequestService"

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->g:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/app/music/service/milk/exception/SACallbackException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->c()V

    .line 66
    new-instance v0, Lcom/samsung/android/app/music/service/milk/exception/SACallbackException;

    const-string v1, "SA service is not connected!"

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/service/milk/exception/SACallbackException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->g:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$OnReceiveAccessTokenListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lcom/samsung/android/app/music/service/milk/exception/SACallbackException;
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->d()V

    .line 76
    iput-object p2, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->e:Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper$OnReceiveAccessTokenListener;

    .line 77
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "api_server_url"

    const-string v1, "birthday"

    const-string v2, "user_id"

    .line 78
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "additional"

    .line 80
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "expired_access_token"

    .line 82
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->c:Lcom/msc/sa/aidl/ISAService;

    const-string v0, "12yndwlwd1"

    const-string v1, "C548D30428E8D901492340A08A969617"

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->b:Landroid/content/Context;

    .line 85
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->f:Lcom/msc/sa/aidl/ISACallback$Stub;

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/msc/sa/aidl/ISAService;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SAServiceWrapper"

    const-string v1, "getSABundle registerCallback try first"

    .line 87
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 89
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->c:Lcom/msc/sa/aidl/ISAService;

    const-string v0, "12yndwlwd1"

    const-string v1, "C548D30428E8D901492340A08A969617"

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->b:Landroid/content/Context;

    .line 90
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->f:Lcom/msc/sa/aidl/ISACallback$Stub;

    .line 89
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/msc/sa/aidl/ISAService;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SAServiceWrapper"

    const-string v1, "getSABundle registerCallback try second"

    .line 91
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->d:Ljava/lang/String;

    const-string v0, "SAServiceWrapper"

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSABundle registrationCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->c:Lcom/msc/sa/aidl/ISAService;

    const/16 v0, 0x3039

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->d:Ljava/lang/String;

    invoke-interface {p1, v0, v1, p2}, Lcom/msc/sa/aidl/ISAService;->requestAccessToken(ILjava/lang/String;Landroid/os/Bundle;)Z

    .line 97
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->a:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->a()V

    return-void

    .line 73
    :cond_2
    new-instance p1, Lcom/samsung/android/app/music/service/milk/exception/SACallbackException;

    const-string p2, "AccessTokenListener is null. It shoudn\'t be null!"

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/service/milk/exception/SACallbackException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/SAServiceWrapper;->c:Lcom/msc/sa/aidl/ISAService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
