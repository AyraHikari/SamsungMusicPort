.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$connCallback$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$connCallback$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder$connCallback$2$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    .line 92
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    const-string v1, "onBindingDied"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->printLog(Ljava/lang/String;)V

    .line 94
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    const/4 v1, 0x0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->access$setIPlayerService$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService;)V

    .line 95
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->access$setRegistered$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;Z)V

    .line 96
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->access$getBindMap$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 241
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ServiceConnection;

    invoke-interface {v1, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    .line 100
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    const-string v0, "onNullBinding"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 70
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected registered?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->access$getRegistered$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->printLog(Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->access$setIPlayerService$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService;)V

    .line 72
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->access$getRegistered$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 74
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->access$getIPlayerService$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 75
    :cond_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->access$registerIPlayerChangedCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;)V

    .line 76
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->access$getPlayerChangedCallbacks$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 77
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->getPlayers()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->access$notifyPlayerChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;Ljava/util/List;)V

    .line 80
    :cond_2
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->access$getBindMap$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 237
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 80
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ServiceConnection;

    invoke-interface {v1, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 84
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    const-string v1, "onServiceDisconnected"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->printLog(Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    const/4 v1, 0x0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->access$setIPlayerService$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/IPlayerService;)V

    .line 87
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->access$setRegistered$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;Z)V

    .line 88
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;->access$getBindMap$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerServiceBinder;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 239
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 88
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ServiceConnection;

    invoke-interface {v1, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    return-void
.end method
