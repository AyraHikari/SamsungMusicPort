.class Lcom/facebook/RequestProgress;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final callbackHandler:Landroid/os/Handler;

.field private lastReportedProgress:J

.field private maxProgress:J

.field private progress:J

.field private final request:Lcom/facebook/GraphRequest;

.field private final threshold:J


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/facebook/GraphRequest;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/facebook/RequestProgress;->request:Lcom/facebook/GraphRequest;

    .line 34
    iput-object p1, p0, Lcom/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    .line 36
    invoke-static {}, Lcom/facebook/FacebookSdk;->getOnProgressThreshold()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/facebook/RequestProgress;->threshold:J

    return-void
.end method


# virtual methods
.method addProgress(J)V
    .locals 4

    .line 48
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    .line 50
    iget-wide p1, p0, Lcom/facebook/RequestProgress;->progress:J

    iget-wide v0, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    iget-wide v2, p0, Lcom/facebook/RequestProgress;->threshold:J

    add-long/2addr v0, v2

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    iget-wide p1, p0, Lcom/facebook/RequestProgress;->progress:J

    iget-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    cmp-long p1, p1, v0

    if-ltz p1, :cond_1

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/RequestProgress;->reportProgress()V

    :cond_1
    return-void
.end method

.method addToMax(J)V
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    return-void
.end method

.method getMaxProgress()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    return-wide v0
.end method

.method getProgress()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    return-wide v0
.end method

.method reportProgress()V
    .locals 9

    .line 60
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    iget-wide v2, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/facebook/RequestProgress;->request:Lcom/facebook/GraphRequest;

    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->getCallback()Lcom/facebook/GraphRequest$Callback;

    move-result-object v0

    .line 62
    iget-wide v1, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    instance-of v1, v0, Lcom/facebook/GraphRequest$OnProgressCallback;

    if-eqz v1, :cond_1

    .line 64
    iget-wide v5, p0, Lcom/facebook/RequestProgress;->progress:J

    .line 65
    iget-wide v7, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    .line 66
    move-object v4, v0

    check-cast v4, Lcom/facebook/GraphRequest$OnProgressCallback;

    .line 68
    iget-object v0, p0, Lcom/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 69
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/facebook/GraphRequest$OnProgressCallback;->onProgress(JJ)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/RequestProgress$1;

    move-object v2, v1

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/facebook/RequestProgress$1;-><init>(Lcom/facebook/RequestProgress;Lcom/facebook/GraphRequest$OnProgressCallback;JJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    :goto_0
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    iput-wide v0, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    :cond_1
    return-void
.end method
