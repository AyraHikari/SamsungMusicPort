.class Lcom/samsung/android/castingfindermanager/CastAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/oneconnect/external/interfaces/IDeviceListener;


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

    .line 217
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$4;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onDeviceAdded(Lcom/samsung/android/oneconnect/external/Device;)V
    .locals 5

    const-string v0, "CastAdapter"

    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceAdded = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 223
    :try_start_0
    sget-object v1, Lcom/samsung/android/castingfindermanager/CastAdapter;->a:Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;

    invoke-virtual {p1}, Lcom/samsung/android/oneconnect/external/Device;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;->getContinuityProvidersFromDevice(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "CastAdapter"

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDeviceAdded : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
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

    .line 230
    :try_start_1
    sget-object v2, Lcom/samsung/android/castingfindermanager/CastAdapter;->a:Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;

    new-instance v3, Lcom/samsung/android/castingfindermanager/CastAdapter$4$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/castingfindermanager/CastAdapter$4$1;-><init>(Lcom/samsung/android/castingfindermanager/CastAdapter$4;Lcom/samsung/android/oneconnect/external/Device;)V

    invoke-interface {v2, v1, v3}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;->getUserState(Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuityProvider;Lcom/samsung/android/oneconnect/external/interfaces/IContinuityListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "CastAdapter"

    .line 244
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

.method public onDeviceRemoved(Lcom/samsung/android/oneconnect/external/Device;)V
    .locals 3

    const-string v0, "CastAdapter"

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceRemoved = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$4;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/CastAdapter;->a(Lcom/samsung/android/castingfindermanager/CastAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/oneconnect/external/Device;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 264
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$4;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/CastAdapter;->f(Lcom/samsung/android/castingfindermanager/CastAdapter;)Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;->a(I)V

    :cond_0
    return-void
.end method

.method public onDeviceUpdated(Lcom/samsung/android/oneconnect/external/Device;)V
    .locals 3

    const-string v0, "CastAdapter"

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceUpdated = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$4;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/CastAdapter;->a(Lcom/samsung/android/castingfindermanager/CastAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/oneconnect/external/Device;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/castingfindermanager/CastDevice;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0, p1}, Lcom/samsung/android/castingfindermanager/CastDevice;->a(Lcom/samsung/android/oneconnect/external/Device;)V

    .line 255
    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$4;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {v1}, Lcom/samsung/android/castingfindermanager/CastAdapter;->a(Lcom/samsung/android/castingfindermanager/CastAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/oneconnect/external/Device;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$4;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/CastAdapter;->f(Lcom/samsung/android/castingfindermanager/CastAdapter;)Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;->a(I)V

    :cond_0
    return-void
.end method
