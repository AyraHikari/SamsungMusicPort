.class public abstract Lkotlinx/coroutines/EventLoopImplBase;
.super Lkotlinx/coroutines/EventLoop;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/Delay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;,
        Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;,
        Lkotlinx/coroutines/EventLoopImplBase$DelayedRunnableTask;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile b:Ljava/lang/Object;

.field private volatile d:Ljava/lang/Object;

.field private volatile f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/EventLoopImplBase;

    const-class v1, Ljava/lang/Object;

    const-string v2, "b"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/EventLoopImplBase;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Lkotlinx/coroutines/EventLoopImplBase;

    const-class v1, Ljava/lang/Object;

    const-string v2, "d"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/EventLoopImplBase;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoop;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->b:Ljava/lang/Object;

    .line 40
    iput-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->d:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a(Lkotlinx/coroutines/EventLoopImplBase;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lkotlinx/coroutines/EventLoopImplBase;->f:Z

    return p0
.end method

.method private final b(Ljava/lang/Runnable;)Z
    .locals 5

    .line 351
    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->b:Ljava/lang/Object;

    .line 134
    iget-boolean v1, p0, Lkotlinx/coroutines/EventLoopImplBase;->f:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 136
    sget-object v0, Lkotlinx/coroutines/EventLoopImplBase;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 137
    :cond_2
    instance-of v3, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    if-eqz v3, :cond_4

    if-eqz v0, :cond_3

    .line 138
    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v3, p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->a(Ljava/lang/Object;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    return v2

    .line 141
    :pswitch_1
    sget-object v1, Lkotlinx/coroutines/EventLoopImplBase;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->e()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    return v1

    .line 138
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/EventLoopKt;->c()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-ne v0, v3, :cond_5

    return v2

    .line 148
    :cond_5
    new-instance v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;-><init>(IZ)V

    if-eqz v0, :cond_6

    .line 149
    move-object v3, v0

    check-cast v3, Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->a(Ljava/lang/Object;)I

    .line 150
    invoke-virtual {v2, p1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->a(Ljava/lang/Object;)I

    .line 151
    sget-object v3, Lkotlinx/coroutines/EventLoopImplBase;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 149
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final b(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)Z
    .locals 1

    .line 208
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->d:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->b()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v0, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method private final c(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I
    .locals 4

    .line 211
    iget-boolean v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->f:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 212
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->d:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase;

    .line 213
    sget-object v1, Lkotlinx/coroutines/EventLoopImplBase;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v2, 0x0

    new-instance v3, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    invoke-direct {v3}, Lkotlinx/coroutines/internal/ThreadSafeHeap;-><init>()V

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 214
    iget-object v0, v0, Lkotlinx/coroutines/EventLoopImplBase;->d:Ljava/lang/Object;

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    check-cast v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    .line 216
    :goto_0
    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->a(Lkotlinx/coroutines/internal/ThreadSafeHeap;Lkotlinx/coroutines/EventLoopImplBase;)I

    move-result p1

    return p1
.end method

.method private final k()V
    .locals 2

    .line 75
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->b()Ljava/lang/Thread;

    move-result-object v0

    .line 76
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, v0, :cond_0

    .line 77
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlinx/coroutines/TimeSource;->a(Ljava/lang/Thread;)V

    :cond_0
    return-void
.end method

.method private final l()Ljava/lang/Runnable;
    .locals 4

    .line 353
    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 163
    :cond_1
    instance-of v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    .line 164
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->d()Ljava/lang/Object;

    move-result-object v2

    .line 165
    sget-object v3, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->c:Lkotlinx/coroutines/internal/Symbol;

    if-eq v2, v3, :cond_2

    check-cast v2, Ljava/lang/Runnable;

    return-object v2

    .line 166
    :cond_2
    sget-object v2, Lkotlinx/coroutines/EventLoopImplBase;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->e()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v1

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.Queue<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> /* = kotlinx.coroutines.internal.LockFreeTaskQueueCore<kotlinx.coroutines.Runnable /* = java.lang.Runnable */> */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_4
    invoke-static {}, Lkotlinx/coroutines/EventLoopKt;->c()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-ne v0, v2, :cond_5

    return-object v1

    .line 170
    :cond_5
    sget-object v2, Lkotlinx/coroutines/EventLoopImplBase;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Runnable;

    return-object v0

    :cond_6
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final m()V
    .locals 4

    .line 177
    iget-boolean v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->f:Z

    sget-boolean v1, Lkotlin/_Assertions;->a:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Assertion failed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 355
    :cond_1
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->b:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 180
    sget-object v0, Lkotlinx/coroutines/EventLoopImplBase;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v1, 0x0

    invoke-static {}, Lkotlinx/coroutines/EventLoopKt;->c()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 181
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    if-eqz v1, :cond_3

    .line 182
    check-cast v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->c()Z

    return-void

    .line 186
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/EventLoopKt;->c()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_4

    return-void

    .line 189
    :cond_4
    new-instance v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;-><init>(IZ)V

    if-eqz v0, :cond_5

    .line 190
    move-object v2, v0

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->a(Ljava/lang/Object;)I

    .line 191
    sget-object v2, Lkotlinx/coroutines/EventLoopImplBase;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 190
    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.Runnable /* = java.lang.Runnable */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final n()V
    .locals 1

    .line 235
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->d:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->c()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    if-eqz v0, :cond_0

    .line 236
    invoke-virtual {v0}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->d()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;
    .locals 1

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/Delay$DefaultImpls;->a(Lkotlinx/coroutines/Delay;JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p1

    return-object p1
.end method

.method public a(JLkotlinx/coroutines/CancellableContinuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "continuation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;-><init>(Lkotlinx/coroutines/EventLoopImplBase;JLkotlinx/coroutines/CancellableContinuation;)V

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/EventLoopImplBase;->a(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V

    return-void
.end method

.method public final a(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0, p1}, Lkotlinx/coroutines/EventLoopImplBase;->b(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;->k()V

    goto :goto_0

    .line 127
    :cond_0
    sget-object v0, Lkotlinx/coroutines/DefaultExecutor;->b:Lkotlinx/coroutines/DefaultExecutor;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/DefaultExecutor;->a(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public final a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/EventLoopImplBase;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V
    .locals 1

    const-string v0, "delayedTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-direct {p0, p1}, Lkotlinx/coroutines/EventLoopImplBase;->c(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 204
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected result"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 202
    :pswitch_0
    sget-object v0, Lkotlinx/coroutines/DefaultExecutor;->b:Lkotlinx/coroutines/DefaultExecutor;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/DefaultExecutor;->a(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V

    goto :goto_0

    .line 201
    :pswitch_1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/EventLoopImplBase;->b(Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;->k()V

    :cond_0
    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected abstract b()Ljava/lang/Thread;
.end method

.method public c()J
    .locals 7

    .line 98
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->e()J

    move-result-wide v0

    return-wide v0

    .line 100
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->d:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    if-eqz v0, :cond_4

    .line 101
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a()Z

    move-result v1

    if-nez v1, :cond_4

    .line 102
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v1

    invoke-interface {v1}, Lkotlinx/coroutines/TimeSource;->a()J

    move-result-wide v1

    .line 342
    :goto_0
    monitor-enter v0

    .line 343
    :try_start_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->d()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    .line 344
    check-cast v3, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    .line 108
    invoke-virtual {v3, v1, v2}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->a(J)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 109
    check-cast v3, Ljava/lang/Runnable;

    invoke-direct {p0, v3}, Lkotlinx/coroutines/EventLoopImplBase;->b(Ljava/lang/Runnable;)Z

    move-result v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 345
    invoke-virtual {v0, v6}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a(I)Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v3

    .line 348
    :cond_2
    monitor-exit v0

    goto :goto_2

    .line 343
    :cond_3
    monitor-exit v0

    .line 349
    :goto_2
    check-cast v4, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    if-eqz v4, :cond_4

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 348
    monitor-exit v0

    throw v1

    .line 116
    :cond_4
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;->l()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 117
    :cond_5
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method protected d()Z
    .locals 4

    .line 48
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 49
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->d:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->a()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 51
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 54
    :cond_2
    instance-of v3, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    if-eqz v3, :cond_3

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->a()Z

    move-result v1

    goto :goto_1

    .line 55
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/EventLoopKt;->c()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-ne v0, v3, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    return v1
.end method

.method protected e()J
    .locals 6

    .line 61
    invoke-super {p0}, Lkotlinx/coroutines/EventLoop;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-wide v2

    .line 62
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->b:Ljava/lang/Object;

    const-wide v4, 0x7fffffffffffffffL

    if-nez v0, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    if-eqz v1, :cond_5

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->a()Z

    move-result v0

    if-nez v0, :cond_2

    return-wide v2

    .line 69
    :cond_2
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->d:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/internal/ThreadSafeHeap;

    if-eqz v0, :cond_4

    .line 70
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadSafeHeap;->b()Lkotlinx/coroutines/internal/ThreadSafeHeapNode;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;

    if-eqz v0, :cond_3

    .line 71
    iget-wide v0, v0, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;->b:J

    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v4

    invoke-interface {v4}, Lkotlinx/coroutines/TimeSource;->a()J

    move-result-wide v4

    sub-long/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt;->a(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_3
    return-wide v4

    :cond_4
    return-wide v4

    .line 66
    :cond_5
    invoke-static {}, Lkotlinx/coroutines/EventLoopKt;->c()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_6

    return-wide v4

    :cond_6
    return-wide v2
.end method

.method protected i()V
    .locals 4

    .line 82
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->a:Lkotlinx/coroutines/ThreadLocalEventLoop;

    invoke-virtual {v0}, Lkotlinx/coroutines/ThreadLocalEventLoop;->b()V

    const/4 v0, 0x1

    .line 85
    iput-boolean v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->f:Z

    .line 86
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;->m()V

    .line 88
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/EventLoopImplBase;->c()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;->n()V

    return-void
.end method

.method protected final j()V
    .locals 1

    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->b:Ljava/lang/Object;

    .line 222
    iput-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase;->d:Ljava/lang/Object;

    return-void
.end method
