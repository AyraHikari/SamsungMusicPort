.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    if-ge p1, v0, :cond_0

    .line 22
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    .line 24
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    goto :goto_0

    .line 26
    :cond_1
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method public a(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "QueueManager"

    const-string v1, "queue size over. remove oldest log"

    .line 32
    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    .line 34
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->a:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
