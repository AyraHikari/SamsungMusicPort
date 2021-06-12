.class public final Lkotlinx/coroutines/sync/MutexImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/selects/SelectClause2;
.implements Lkotlinx/coroutines/sync/Mutex;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;,
        Lkotlinx/coroutines/sync/MutexImpl$TryEnqueueLockDesc;,
        Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;,
        Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;,
        Lkotlinx/coroutines/sync/MutexImpl$LockCont;,
        Lkotlinx/coroutines/sync/MutexImpl$LockSelect;,
        Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/selects/SelectClause2<",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/sync/Mutex;",
        ">;",
        "Lkotlinx/coroutines/sync/Mutex;"
    }
.end annotation


# static fields
.field static final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/sync/MutexImpl;

    const-class v1, Ljava/lang/Object;

    const-string v2, "a"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/sync/MutexImpl;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 143
    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->c()Lkotlinx/coroutines/sync/Empty;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->a()Lkotlinx/coroutines/sync/Empty;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 184
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/sync/MutexImpl;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 186
    :cond_0
    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/sync/MutexImpl;->b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 5

    .line 442
    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->a:Ljava/lang/Object;

    .line 319
    instance-of v1, v0, Lkotlinx/coroutines/sync/Empty;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    if-nez p1, :cond_3

    .line 321
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/Empty;

    iget-object v1, v1, Lkotlinx/coroutines/sync/Empty;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->g()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-eq v1, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Mutex is not locked"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 323
    :cond_3
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/Empty;

    iget-object v4, v1, Lkotlinx/coroutines/sync/Empty;->a:Ljava/lang/Object;

    if-ne v4, p1, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    .line 324
    :goto_1
    sget-object v1, Lkotlinx/coroutines/sync/MutexImpl;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->a()Lkotlinx/coroutines/sync/Empty;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 323
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mutex is locked by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lkotlinx/coroutines/sync/Empty;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 326
    :cond_6
    instance-of v1, v0, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v1, :cond_7

    check-cast v0, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 327
    :cond_7
    instance-of v1, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v1, :cond_d

    if-eqz p1, :cond_a

    .line 329
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v4, v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->a:Ljava/lang/Object;

    if-ne v4, p1, :cond_8

    const/4 v2, 0x1

    :cond_8
    if-eqz v2, :cond_9

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mutex is locked by "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 330
    :cond_a
    :goto_2
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    invoke-virtual {v1}, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->j()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v2

    if-nez v2, :cond_b

    .line 332
    new-instance v2, Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;-><init>(Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;)V

    .line 333
    sget-object v1, Lkotlinx/coroutines/sync/MutexImpl;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, p0}, Lkotlinx/coroutines/sync/MutexImpl$UnlockOp;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 335
    :cond_b
    check-cast v2, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;

    invoke-virtual {v2}, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->b()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 337
    iget-object p1, v2, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->h:Ljava/lang/Object;

    if-eqz p1, :cond_c

    goto :goto_3

    :cond_c
    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->h()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    :goto_3
    iput-object p1, v1, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->a:Ljava/lang/Object;

    .line 338
    invoke-virtual {v2, v0}, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;->a(Ljava/lang/Object;)V

    return-void

    .line 343
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public a(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/sync/Mutex;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    :goto_0
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->a:Ljava/lang/Object;

    .line 230
    instance-of v1, v0, Lkotlinx/coroutines/sync/Empty;

    if-eqz v1, :cond_5

    .line 231
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/Empty;

    iget-object v2, v1, Lkotlinx/coroutines/sync/Empty;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->g()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 232
    sget-object v2, Lkotlinx/coroutines/sync/MutexImpl;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v3, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v1, v1, Lkotlinx/coroutines/sync/Empty;->a:Ljava/lang/Object;

    invoke-direct {v3, v1}, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, p0, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    :cond_1
    new-instance v0, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/coroutines/internal/AtomicDesc;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/SelectInstance;->a(Lkotlinx/coroutines/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 238
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->a()Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-static {p3, p0, p1}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    return-void

    .line 241
    :cond_2
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    return-void

    .line 242
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->b()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v1

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 243
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "performAtomicTrySelect(TryLockDesc) returned "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 247
    :cond_5
    instance-of v1, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v1, :cond_b

    .line 248
    move-object v5, v0

    check-cast v5, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v0, v5, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->a:Ljava/lang/Object;

    if-eq v0, p2, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_a

    .line 249
    new-instance v0, Lkotlinx/coroutines/sync/MutexImpl$TryEnqueueLockDesc;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p2

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lkotlinx/coroutines/sync/MutexImpl$TryEnqueueLockDesc;-><init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V

    .line 250
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/AtomicDesc;

    invoke-interface {p1, v1}, Lkotlinx/coroutines/selects/SelectInstance;->b(Lkotlinx/coroutines/internal/AtomicDesc;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    .line 253
    iget-object p2, v0, Lkotlinx/coroutines/sync/MutexImpl$TryEnqueueLockDesc;->b:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    check-cast p2, Lkotlinx/coroutines/DisposableHandle;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/selects/SelectInstance;->a(Lkotlinx/coroutines/DisposableHandle;)V

    return-void

    .line 256
    :cond_7
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_8

    return-void

    .line 257
    :cond_8
    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->d()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v0

    if-ne v1, v0, :cond_9

    goto/16 :goto_0

    .line 258
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "performAtomicIfNotSelected(TryEnqueueLockDesc) returned "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 248
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Already locked by "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 261
    :cond_b
    instance-of v1, v0, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v1, :cond_c

    check-cast v0, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 262
    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Illegal state "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method final synthetic b(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 426
    new-instance v10, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 427
    move-object v12, v10

    check-cast v12, Lkotlinx/coroutines/CancellableContinuation;

    .line 190
    new-instance v13, Lkotlinx/coroutines/sync/MutexImpl$LockCont;

    invoke-direct {v13, v9, v12}, Lkotlinx/coroutines/sync/MutexImpl$LockCont;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 429
    :goto_0
    iget-object v3, v8, Lkotlinx/coroutines/sync/MutexImpl;->a:Ljava/lang/Object;

    .line 193
    instance-of v0, v3, Lkotlinx/coroutines/sync/Empty;

    if-eqz v0, :cond_2

    .line 194
    move-object v0, v3

    check-cast v0, Lkotlinx/coroutines/sync/Empty;

    iget-object v1, v0, Lkotlinx/coroutines/sync/Empty;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->g()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 195
    sget-object v1, Lkotlinx/coroutines/sync/MutexImpl;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v2, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v0, v0, Lkotlinx/coroutines/sync/Empty;->a:Ljava/lang/Object;

    invoke-direct {v2, v0}, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v8, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_0
    if-nez v9, :cond_1

    .line 198
    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->c()Lkotlinx/coroutines/sync/Empty;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlinx/coroutines/sync/Empty;

    invoke-direct {v0, v9}, Lkotlinx/coroutines/sync/Empty;-><init>(Ljava/lang/Object;)V

    .line 199
    :goto_1
    sget-object v1, Lkotlinx/coroutines/sync/MutexImpl;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v8, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 200
    check-cast v12, Lkotlin/coroutines/Continuation;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v12, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_4

    .line 205
    :cond_2
    instance-of v0, v3, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v0, :cond_7

    .line 206
    move-object v14, v3

    check-cast v14, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v0, v14, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->a:Ljava/lang/Object;

    const/4 v15, 0x1

    if-eq v0, v9, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    .line 208
    move-object v7, v13

    check-cast v7, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 431
    new-instance v16, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$$inlined$suspendAtomicCancellableCoroutine$lambda$1;

    move-object/from16 v0, v16

    move-object v1, v7

    move-object v2, v7

    move-object v4, v12

    move-object v5, v13

    move-object/from16 v6, p0

    move-object v11, v7

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lkotlinx/coroutines/sync/MutexImpl$lockSuspend$$inlined$suspendAtomicCancellableCoroutine$lambda$1;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/sync/MutexImpl$LockCont;Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;)V

    move-object/from16 v0, v16

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;

    .line 435
    :goto_3
    invoke-virtual {v14}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->h()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 436
    invoke-virtual {v1, v11, v14, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->a(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    const/4 v15, 0x0

    :pswitch_1
    if-eqz v15, :cond_8

    .line 210
    invoke-static {v12, v11}, Lkotlinx/coroutines/CancellableContinuationKt;->a(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    .line 439
    :goto_4
    invoke-virtual {v10}, Lkotlinx/coroutines/CancellableContinuationImpl;->d()Ljava/lang/Object;

    move-result-object v0

    .line 425
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_4

    invoke-static/range {p2 .. p2}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    :cond_4
    return-object v0

    .line 435
    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already locked by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 214
    :cond_7
    instance-of v0, v3, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v0, :cond_9

    check-cast v3, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v3, v8}, Lkotlinx/coroutines/internal/OpDescriptor;->c(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_5
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 215
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 5

    .line 424
    :cond_0
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->a:Ljava/lang/Object;

    .line 165
    instance-of v1, v0, Lkotlinx/coroutines/sync/Empty;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 166
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/sync/Empty;

    iget-object v1, v1, Lkotlinx/coroutines/sync/Empty;->a:Ljava/lang/Object;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->g()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-eq v1, v4, :cond_1

    return v3

    :cond_1
    if-nez p1, :cond_2

    .line 167
    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->c()Lkotlinx/coroutines/sync/Empty;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v1, Lkotlinx/coroutines/sync/Empty;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/sync/Empty;-><init>(Ljava/lang/Object;)V

    .line 170
    :goto_1
    sget-object v3, Lkotlinx/coroutines/sync/MutexImpl;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 172
    :cond_3
    instance-of v1, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v1, :cond_6

    .line 173
    check-cast v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v0, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->a:Ljava/lang/Object;

    if-eq v0, p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    return v3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already locked by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 176
    :cond_6
    instance-of v1, v0, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v1, :cond_7

    check-cast v0, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 177
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 444
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl;->a:Ljava/lang/Object;

    .line 351
    instance-of v1, v0, Lkotlinx/coroutines/sync/Empty;

    const/16 v2, 0x5d

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mutex["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lkotlinx/coroutines/sync/Empty;

    iget-object v0, v0, Lkotlinx/coroutines/sync/Empty;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 352
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 353
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mutex["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;

    iget-object v0, v0, Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 354
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method
