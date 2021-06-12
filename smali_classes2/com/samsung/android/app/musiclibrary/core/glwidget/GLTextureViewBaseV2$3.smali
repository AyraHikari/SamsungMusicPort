.class Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mLastActiveTime:J

.field private mLastRenderTime:J

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private waitNextFrameTime(ZZ)V
    .locals 6

    .line 214
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 215
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$700(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->mLastRenderTime:J

    const-wide/16 v4, 0xa

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 224
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    :cond_0
    if-eqz p2, :cond_1

    .line 229
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->mLastRenderTime:J

    :cond_1
    if-eqz p1, :cond_2

    .line 233
    iput-wide v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->mLastActiveTime:J

    .line 237
    :cond_2
    iget-wide p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->mLastActiveTime:J

    sub-long/2addr v0, p1

    const-wide/16 p1, 0xfa

    cmp-long p1, v0, p1

    if-lez p1, :cond_3

    .line 239
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$300(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "goto sleep"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadLock:Ljava/lang/Object;

    monitor-enter p1

    .line 242
    :try_start_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    iget-object p2, p2, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->mRenderingThreadLock:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 246
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 174
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$300(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "enter rendering cycle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$400(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$500(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 210
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$300(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "finish rendering cycle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 176
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->receiveEvent()Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 178
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->handleRenderingEvent(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$Event;)V

    .line 181
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$600(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 187
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$700(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-wide/16 v4, 0x11

    .line 190
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$800(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)J

    move-result-wide v6

    const-wide/16 v8, 0x8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_4

    const-wide/16 v6, 0xa

    cmp-long v6, v4, v6

    if-gez v6, :cond_4

    .line 192
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    :cond_4
    if-ltz v1, :cond_6

    .line 197
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->handleRequestRender()V

    goto :goto_2

    .line 200
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->handleRequestRender()V

    :cond_6
    :goto_2
    const/4 v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_9

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    .line 206
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;->access$400(Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-direct {p0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLTextureViewBaseV2$3;->waitNextFrameTime(ZZ)V

    goto/16 :goto_0
.end method
