.class Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/FutureTask;

.field final synthetic b:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic c:Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;Ljava/util/concurrent/FutureTask;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$2;->c:Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;

    iput-object p2, p0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$2;->a:Ljava/util/concurrent/FutureTask;

    iput-object p3, p0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$2;->b:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$2;->c:Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;->a(Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;Z)Z

    const/4 v0, 0x0

    .line 70
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$2;->a:Ljava/util/concurrent/FutureTask;

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$2;->b:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 75
    iget-object v1, p0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$2;->c:Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;->a(Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;Z)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 72
    :try_start_1
    invoke-static {}, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exception !"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 74
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$2;->b:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 75
    iget-object v2, p0, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor$2;->c:Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;

    invoke-static {v2, v0}, Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;->a(Lcom/samsung/android/app/music/som/HeadsetPlugReceiver$SomExecutor;Z)Z

    throw v1
.end method
