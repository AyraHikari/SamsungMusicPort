.class Lcom/samsung/android/castingfindermanager/CastAdapter$1;
.super Lcom/samsung/android/oneconnect/external/interfaces/IContinuityListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/castingfindermanager/CastAdapter;->e()V
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

    .line 122
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$1;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-direct {p0}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p1, "CONTINUITY_PROVIDER_APP_ID"

    .line 125
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CastAdapter"

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", onResponse : result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isActive ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "IS_ACTIVE"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    const-string p2, "IS_ACTIVE"

    .line 127
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "CONTINUITY_PROVIDER_ID"

    .line 128
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 129
    sget-object p3, Lcom/samsung/android/castingfindermanager/CastAdapter;->a:Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;

    invoke-interface {p3, p2}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityService;->getContinuityDevices(Ljava/lang/String;)Ljava/util/List;

    move-result-object p3

    const-string v0, "CastAdapter"

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    continuityDeviceList : size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuityDevice;

    .line 132
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$1;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-virtual {v6}, Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuityDevice;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/castingfindermanager/CastAdapter;->a(Lcom/samsung/android/castingfindermanager/CastAdapter;Ljava/lang/String;)Lcom/samsung/android/oneconnect/external/Device;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "CastAdapter"

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    new-instance v7, Lcom/samsung/android/castingfindermanager/CastDevice;

    invoke-virtual {v0}, Lcom/samsung/android/oneconnect/external/Device;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/oneconnect/external/Device;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/samsung/android/oneconnect/external/Device;->c()I

    move-result v5

    move-object v0, v7

    move-object v1, p2

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/castingfindermanager/CastDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$1;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {v0}, Lcom/samsung/android/castingfindermanager/CastAdapter;->a(Lcom/samsung/android/castingfindermanager/CastAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/samsung/android/oneconnect/external/domain/continuity/ContinuityDevice;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method
