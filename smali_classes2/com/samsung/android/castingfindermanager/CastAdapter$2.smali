.class Lcom/samsung/android/castingfindermanager/CastAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/castingfindermanager/CastAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/castingfindermanager/CastAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/castingfindermanager/CastAdapter;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$2;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "CastAdapter"

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected - isBindingRequested : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$2;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {v1}, Lcom/samsung/android/castingfindermanager/CastAdapter;->b(Lcom/samsung/android/castingfindermanager/CastAdapter;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$2;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/CastAdapter;->b(Lcom/samsung/android/castingfindermanager/CastAdapter;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 153
    invoke-static {p2}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/castingfindermanager/CastAdapter;->a:Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;

    .line 155
    :try_start_0
    sget-object p1, Lcom/samsung/android/castingfindermanager/CastAdapter;->a:Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;

    iget-object p2, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$2;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {p2}, Lcom/samsung/android/castingfindermanager/CastAdapter;->c(Lcom/samsung/android/castingfindermanager/CastAdapter;)Lcom/samsung/android/oneconnect/external/interfaces/ISignInListener;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;->registerSignInListener(Lcom/samsung/android/oneconnect/external/interfaces/ISignInListener;)V

    .line 156
    sget-object p1, Lcom/samsung/android/castingfindermanager/CastAdapter;->a:Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;

    const/4 p2, 0x1

    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$2;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/CastAdapter;->d(Lcom/samsung/android/castingfindermanager/CastAdapter;)Lcom/samsung/android/oneconnect/external/interfaces/IDeviceListener;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;->registerDeviceListener(ILcom/samsung/android/oneconnect/external/interfaces/IDeviceListener;)V

    .line 157
    sget-object p1, Lcom/samsung/android/castingfindermanager/CastAdapter;->a:Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;

    invoke-interface {p1}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;->isSignedIn()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$2;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/CastAdapter;->e(Lcom/samsung/android/castingfindermanager/CastAdapter;)V

    .line 159
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$2;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/CastAdapter;->a(Lcom/samsung/android/castingfindermanager/CastAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 160
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$2;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/CastAdapter;->f(Lcom/samsung/android/castingfindermanager/CastAdapter;)Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;->a(I)V

    goto :goto_0

    :cond_0
    const-string p1, "CastAdapter"

    const-string p2, "SmartThings\'s cloud is not signed."

    .line 163
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "CastAdapter"

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string p1, "CastAdapter"

    const-string v0, "onServiceDisconnected"

    .line 173
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :try_start_0
    sget-object p1, Lcom/samsung/android/castingfindermanager/CastAdapter;->a:Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;

    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$2;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/CastAdapter;->d(Lcom/samsung/android/castingfindermanager/CastAdapter;)Lcom/samsung/android/oneconnect/external/interfaces/IDeviceListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;->unregisterDeviceListener(Lcom/samsung/android/oneconnect/external/interfaces/IDeviceListener;)V

    .line 176
    sget-object p1, Lcom/samsung/android/castingfindermanager/CastAdapter;->a:Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;

    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$2;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/CastAdapter;->c(Lcom/samsung/android/castingfindermanager/CastAdapter;)Lcom/samsung/android/oneconnect/external/interfaces/ISignInListener;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;->unregisterSignInListener(Lcom/samsung/android/oneconnect/external/interfaces/ISignInListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "CastAdapter"

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    .line 180
    sput-object p1, Lcom/samsung/android/castingfindermanager/CastAdapter;->a:Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;

    .line 181
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$2;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/CastAdapter;->a(Lcom/samsung/android/castingfindermanager/CastAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$2;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/CastAdapter;->a(Lcom/samsung/android/castingfindermanager/CastAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 183
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$2;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/CastAdapter;->f(Lcom/samsung/android/castingfindermanager/CastAdapter;)Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;->a(I)V

    :cond_0
    return-void
.end method
