.class public Lcom/samsung/android/castingfindermanager/CastAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;,
        Lcom/samsung/android/castingfindermanager/CastAdapter$CastDeviceFinderListener;
    }
.end annotation


# static fields
.field static a:Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/castingfindermanager/CastDevice;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Landroid/content/ServiceConnection;

.field private g:Lcom/samsung/android/oneconnect/external/interfaces/ISignInListener;

.field private h:Lcom/samsung/android/oneconnect/external/interfaces/IDeviceListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->e:Z

    .line 148
    new-instance v0, Lcom/samsung/android/castingfindermanager/CastAdapter$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/castingfindermanager/CastAdapter$2;-><init>(Lcom/samsung/android/castingfindermanager/CastAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->f:Landroid/content/ServiceConnection;

    .line 188
    new-instance v0, Lcom/samsung/android/castingfindermanager/CastAdapter$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/castingfindermanager/CastAdapter$3;-><init>(Lcom/samsung/android/castingfindermanager/CastAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->g:Lcom/samsung/android/oneconnect/external/interfaces/ISignInListener;

    .line 217
    new-instance v0, Lcom/samsung/android/castingfindermanager/CastAdapter$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/castingfindermanager/CastAdapter$4;-><init>(Lcom/samsung/android/castingfindermanager/CastAdapter;)V

    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->h:Lcom/samsung/android/oneconnect/external/interfaces/IDeviceListener;

    .line 44
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/castingfindermanager/CastAdapter;Ljava/lang/String;)Lcom/samsung/android/oneconnect/external/Device;
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/castingfindermanager/CastAdapter;->a(Ljava/lang/String;)Lcom/samsung/android/oneconnect/external/Device;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Lcom/samsung/android/oneconnect/external/Device;
    .locals 3

    .line 99
    :try_start_0
    sget-object v0, Lcom/samsung/android/castingfindermanager/CastAdapter;->a:Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;->getDevices(I)Ljava/util/List;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/oneconnect/external/Device;

    .line 101
    invoke-virtual {v1}, Lcom/samsung/android/oneconnect/external/Device;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return-object v1

    :catch_0
    move-exception p1

    const-string v0, "CastAdapter"

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceFromContinuityDeviceId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/castingfindermanager/CastAdapter;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/castingfindermanager/CastAdapter;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->e:Z

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/castingfindermanager/CastAdapter;)Lcom/samsung/android/oneconnect/external/interfaces/ISignInListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->g:Lcom/samsung/android/oneconnect/external/interfaces/ISignInListener;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/castingfindermanager/CastAdapter;)Lcom/samsung/android/oneconnect/external/interfaces/IDeviceListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->h:Lcom/samsung/android/oneconnect/external/interfaces/IDeviceListener;

    return-object p0
.end method

.method private e()V
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 115
    :try_start_0
    sget-object v1, Lcom/samsung/android/castingfindermanager/CastAdapter;->a:Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;

    invoke-interface {v1}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;->getContinuityProviders()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CastAdapter"

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCastDeviceListFromServer : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuityProvider;

    .line 122
    :try_start_1
    sget-object v2, Lcom/samsung/android/castingfindermanager/CastAdapter;->a:Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;

    new-instance v3, Lcom/samsung/android/castingfindermanager/CastAdapter$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/castingfindermanager/CastAdapter$1;-><init>(Lcom/samsung/android/castingfindermanager/CastAdapter;)V

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;->getUserState(Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuityProvider;Lcom/samsung/android/oneconnect/external/interfaces/IContinuityListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "CastAdapter"

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/samsung/android/castingfindermanager/CastAdapter;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/castingfindermanager/CastAdapter;->e()V

    return-void
.end method

.method static synthetic f(Lcom/samsung/android/castingfindermanager/CastAdapter;)Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->c:Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/os/Handler;)V
    .locals 1

    .line 82
    new-instance v0, Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;-><init>(Lcom/samsung/android/castingfindermanager/CastAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->c:Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;

    return-void
.end method

.method public a(Lcom/samsung/android/castingfindermanager/CastAdapter$CastDeviceFinderListener;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->c:Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;

    invoke-virtual {v0, p1}, Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;->a(Lcom/samsung/android/castingfindermanager/CastAdapter$CastDeviceFinderListener;)V

    return-void
.end method

.method public a()Z
    .locals 4

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->e:Z

    .line 49
    sget-object v1, Lcom/samsung/android/castingfindermanager/CastAdapter;->a:Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;

    if-nez v1, :cond_0

    const-string v1, "CastAdapter"

    const-string v2, "bindService"

    .line 50
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.oneconnect.action.START_SMARTTHINGS_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.oneconnect"

    const-string v3, "com.samsung.android.oneconnect.external.ContinuityService"

    .line 52
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v2, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0

    :cond_0
    const-string v1, "CastAdapter"

    const-string v2, "Already bind service to SmartThings"

    .line 55
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->e:Z

    .line 62
    sget-object v0, Lcom/samsung/android/castingfindermanager/CastAdapter;->a:Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;

    if-eqz v0, :cond_0

    const-string v0, "CastAdapter"

    const-string v1, "unbindService"

    .line 63
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 66
    sget-object v0, Lcom/samsung/android/castingfindermanager/CastAdapter;->a:Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->h:Lcom/samsung/android/oneconnect/external/interfaces/IDeviceListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;->unregisterDeviceListener(Lcom/samsung/android/oneconnect/external/interfaces/IDeviceListener;)V

    .line 67
    sget-object v0, Lcom/samsung/android/castingfindermanager/CastAdapter;->a:Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->g:Lcom/samsung/android/oneconnect/external/interfaces/ISignInListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;->unregisterSignInListener(Lcom/samsung/android/oneconnect/external/interfaces/ISignInListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "CastAdapter"

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unbindService : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    .line 71
    sput-object v0, Lcom/samsung/android/castingfindermanager/CastAdapter;->a:Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;

    .line 72
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 74
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->c:Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;->a(I)V

    goto :goto_1

    :cond_0
    const-string v0, "CastAdapter"

    const-string v1, "Already unbind service to SmartThings"

    .line 77
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->c:Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;

    invoke-virtual {v0}, Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;->a()V

    return-void
.end method

.method public d()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/castingfindermanager/CastDevice;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method
