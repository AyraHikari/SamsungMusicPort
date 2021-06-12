.class Lcom/samsung/android/castingfindermanager/CastAdapter$4$1;
.super Lcom/samsung/android/oneconnect/external/interfaces/IContinuityListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/castingfindermanager/CastAdapter$4;->onDeviceAdded(Lcom/samsung/android/oneconnect/external/Device;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/oneconnect/external/Device;

.field final synthetic b:Lcom/samsung/android/castingfindermanager/CastAdapter$4;


# direct methods
.method constructor <init>(Lcom/samsung/android/castingfindermanager/CastAdapter$4;Lcom/samsung/android/oneconnect/external/Device;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$4$1;->b:Lcom/samsung/android/castingfindermanager/CastAdapter$4;

    iput-object p2, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$4$1;->a:Lcom/samsung/android/oneconnect/external/Device;

    invoke-direct {p0}, Lcom/samsung/android/oneconnect/external/interfaces/IContinuityListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 6

    const-string p1, "CONTINUITY_PROVIDER_APP_ID"

    .line 233
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "CastAdapter"

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", onResponse : result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isActive ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "IS_ACTIVE"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string p1, "IS_ACTIVE"

    .line 235
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CONTINUITY_PROVIDER_ID"

    .line 236
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 237
    new-instance p2, Lcom/samsung/android/castingfindermanager/CastDevice;

    iget-object p3, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$4$1;->a:Lcom/samsung/android/oneconnect/external/Device;

    invoke-virtual {p3}, Lcom/samsung/android/oneconnect/external/Device;->b()Ljava/lang/String;

    move-result-object v3

    iget-object p3, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$4$1;->a:Lcom/samsung/android/oneconnect/external/Device;

    invoke-virtual {p3}, Lcom/samsung/android/oneconnect/external/Device;->a()Ljava/lang/String;

    move-result-object v4

    iget-object p3, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$4$1;->a:Lcom/samsung/android/oneconnect/external/Device;

    invoke-virtual {p3}, Lcom/samsung/android/oneconnect/external/Device;->c()I

    move-result v5

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/castingfindermanager/CastDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 238
    iget-object p3, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$4$1;->b:Lcom/samsung/android/castingfindermanager/CastAdapter$4;

    iget-object p3, p3, Lcom/samsung/android/castingfindermanager/CastAdapter$4;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {p3}, Lcom/samsung/android/castingfindermanager/CastAdapter;->a(Lcom/samsung/android/castingfindermanager/CastAdapter;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$4$1;->a:Lcom/samsung/android/oneconnect/external/Device;

    invoke-virtual {v1}, Lcom/samsung/android/oneconnect/external/Device;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object p1, p0, Lcom/samsung/android/castingfindermanager/CastAdapter$4$1;->b:Lcom/samsung/android/castingfindermanager/CastAdapter$4;

    iget-object p1, p1, Lcom/samsung/android/castingfindermanager/CastAdapter$4;->a:Lcom/samsung/android/castingfindermanager/CastAdapter;

    invoke-static {p1}, Lcom/samsung/android/castingfindermanager/CastAdapter;->f(Lcom/samsung/android/castingfindermanager/CastAdapter;)Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/castingfindermanager/CastAdapter$CastHandler;->a(I)V

    :cond_0
    return-void
.end method
