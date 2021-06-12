.class Lcom/facebook/ProgressNoopOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/RequestOutputStream;


# instance fields
.field private batchMax:I

.field private final callbackHandler:Landroid/os/Handler;

.field private currentRequest:Lcom/facebook/GraphRequest;

.field private currentRequestProgress:Lcom/facebook/RequestProgress;

.field private final progressMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/GraphRequest;",
            "Lcom/facebook/RequestProgress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->progressMap:Ljava/util/Map;

    .line 38
    iput-object p1, p0, Lcom/facebook/ProgressNoopOutputStream;->callbackHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method addProgress(J)V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->currentRequestProgress:Lcom/facebook/RequestProgress;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Lcom/facebook/RequestProgress;

    iget-object v1, p0, Lcom/facebook/ProgressNoopOutputStream;->callbackHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/ProgressNoopOutputStream;->currentRequest:Lcom/facebook/GraphRequest;

    invoke-direct {v0, v1, v2}, Lcom/facebook/RequestProgress;-><init>(Landroid/os/Handler;Lcom/facebook/GraphRequest;)V

    iput-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->currentRequestProgress:Lcom/facebook/RequestProgress;

    .line 58
    iget-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->progressMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/facebook/ProgressNoopOutputStream;->currentRequest:Lcom/facebook/GraphRequest;

    iget-object v2, p0, Lcom/facebook/ProgressNoopOutputStream;->currentRequestProgress:Lcom/facebook/RequestProgress;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->currentRequestProgress:Lcom/facebook/RequestProgress;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/RequestProgress;->addToMax(J)V

    .line 62
    iget v0, p0, Lcom/facebook/ProgressNoopOutputStream;->batchMax:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int p1, v0

    iput p1, p0, Lcom/facebook/ProgressNoopOutputStream;->batchMax:I

    return-void
.end method

.method getMaxProgress()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/facebook/ProgressNoopOutputStream;->batchMax:I

    return v0
.end method

.method getProgressMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/facebook/GraphRequest;",
            "Lcom/facebook/RequestProgress;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->progressMap:Ljava/util/Map;

    return-object v0
.end method

.method public setCurrentRequest(Lcom/facebook/GraphRequest;)V
    .locals 1

    .line 42
    iput-object p1, p0, Lcom/facebook/ProgressNoopOutputStream;->currentRequest:Lcom/facebook/GraphRequest;

    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/facebook/ProgressNoopOutputStream;->progressMap:Ljava/util/Map;

    .line 44
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/RequestProgress;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/facebook/ProgressNoopOutputStream;->currentRequestProgress:Lcom/facebook/RequestProgress;

    return-void
.end method

.method public write(I)V
    .locals 2

    const-wide/16 v0, 0x1

    .line 77
    invoke-virtual {p0, v0, v1}, Lcom/facebook/ProgressNoopOutputStream;->addProgress(J)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 67
    array-length p1, p1

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ProgressNoopOutputStream;->addProgress(J)V

    return-void
.end method

.method public write([BII)V
    .locals 0

    int-to-long p1, p3

    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ProgressNoopOutputStream;->addProgress(J)V

    return-void
.end method
