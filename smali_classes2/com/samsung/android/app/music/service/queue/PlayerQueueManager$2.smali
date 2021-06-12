.class Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->onCustomEvent(I[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$2;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 480
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$2;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->c(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->e(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    const-wide/16 v2, 0x1f4

    .line 482
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    move v0, v1

    goto :goto_0

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$2;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    .line 485
    invoke-static {v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->c(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->e(Landroid/content/Context;)Z

    move-result v0

    .line 484
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 486
    iget-object v1, p0, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager$2;->a:Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;

    invoke-static {v1, v0}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a(Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 488
    invoke-static {}, Lcom/samsung/android/app/music/service/queue/PlayerQueueManager;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CHANGED_NETWORK Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
