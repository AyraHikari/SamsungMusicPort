.class public final Lkotlinx/coroutines/scheduling/CoroutineScheduler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;,
        Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;,
        Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;
    }
.end annotation


# static fields
.field static final b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final c:Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;

.field private static final g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final p:I

.field private static final q:I

.field private static final r:I

.field private static final s:I

.field private static final t:Lkotlinx/coroutines/internal/Symbol;


# instance fields
.field volatile a:J

.field private final d:Lkotlinx/coroutines/scheduling/GlobalQueue;

.field private final e:Ljava/util/concurrent/Semaphore;

.field private volatile f:J

.field private final h:[Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

.field private final i:Ljava/util/Random;

.field private volatile j:I

.field private final l:I

.field private final m:I

.field private final n:J

.field private final o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->c:Lkotlinx/coroutines/scheduling/CoroutineScheduler$Companion;

    const-string v2, "kotlinx.coroutines.scheduler.spins"

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 254
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/internal/SystemPropsKt;->a(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v0

    sput v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p:I

    .line 255
    sget v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p:I

    const-string v1, "kotlinx.coroutines.scheduler.yields"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/internal/SystemPropsKt;->a(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    sput v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->q:I

    .line 258
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->r:I

    .line 261
    sget-wide v0, Lkotlinx/coroutines/scheduling/TasksKt;->a:J

    const/4 v2, 0x4

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0xa

    .line 262
    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->a(JJ)J

    move-result-wide v0

    .line 263
    sget v2, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->r:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->b(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->s:I

    .line 266
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "NOT_IN_STACK"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->t:Lkotlinx/coroutines/internal/Symbol;

    const-class v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const-string v1, "f"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const-string v1, "a"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-class v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    const-string v1, "j"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 2

    const-string v0, "schedulerName"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->l:I

    iput p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->m:I

    iput-wide p3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->n:J

    iput-object p5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->o:Ljava/lang/String;

    .line 67
    iget p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->l:I

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-lt p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_7

    .line 70
    iget p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->m:I

    iget p4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->l:I

    if-lt p1, p4, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_6

    .line 73
    iget p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->m:I

    const p4, 0x1ffffe

    if-gt p1, p4, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_5

    .line 76
    iget-wide p4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->n:J

    const-wide/16 v0, 0x0

    cmp-long p1, p4, v0

    if-lez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_4

    .line 81
    new-instance p1, Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-direct {p1}, Lkotlinx/coroutines/scheduling/GlobalQueue;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->d:Lkotlinx/coroutines/scheduling/GlobalQueue;

    .line 89
    new-instance p1, Ljava/util/concurrent/Semaphore;

    iget p4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->l:I

    invoke-direct {p1, p4, p2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e:Ljava/util/concurrent/Semaphore;

    .line 105
    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:J

    .line 226
    iget p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->m:I

    add-int/2addr p1, p3

    new-array p1, p1, [Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h:[Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 232
    iput-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:J

    .line 247
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i:Ljava/util/Random;

    .line 250
    iput p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j:I

    return-void

    .line 77
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Idle worker keep alive time "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->n:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " must be positive"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 76
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 74
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Max pool size "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->m:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should not exceed maximal supported number of threads 2097150"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 73
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 71
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Max pool size "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->m:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should be greater than or equals to core pool size "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->l:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 70
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 68
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Core pool size "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->l:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " should be at least 1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 67
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public static final synthetic a()I
    .locals 1

    .line 60
    sget v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->q:I

    return v0
.end method

.method private final a(Lkotlinx/coroutines/scheduling/Task;Z)I
    .locals 6

    .line 484
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 486
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->b()Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler;

    if-eq v2, v3, :cond_1

    return v1

    .line 492
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d()Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    move-result-object v2

    sget-object v3, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v2, v3, :cond_2

    return v1

    :cond_2
    const/4 v2, -0x1

    .line 495
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/Task;->g()Lkotlinx/coroutines/scheduling/TaskMode;

    move-result-object v3

    sget-object v4, Lkotlinx/coroutines/scheduling/TaskMode;->NON_BLOCKING:Lkotlinx/coroutines/scheduling/TaskMode;

    const/4 v5, 0x0

    if-ne v3, v4, :cond_4

    .line 504
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    .line 512
    :cond_3
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->i()Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    .line 520
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->c()Lkotlinx/coroutines/scheduling/WorkQueue;

    move-result-object p2

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->d:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {p2, p1, v1}, Lkotlinx/coroutines/scheduling/WorkQueue;->b(Lkotlinx/coroutines/scheduling/Task;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z

    move-result p1

    goto :goto_1

    .line 522
    :cond_5
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->c()Lkotlinx/coroutines/scheduling/WorkQueue;

    move-result-object p2

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->d:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {p2, p1, v1}, Lkotlinx/coroutines/scheduling/WorkQueue;->a(Lkotlinx/coroutines/scheduling/Task;Lkotlinx/coroutines/scheduling/GlobalQueue;)Z

    move-result p1

    :goto_1
    if-eqz p1, :cond_7

    .line 528
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->c()Lkotlinx/coroutines/scheduling/WorkQueue;

    move-result-object p1

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/WorkQueue;->a()I

    move-result p1

    sget p2, Lkotlinx/coroutines/scheduling/TasksKt;->b:I

    if-le p1, p2, :cond_6

    return v5

    :cond_6
    return v2

    :cond_7
    return v5

    :cond_8
    return v1
.end method

.method public static final synthetic a(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->o:Ljava/lang/String;

    return-object p0
.end method

.method private final a(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)V
    .locals 8

    .line 140
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->g()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->t:Lkotlinx/coroutines/internal/Symbol;

    if-eq v0, v1, :cond_0

    return-void

    .line 1026
    :cond_0
    iget-wide v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v4

    long-to-int v0, v0

    const-wide/32 v1, 0x200000

    add-long/2addr v1, v4

    const-wide/32 v6, -0x200000

    and-long/2addr v1, v6

    .line 148
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 149
    :goto_0
    sget-boolean v7, Lkotlin/_Assertions;->a:Z

    if-eqz v7, :cond_3

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Assertion failed"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 150
    :cond_3
    :goto_1
    iget-object v6, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h:[Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    aget-object v0, v6, v0

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a(Ljava/lang/Object;)V

    .line 156
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v6, v3

    or-long/2addr v6, v1

    move-object v2, v0

    move-object v3, p0

    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method private final a(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V
    .locals 8

    .line 1024
    :cond_0
    :goto_0
    iget-wide v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    const-wide/32 v4, 0x200000

    add-long/2addr v4, v2

    const-wide/32 v6, -0x200000

    and-long/2addr v4, v6

    if-ne v0, p2, :cond_2

    if-nez p3, :cond_1

    .line 120
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->b(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, p3

    :cond_2
    :goto_1
    if-gez v0, :cond_3

    goto :goto_0

    .line 128
    :cond_3
    sget-object v1, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v6, v0

    or-long/2addr v4, v6

    move-object v0, v1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public static synthetic a(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 341
    sget-object p2, Lkotlinx/coroutines/scheduling/NonBlockingContext;->a:Lkotlinx/coroutines/scheduling/NonBlockingContext;

    check-cast p2, Lkotlinx/coroutines/scheduling/TaskContext;

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V

    return-void
.end method

.method public static final synthetic a(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)V

    return-void
.end method

.method public static final synthetic a(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;II)V

    return-void
.end method

.method public static final synthetic a(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Lkotlinx/coroutines/scheduling/Task;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a(Lkotlinx/coroutines/scheduling/Task;)V

    return-void
.end method

.method private final a(Lkotlinx/coroutines/scheduling/Task;)V
    .locals 2

    .line 594
    :try_start_0
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/Task;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/coroutines/TimeSource;->c()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 596
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "thread"

    .line 597
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 599
    :goto_2
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/TimeSource;->c()V

    throw p1
.end method

.method public static final synthetic b()I
    .locals 1

    .line 60
    sget v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->p:I

    return v0
.end method

.method private final b(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)I
    .locals 1

    .line 199
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->g()Ljava/lang/Object;

    move-result-object p1

    .line 202
    :goto_0
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->t:Lkotlinx/coroutines/internal/Symbol;

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 205
    :cond_1
    check-cast p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 206
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a()I

    move-result v0

    if-eqz v0, :cond_2

    return v0

    .line 209
    :cond_2
    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->g()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0
.end method

.method public static final synthetic b(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 60
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method public static final synthetic c()I
    .locals 1

    .line 60
    sget v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->r:I

    return v0
.end method

.method public static final synthetic c(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)Z
    .locals 0

    .line 60
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h()Z

    move-result p0

    return p0
.end method

.method public static final synthetic d()I
    .locals 1

    .line 60
    sget v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->s:I

    return v0
.end method

.method public static final synthetic d(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i()V

    return-void
.end method

.method public static final synthetic e(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)J
    .locals 2

    .line 60
    iget-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->n:J

    return-wide v0
.end method

.method public static final synthetic e()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    .line 60
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->t:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method private final f()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .locals 9

    .line 1028
    :cond_0
    :goto_0
    iget-wide v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:J

    const-wide/32 v0, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    .line 169
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h:[Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    aget-object v6, v1, v0

    if-eqz v6, :cond_2

    const-wide/32 v0, 0x200000

    add-long/2addr v0, v2

    const-wide/32 v4, -0x200000

    and-long/2addr v0, v4

    .line 171
    invoke-direct {p0, v6}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->b(Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;)I

    move-result v4

    if-gez v4, :cond_1

    goto :goto_0

    .line 178
    :cond_1
    sget-object v5, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v7, v4

    or-long/2addr v7, v0

    move-object v0, v5

    move-object v1, p0

    move-wide v4, v7

    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->t:Lkotlinx/coroutines/internal/Symbol;

    invoke-virtual {v6, v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a(Ljava/lang/Object;)V

    return-object v6

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static final synthetic f(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)[Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;
    .locals 0

    .line 60
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h:[Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    return-object p0
.end method

.method private final g()I
    .locals 4

    .line 234
    iget-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:J

    const-wide/32 v2, 0x1fffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static final synthetic g(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)I
    .locals 0

    .line 60
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->g()I

    move-result p0

    return p0
.end method

.method public static final synthetic h(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)I
    .locals 0

    .line 60
    iget p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->l:I

    return p0
.end method

.method private final h()Z
    .locals 1

    .line 251
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final synthetic i(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)Lkotlinx/coroutines/scheduling/GlobalQueue;
    .locals 0

    .line 60
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->d:Lkotlinx/coroutines/scheduling/GlobalQueue;

    return-object p0
.end method

.method private final i()V
    .locals 5

    .line 374
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v0

    if-nez v0, :cond_0

    .line 375
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j()Z

    return-void

    .line 384
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 392
    :cond_1
    iget-wide v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:J

    const-wide/32 v2, 0x1fffff

    and-long/2addr v2, v0

    long-to-int v2, v2

    const-wide v3, 0x3ffffe00000L

    and-long/2addr v0, v3

    const/16 v3, 0x15

    shr-long/2addr v0, v3

    long-to-int v0, v0

    sub-int/2addr v2, v0

    .line 400
    iget v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->l:I

    if-ge v2, v0, :cond_3

    .line 401
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 404
    iget v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->l:I

    if-le v2, v1, :cond_2

    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k()I

    :cond_2
    if-lez v0, :cond_3

    return-void

    .line 408
    :cond_3
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->j()Z

    return-void
.end method

.method public static final synthetic j(Lkotlinx/coroutines/scheduling/CoroutineScheduler;)Ljava/util/Random;
    .locals 0

    .line 60
    iget-object p0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i:Ljava/util/Random;

    return-object p0
.end method

.method private final j()Z
    .locals 3

    .line 413
    :goto_0
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f()Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 426
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->j()V

    .line 431
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->e()Z

    move-result v1

    .line 436
    move-object v2, v0

    check-cast v2, Ljava/lang/Thread;

    invoke-static {v2}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    if-nez v1, :cond_0

    goto :goto_0

    .line 446
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->h()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private final k()I
    .locals 10

    .line 460
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h:[Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 1035
    monitor-enter v0

    .line 462
    :try_start_0
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 463
    :cond_0
    :try_start_1
    iget-wide v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:J

    const-wide/32 v3, 0x1fffff

    and-long v5, v1, v3

    long-to-int v5, v5

    const-wide v6, 0x3ffffe00000L

    and-long/2addr v1, v6

    const/16 v6, 0x15

    shr-long/2addr v1, v6

    long-to-int v1, v1

    sub-int v1, v5, v1

    .line 468
    iget v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    if-lt v1, v2, :cond_1

    monitor-exit v0

    return v6

    .line 469
    :cond_1
    :try_start_2
    iget v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->m:I

    if-ge v5, v2, :cond_7

    iget-object v2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 1038
    :cond_2
    iget-wide v7, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:J

    and-long/2addr v7, v3

    long-to-int v2, v7

    const/4 v5, 0x1

    add-int/2addr v2, v5

    if-lez v2, :cond_3

    .line 472
    iget-object v7, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h:[Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    aget-object v7, v7, v2

    if-nez v7, :cond_3

    const/4 v7, 0x1

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_6

    .line 473
    new-instance v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    invoke-direct {v7, p0, v2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;-><init>(Lkotlinx/coroutines/scheduling/CoroutineScheduler;I)V

    invoke-virtual {v7}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->start()V

    .line 1045
    sget-object v8, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->b:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v8, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->incrementAndGet(Ljava/lang/Object;)J

    move-result-wide v8

    and-long/2addr v3, v8

    long-to-int v3, v3

    if-ne v2, v3, :cond_4

    const/4 v6, 0x1

    :cond_4
    if-eqz v6, :cond_5

    .line 475
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h:[Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    aput-object v7, v3, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/2addr v1, v5

    .line 476
    monitor-exit v0

    return v1

    :cond_5
    :try_start_3
    const-string v1, "Failed requirement."

    .line 474
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2

    :cond_6
    const-string v1, "Failed requirement."

    .line 472
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v2, Ljava/lang/Throwable;

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 469
    :cond_7
    :goto_1
    monitor-exit v0

    return v6

    :catchall_0
    move-exception v1

    .line 476
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;)Lkotlinx/coroutines/scheduling/Task;
    .locals 3

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    sget-object v0, Lkotlinx/coroutines/scheduling/TasksKt;->g:Lkotlinx/coroutines/scheduling/TimeSource;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/TimeSource;->a()J

    move-result-wide v0

    .line 361
    instance-of v2, p1, Lkotlinx/coroutines/scheduling/Task;

    if-eqz v2, :cond_0

    .line 362
    check-cast p1, Lkotlinx/coroutines/scheduling/Task;

    iput-wide v0, p1, Lkotlinx/coroutines/scheduling/Task;->f:J

    .line 363
    iput-object p2, p1, Lkotlinx/coroutines/scheduling/Task;->g:Lkotlinx/coroutines/scheduling/TaskContext;

    return-object p1

    .line 366
    :cond_0
    new-instance v2, Lkotlinx/coroutines/scheduling/TaskImpl;

    invoke-direct {v2, p1, v0, v1, p2}, Lkotlinx/coroutines/scheduling/TaskImpl;-><init>(Ljava/lang/Runnable;JLkotlinx/coroutines/scheduling/TaskContext;)V

    check-cast v2, Lkotlinx/coroutines/scheduling/Task;

    return-object v2
.end method

.method public final a(J)V
    .locals 8

    .line 300
    sget-object v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 302
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v3, v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    if-nez v3, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 304
    iget-object v3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h:[Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    .line 1031
    monitor-enter v3

    .line 1032
    :try_start_0
    iget-wide v4, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v6, 0x1fffff

    and-long/2addr v4, v6

    long-to-int v4, v4

    .line 304
    monitor-exit v3

    if-gt v2, v4, :cond_7

    const/4 v3, 0x1

    .line 307
    :goto_0
    iget-object v5, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h:[Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    aget-object v5, v5, v3

    if-nez v5, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    if-eq v5, v0, :cond_6

    .line 309
    :goto_1
    invoke-virtual {v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->isAlive()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 310
    move-object v6, v5

    check-cast v6, Ljava/lang/Thread;

    invoke-static {v6}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 311
    invoke-virtual {v5, p1, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->join(J)V

    goto :goto_1

    .line 313
    :cond_3
    invoke-virtual {v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d()Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    move-result-object v6

    .line 314
    sget-object v7, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    if-ne v6, v7, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_5

    .line 315
    invoke-virtual {v5}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->c()Lkotlinx/coroutines/scheduling/WorkQueue;

    move-result-object v5

    iget-object v6, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->d:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v5, v6}, Lkotlinx/coroutines/scheduling/WorkQueue;->a(Lkotlinx/coroutines/scheduling/GlobalQueue;)V

    goto :goto_3

    .line 314
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Expected TERMINATED state, but found "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    :cond_6
    :goto_3
    if-eq v3, v4, :cond_7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 319
    :cond_7
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->d:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/GlobalQueue;->b()V

    :goto_4
    if-eqz v0, :cond_8

    .line 322
    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->k()Lkotlinx/coroutines/scheduling/Task;

    move-result-object p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->d:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {p1}, Lkotlinx/coroutines/scheduling/GlobalQueue;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/scheduling/Task;

    :goto_5
    if-eqz p1, :cond_9

    .line 323
    invoke-direct {p0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a(Lkotlinx/coroutines/scheduling/Task;)V

    goto :goto_4

    :cond_9
    if-eqz v0, :cond_a

    .line 326
    sget-object p1, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->TERMINATED:Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->a(Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;)Z

    .line 328
    :cond_a
    iget-object p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result p1

    iget p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->l:I

    if-ne p1, p2, :cond_b

    const/4 v1, 0x1

    :cond_b
    sget-boolean p1, Lkotlin/_Assertions;->a:Z

    if-eqz p1, :cond_d

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Assertion failed"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_d
    :goto_6
    const-wide/16 p1, 0x0

    .line 329
    iput-wide p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->f:J

    .line 330
    iput-wide p1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:J

    return-void

    :catchall_0
    move-exception p1

    .line 304
    monitor-exit v3

    throw p1
.end method

.method public final a(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;Z)V
    .locals 1

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/coroutines/TimeSource;->b()V

    .line 343
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a(Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;)Lkotlinx/coroutines/scheduling/Task;

    move-result-object p1

    .line 345
    invoke-direct {p0, p1, p3}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a(Lkotlinx/coroutines/scheduling/Task;Z)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_0

    .line 355
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i()V

    goto :goto_0

    .line 349
    :cond_0
    iget-object p2, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->d:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {p2, p1}, Lkotlinx/coroutines/scheduling/GlobalQueue;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 353
    invoke-direct {p0}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->i()V

    :goto_0
    return-void

    .line 351
    :cond_1
    new-instance p1, Ljava/util/concurrent/RejectedExecutionException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->o:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " was terminated"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/RejectedExecutionException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    return-void
.end method

.method public close()V
    .locals 2

    const-wide/16 v0, 0x2710

    .line 295
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a(J)V

    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 7

    const-string v0, "command"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 293
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a(Lkotlinx/coroutines/scheduling/CoroutineScheduler;Ljava/lang/Runnable;Lkotlinx/coroutines/scheduling/TaskContext;ZILjava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 553
    iget-object v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->h:[Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v9, v1, v3

    if-nez v9, :cond_0

    goto/16 :goto_1

    .line 555
    :cond_0
    invoke-virtual {v9}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->c()Lkotlinx/coroutines/scheduling/WorkQueue;

    move-result-object v10

    invoke-virtual {v10}, Lkotlinx/coroutines/scheduling/WorkQueue;->c()I

    move-result v10

    .line 556
    invoke-virtual {v9}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$Worker;->d()Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;

    move-result-object v9

    sget-object v11, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WhenMappings;->a:[I

    invoke-virtual {v9}, Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;->ordinal()I

    move-result v9

    aget v9, v11, v9

    packed-switch v9, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :pswitch_1
    add-int/lit8 v7, v7, 0x1

    if-lez v10, :cond_1

    .line 568
    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "r"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_2
    add-int/lit8 v4, v4, 0x1

    .line 564
    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "c"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_3
    add-int/lit8 v5, v5, 0x1

    .line 560
    move-object v9, v0

    check-cast v9, Ljava/util/Collection;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "b"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :pswitch_4
    add-int/lit8 v6, v6, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 573
    :cond_2
    iget-wide v1, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->a:J

    .line 574
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->o:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x40

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/DebugKt;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x5b

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v9, "Pool Size {"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "core = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    iget v9, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->l:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "max = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    iget v9, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->m:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "}, "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Worker States {"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "CPU = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "blocking = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "parked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "retired = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "terminated = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "}, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "running workers queues = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "global queue size = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/CoroutineScheduler;->d:Lkotlinx/coroutines/scheduling/GlobalQueue;

    invoke-virtual {v0}, Lkotlinx/coroutines/scheduling/GlobalQueue;->a()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Control State Workers {"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "created = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v4, 0x1fffff

    and-long/2addr v4, v1

    long-to-int v0, v4

    .line 1047
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "blocking = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v4, 0x3ffffe00000L

    and-long v0, v1, v4

    const/16 v2, 0x15

    shr-long/2addr v0, v2

    long-to-int v0, v0

    .line 1048
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
