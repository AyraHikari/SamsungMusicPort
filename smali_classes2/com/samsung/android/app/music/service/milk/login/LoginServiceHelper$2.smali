.class Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$2;
.super Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$2;->a:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    invoke-direct {p0}, Lcom/samsung/android/app/music/service/milk/IMilkServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceResult(IIILandroid/content/Intent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$2;->a:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->b(Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$2;->a:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    invoke-static {v1, p4}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->a(Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;Landroid/content/Intent;)V

    .line 176
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$2;->a:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    invoke-virtual {v1, p1, p2, p4}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->a(IILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$2;->a:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->a(Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceResult() onServiceResult : reqID - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", reqType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", rspType - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "reason - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper$2;->a:Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/samsung/android/app/music/service/milk/login/LoginServiceHelper;->a(IIILandroid/content/Intent;)V

    .line 186
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
