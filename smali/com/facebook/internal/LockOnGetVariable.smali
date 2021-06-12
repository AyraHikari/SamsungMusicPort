.class public Lcom/facebook/internal/LockOnGetVariable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private initLatch:Ljava/util/concurrent/CountDownLatch;

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/internal/LockOnGetVariable;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/internal/LockOnGetVariable;->initLatch:Ljava/util/concurrent/CountDownLatch;

    .line 39
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/facebook/internal/LockOnGetVariable$1;

    invoke-direct {v2, p0, p1}, Lcom/facebook/internal/LockOnGetVariable$1;-><init>(Lcom/facebook/internal/LockOnGetVariable;Ljava/util/concurrent/Callable;)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$002(Lcom/facebook/internal/LockOnGetVariable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/facebook/internal/LockOnGetVariable;->value:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/facebook/internal/LockOnGetVariable;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/facebook/internal/LockOnGetVariable;->initLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method private waitOnInit()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/facebook/internal/LockOnGetVariable;->initLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_0

    return-void

    .line 64
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/internal/LockOnGetVariable;->initLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/facebook/internal/LockOnGetVariable;->waitOnInit()V

    .line 55
    iget-object v0, p0, Lcom/facebook/internal/LockOnGetVariable;->value:Ljava/lang/Object;

    return-object v0
.end method
