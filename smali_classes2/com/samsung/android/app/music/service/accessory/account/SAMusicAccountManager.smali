.class public Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountCallback;,
        Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SAMusicAccountManager"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountListener;

.field private d:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountCallback;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/msc/sa/aidl/ISAService;

.field private final i:Landroid/content/ServiceConnection;

.field private j:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountListener;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->e:Z

    .line 135
    new-instance v0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$1;-><init>(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->i:Landroid/content/ServiceConnection;

    .line 157
    new-instance v0, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;

    new-instance v1, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$2;-><init>(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;-><init>(Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer$OnTimeOutCallback;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->j:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;

    .line 40
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->a:Ljava/lang/String;

    const-string v1, "SAMusicAccountManager()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->b:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->c:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountListener;

    .line 44
    new-instance p1, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountCallback;-><init>(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->d:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountCallback;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;Lcom/msc/sa/aidl/ISAService;)Lcom/msc/sa/aidl/ISAService;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->h:Lcom/msc/sa/aidl/ISAService;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 3

    .line 60
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAccessToken(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->e:Z

    if-eqz v2, :cond_0

    const-string v2, "bound"

    goto :goto_0

    :cond_0
    const-string v2, "unbound"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-boolean v0, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->e:Z

    if-nez v0, :cond_1

    .line 62
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.msc.action.samsungaccount.REQUEST_SERVICE"

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.osp.app.signin"

    const-string v1, "com.msc.sa.service.RequestService"

    .line 64
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->i:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->e:Z

    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->g:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->d()V

    .line 76
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "api_server_url"

    const-string v1, "birthday"

    .line 77
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "additional"

    .line 78
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->j:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;->a()V

    .line 81
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->h:Lcom/msc/sa/aidl/ISAService;

    const/16 v1, 0x3039

    iget-object v2, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, Lcom/msc/sa/aidl/ISAService;->requestAccessToken(ILjava/lang/String;Landroid/os/Bundle;)Z

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    .line 83
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->a(Z)V

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 87
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestAccessToken(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->d()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;Landroid/os/Bundle;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->c:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountListener;

    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->b:Landroid/content/Context;

    .line 128
    invoke-static {v1}, Lcom/samsung/android/app/music/milk/util/MilkUtils;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 127
    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->c:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountListener;

    const-string v0, "dummy"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountListener;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->e()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;)Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->j:Lcom/samsung/android/app/music/bixby/v1/executor/player/global/PlayRequestTimer;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 5

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->h:Lcom/msc/sa/aidl/ISAService;

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->h:Lcom/msc/sa/aidl/ISAService;

    const-string v1, "12yndwlwd1"

    const-string v2, "C548D30428E8D901492340A08A969617"

    iget-object v3, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->b:Landroid/content/Context;

    .line 98
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->d:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountCallback;

    .line 97
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/msc/sa/aidl/ISAService;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->g:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->g:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->h:Lcom/msc/sa/aidl/ISAService;

    const-string v1, "12yndwlwd1"

    const-string v2, "C548D30428E8D901492340A08A969617"

    iget-object v3, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->b:Landroid/content/Context;

    .line 104
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->d:Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager$SamsungAccountCallback;

    .line 103
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/msc/sa/aidl/ISAService;->registerCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/msc/sa/aidl/ISACallback;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->g:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
    sget-object v1, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected() Exception using Samsung Account service:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->a:Ljava/lang/String;

    const-string v1, "registerSamsungAccountCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private e()V
    .locals 2

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->h:Lcom/msc/sa/aidl/ISAService;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->h:Lcom/msc/sa/aidl/ISAService;

    iget-object v1, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->g:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/msc/sa/aidl/ISAService;->unregisterCallback(Ljava/lang/String;)Z

    :cond_0
    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->g:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 120
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 122
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->a:Ljava/lang/String;

    const-string v1, "unregisterSamsungAccountCallback()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 48
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->a:Ljava/lang/String;

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b()V
    .locals 3

    .line 52
    sget-object v0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->a:Ljava/lang/String;

    const-string v1, "renewSamsungAccountToken()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "expired_access_token"

    .line 54
    iget-object v2, p0, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/service/accessory/account/SAMusicAccountManager;->a(Landroid/os/Bundle;)V

    return-void
.end method
