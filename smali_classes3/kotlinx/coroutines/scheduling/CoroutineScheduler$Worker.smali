.class public final Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/scheduling/CoroutineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Worker"
.end annotation


# static fields
.field private static final f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field final synthetic a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

.field private volatile b:I

.field private final c:Lkotlinx/coroutines/scheduling/WorkQueue;

.field private volatile d:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

.field private volatile e:I

.field private g:J

.field private volatile h:Ljava/lang/Object;

.field private i:J

.field private volatile j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    const-string v1, "e"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method private constructor <init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 603
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    .line 605
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setDaemon(Z)V

    .line 622
    new-instance v0, Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-direct {v0}, Lkotlinx/coroutines/scheduling/WorkQueue;-><init>()V

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->c:Lkotlinx/coroutines/scheduling/WorkQueue;

    .line 629
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->RETIRING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const/4 v0, 0x0

    .line 646
    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->e:I

    .line 660
    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->h:Ljava/lang/Object;

    .line 717
    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->d()I

    move-result v0

    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->k:I

    .line 719
    invoke-static {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)Ljava/util/Random;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Random;->nextInt()I

    move-result p1

    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:I

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 616
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;-><init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V

    .line 617
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a(I)V

    return-void
.end method

.method private final a(Lkotlinx/coroutines/scheduling/TaskMode;)V
    .locals 3

    .line 778
    sget-object v0, Lkotlinx/coroutines/scheduling/TaskMode;->NON_BLOCKING:Lkotlinx/coroutines/scheduling/TaskMode;

    if-eq p1, v0, :cond_3

    .line 779
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 1024
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v1, -0x200000

    invoke-virtual {v0, p1, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 780
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 782
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-eq p1, v0, :cond_3

    .line 783
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-boolean v1, Lkotlin/_Assertions;->a:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected BLOCKING state, but has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 784
    :cond_2
    :goto_1
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->RETIRING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    :cond_3
    return-void
.end method

.method private final a(Lkotlinx/coroutines/scheduling/TaskMode;J)V
    .locals 6

    .line 750
    sget-object v0, Lkotlinx/coroutines/scheduling/TaskMode;->NON_BLOCKING:Lkotlinx/coroutines/scheduling/TaskMode;

    if-eq p1, v0, :cond_1

    .line 755
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 1023
    sget-object p2, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide/32 v0, 0x200000

    invoke-virtual {p2, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 756
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 757
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->d(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V

    :cond_0
    return-void

    .line 765
    :cond_1
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->b(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 768
    :cond_2
    sget-object p1, Lkotlinx/coroutines/scheduling/TasksKt;->g:Lkotlinx/coroutines/scheduling/TimeSource;

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/TimeSource;->a()J

    move-result-wide v0

    sub-long p1, v0, p2

    .line 769
    sget-wide v2, Lkotlinx/coroutines/scheduling/TasksKt;->a:J

    cmp-long p1, p1, v2

    if-ltz p1, :cond_3

    .line 770
    iget-wide p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->i:J

    sub-long p1, v0, p1

    sget-wide v2, Lkotlinx/coroutines/scheduling/TasksKt;->a:J

    const/4 p3, 0x5

    int-to-long v4, p3

    mul-long v2, v2, v4

    cmp-long p1, p1, v2

    if-ltz p1, :cond_3

    .line 772
    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->i:J

    .line 773
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->d(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V

    :cond_3
    return-void
.end method

.method private final a(J)Z
    .locals 1

    .line 848
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v0, p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)V

    .line 849
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->o()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 850
    :cond_0
    invoke-static {p1, p2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    const/4 p1, 0x1

    return p1
.end method

.method private final b(Lkotlinx/coroutines/scheduling/TaskMode;)V
    .locals 3

    const-wide/16 v0, 0x0

    .line 927
    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->g:J

    const/4 v0, 0x0

    .line 928
    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->m:I

    .line 929
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v1, v2, :cond_3

    .line 930
    sget-object v1, Lkotlinx/coroutines/scheduling/TaskMode;->PROBABLY_BLOCKING:Lkotlinx/coroutines/scheduling/TaskMode;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-boolean v1, Lkotlin/_Assertions;->a:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Assertion failed"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 931
    :cond_2
    :goto_1
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 932
    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->d()I

    move-result p1

    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->k:I

    .line 934
    :cond_3
    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->j:I

    return-void
.end method

.method private final l()V
    .locals 2

    .line 814
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->j:I

    .line 815
    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a()I

    move-result v1

    if-gt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 816
    iput v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->j:I

    .line 817
    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->b()I

    move-result v1

    if-lt v0, v1, :cond_2

    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_0

    .line 819
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->k:I

    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->c()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 820
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->k:I

    mul-int/lit8 v0, v0, 0x3

    ushr-int/lit8 v0, v0, 0x1

    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->c()I

    move-result v1

    invoke-static {v0, v1}, Lkotlin/ranges/RangesKt;->d(II)I

    move-result v0

    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->k:I

    .line 822
    :cond_1
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 823
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->k:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a(J)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private final m()V
    .locals 6

    .line 828
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 829
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->o()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 830
    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->e:I

    .line 832
    iget-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->g:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)J

    move-result-wide v4

    add-long/2addr v0, v4

    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->g:J

    .line 834
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a(J)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 837
    :cond_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->g:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 838
    iput-wide v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->g:J

    .line 839
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->n()V

    :cond_3
    return-void
.end method

.method private final n()V
    .locals 6

    .line 858
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)[Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    move-result-object v0

    .line 1025
    monitor-enter v0

    .line 860
    :try_start_0
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->c(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 862
    :cond_0
    :try_start_1
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)I

    move-result v1

    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gt v1, v2, :cond_1

    monitor-exit v0

    return-void

    .line 864
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->o()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    .line 869
    :cond_2
    :try_start_3
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_3

    monitor-exit v0

    return-void

    .line 876
    :cond_3
    :try_start_4
    iget v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->b:I

    .line 877
    invoke-virtual {p0, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a(I)V

    .line 885
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v2, p0, v1, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V

    .line 890
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    .line 1026
    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v2

    const-wide/32 v4, 0x1fffff

    and-long/2addr v2, v4

    long-to-int v2, v2

    if-eq v2, v1, :cond_5

    .line 892
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)[Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    move-result-object v3

    aget-object v3, v3, v2

    if-nez v3, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 893
    :cond_4
    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v4}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)[Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    move-result-object v4

    aput-object v3, v4, v1

    .line 894
    invoke-virtual {v3, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a(I)V

    .line 902
    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v4, v3, v2, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V

    .line 907
    :cond_5
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)[Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    move-result-object v1

    const/4 v3, 0x0

    check-cast v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    aput-object v3, v1, v2

    .line 908
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    .line 909
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    return-void

    :catchall_0
    move-exception v1

    .line 908
    monitor-exit v0

    throw v1
.end method

.method private final o()Z
    .locals 3

    .line 918
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)Lkotlinx/coroutines/scheduling/GlobalQueue;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/scheduling/TaskMode;->PROBABLY_BLOCKING:Lkotlinx/coroutines/scheduling/TaskMode;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/scheduling/GlobalQueue;->a(Lkotlinx/coroutines/scheduling/TaskMode;)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 919
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->c:Lkotlinx/coroutines/scheduling/WorkQueue;

    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)Lkotlinx/coroutines/scheduling/GlobalQueue;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lkotlinx/coroutines/scheduling/WorkQueue;->a(Lkotlinx/coroutines/scheduling/Task;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private final p()Lkotlinx/coroutines/scheduling/Task;
    .locals 3

    .line 967
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->b(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 968
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)Lkotlinx/coroutines/scheduling/GlobalQueue;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/scheduling/TaskMode;->NON_BLOCKING:Lkotlinx/coroutines/scheduling/TaskMode;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/scheduling/GlobalQueue;->a(Lkotlinx/coroutines/scheduling/TaskMode;)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    .line 969
    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->c:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {v1}, Lkotlinx/coroutines/scheduling/WorkQueue;->b()Lkotlinx/coroutines/scheduling/Task;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    if-nez v0, :cond_3

    .line 970
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)Lkotlinx/coroutines/scheduling/GlobalQueue;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/GlobalQueue;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v0, :cond_3

    return-object v0

    .line 971
    :cond_3
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->q()Lkotlinx/coroutines/scheduling/Task;

    move-result-object v0

    return-object v0
.end method

.method private final q()Lkotlinx/coroutines/scheduling/Task;
    .locals 4

    .line 975
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return-object v1

    .line 980
    :cond_0
    iget v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->m:I

    if-nez v2, :cond_1

    .line 981
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->b(I)I

    move-result v2

    :cond_1
    const/4 v3, 0x1

    add-int/2addr v2, v3

    if-le v2, v0, :cond_2

    const/4 v2, 0x1

    .line 984
    :cond_2
    iput v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->m:I

    .line 985
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)[Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    move-result-object v0

    aget-object v0, v0, v2

    if-eqz v0, :cond_3

    .line 986
    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    if-eq v0, v2, :cond_3

    .line 987
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->c:Lkotlinx/coroutines/scheduling/WorkQueue;

    iget-object v0, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->c:Lkotlinx/coroutines/scheduling/WorkQueue;

    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)Lkotlinx/coroutines/scheduling/GlobalQueue;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lkotlinx/coroutines/scheduling/WorkQueue;->a(Lkotlinx/coroutines/scheduling/WorkQueue;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 988
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->c:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/WorkQueue;->b()Lkotlinx/coroutines/scheduling/Task;

    move-result-object v0

    return-object v0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 610
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->b:I

    return v0
.end method

.method public final a(I)V
    .locals 2

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->setName(Ljava/lang/String;)V

    .line 613
    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->b:I

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 660
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->h:Ljava/lang/Object;

    return-void
.end method

.method public final a(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z
    .locals 3

    const-string v0, "newState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    .line 701
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 702
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->b(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_1
    if-eq v0, p1, :cond_2

    .line 703
    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    :cond_2
    return v1
.end method

.method public final b(I)I
    .locals 2

    .line 794
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:I

    iget v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:I

    shl-int/lit8 v1, v1, 0xd

    xor-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:I

    .line 795
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:I

    iget v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:I

    shr-int/lit8 v1, v1, 0x11

    xor-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:I

    .line 796
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:I

    iget v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:I

    shl-int/lit8 v1, v1, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:I

    add-int/lit8 v0, p1, -0x1

    and-int v1, v0, p1

    if-nez v1, :cond_0

    .line 800
    iget p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:I

    and-int/2addr p1, v0

    return p1

    .line 802
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l:I

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/2addr v0, p1

    return v0
.end method

.method public final b()Lkotlinx/coroutines/scheduling/CoroutineScheduler;
    .locals 1

    .line 620
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    return-object v0
.end method

.method public final c()Lkotlinx/coroutines/scheduling/WorkQueue;
    .locals 1

    .line 622
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->c:Lkotlinx/coroutines/scheduling/WorkQueue;

    return-object v0
.end method

.method public final d()Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;
    .locals 1

    .line 629
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    return-object v0
.end method

.method public final e()Z
    .locals 2

    .line 631
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->PARKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final f()Z
    .locals 2

    .line 632
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->BLOCKING:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final g()Ljava/lang/Object;
    .locals 1

    .line 660
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public final h()Z
    .locals 3

    .line 668
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->e:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid terminationState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 672
    :pswitch_0
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, -0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    :pswitch_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final i()Z
    .locals 3

    .line 686
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 687
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->b(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->tryAcquire()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    iput-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final j()V
    .locals 1

    .line 939
    invoke-static {}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->d()I

    move-result v0

    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->k:I

    const/4 v0, 0x0

    .line 940
    iput v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->j:I

    return-void
.end method

.method public final k()Lkotlinx/coroutines/scheduling/Task;
    .locals 2

    .line 944
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->p()Lkotlinx/coroutines/scheduling/Task;

    move-result-object v0

    return-object v0

    .line 953
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->c:Lkotlinx/coroutines/scheduling/WorkQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/WorkQueue;->b()Lkotlinx/coroutines/scheduling/Task;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)Lkotlinx/coroutines/scheduling/GlobalQueue;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/scheduling/TaskMode;->PROBABLY_BLOCKING:Lkotlinx/coroutines/scheduling/TaskMode;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/scheduling/GlobalQueue;->a(Lkotlinx/coroutines/scheduling/TaskMode;)Lkotlinx/coroutines/scheduling/Task;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public run()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 724
    :goto_0
    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->c(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-eq v2, v3, :cond_3

    .line 725
    invoke-virtual {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->k()Lkotlinx/coroutines/scheduling/Task;

    move-result-object v2

    if-nez v2, :cond_1

    .line 728
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    sget-object v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->CPU_ACQUIRED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v1, v2, :cond_0

    .line 729
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->l()V

    goto :goto_1

    .line 731
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->m()V

    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 736
    :cond_1
    invoke-virtual {v2}, Lkotlinx/coroutines/scheduling/Task;->g()Lkotlinx/coroutines/scheduling/TaskMode;

    move-result-object v3

    if-eqz v1, :cond_2

    .line 738
    invoke-direct {p0, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->b(Lkotlinx/coroutines/scheduling/TaskMode;)V

    const/4 v1, 0x0

    .line 741
    :cond_2
    iget-wide v4, v2, Lkotlinx/coroutines/scheduling/Task;->f:J

    invoke-direct {p0, v3, v4, v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a(Lkotlinx/coroutines/scheduling/TaskMode;J)V

    .line 742
    iget-object v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a:Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    invoke-static {v4, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Lkotlinx/coroutines/scheduling/Task;)V

    .line 743
    invoke-direct {p0, v3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a(Lkotlinx/coroutines/scheduling/TaskMode;)V

    goto :goto_0

    .line 746
    :cond_3
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    return-void
.end method
