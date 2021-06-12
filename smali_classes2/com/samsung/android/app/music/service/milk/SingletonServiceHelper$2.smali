.class Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;Landroid/os/Looper;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 213
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 214
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    monitor-enter p1

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->n()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() unbindService handler. connections - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    .line 217
    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->c(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->e(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)I

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->c(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;I)I

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->d(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 227
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->n()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() unbound. connections - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$2;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-static {v2}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->c(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
