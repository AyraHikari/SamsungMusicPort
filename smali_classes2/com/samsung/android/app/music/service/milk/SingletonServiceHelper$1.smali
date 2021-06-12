.class Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


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
.method constructor <init>(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceConnected() connected"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-static {v0, p2}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 191
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->c(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)I

    move-result v1

    if-gtz v1, :cond_0

    .line 193
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-static {p2}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->d(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)Landroid/content/ServiceConnection;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 194
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->n()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onServiceConnected() already unbinded!"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->f()V

    .line 196
    monitor-exit v0

    return-void

    .line 198
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a(Landroid/os/IBinder;)V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 203
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    .line 204
    invoke-interface {v2, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    .line 206
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 198
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onServiceDisconnected() disconnected. try to rebinding"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->a(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    .line 176
    invoke-interface {v2, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 178
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->c()V

    .line 182
    iget-object p1, p0, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper$1;->a:Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;->b(Lcom/samsung/android/app/music/service/milk/SingletonServiceHelper;)V

    return-void

    :catchall_0
    move-exception p1

    .line 178
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
