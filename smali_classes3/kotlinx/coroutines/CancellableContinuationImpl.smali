.class public Lkotlinx/coroutines/CancellableContinuationImpl;
.super Lkotlinx/coroutines/DispatchedTask;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
.implements Lkotlinx/coroutines/CancellableContinuation;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/DispatchedTask<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;",
        "Lkotlinx/coroutines/CancellableContinuation<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private final a:Lkotlin/coroutines/CoroutineContext;

.field private volatile b:I

.field private volatile d:Ljava/lang/Object;

.field private volatile i:Lkotlinx/coroutines/DisposableHandle;

.field private final j:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    const-string v1, "b"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-class v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    const-class v1, Ljava/lang/Object;

    const-string v2, "d"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/Continuation;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;I)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p2}, Lkotlinx/coroutines/DispatchedTask;-><init>(I)V

    iput-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->j:Lkotlin/coroutines/Continuation;

    .line 25
    iget-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->j:Lkotlin/coroutines/Continuation;

    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    iput-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->a:Lkotlin/coroutines/CoroutineContext;

    const/4 p1, 0x0

    .line 53
    iput p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->b:I

    .line 64
    sget-object p1, Lkotlinx/coroutines/Active;->a:Lkotlinx/coroutines/Active;

    iput-object p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->d:Ljava/lang/Object;

    return-void
.end method

.method private final a(I)V
    .locals 1

    .line 216
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 218
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/DispatchedKt;->a(Lkotlinx/coroutines/DispatchedTask;I)V

    return-void
.end method

.method private final a(Ljava/lang/Object;I)V
    .locals 2

    .line 376
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->d:Ljava/lang/Object;

    .line 224
    instance-of v1, v0, Lkotlinx/coroutines/NotCompleted;

    if-eqz v1, :cond_1

    .line 225
    sget-object v1, Lkotlinx/coroutines/CancellableContinuationImpl;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 226
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->k()V

    .line 227
    invoke-direct {p0, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->a(I)V

    return-void

    .line 230
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/CancelledContinuation;

    if-eqz v1, :cond_2

    .line 236
    check-cast v0, Lkotlinx/coroutines/CancelledContinuation;

    invoke-virtual {v0}, Lkotlinx/coroutines/CancelledContinuation;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 239
    :cond_2
    invoke-direct {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private final a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already has "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method private final b(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CancelHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/CancelHandler;"
        }
    .end annotation

    .line 213
    instance-of v0, p1, Lkotlinx/coroutines/CancelHandler;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/CancelHandler;

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/InvokeOnCancel;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/InvokeOnCancel;-><init>(Lkotlin/jvm/functions/Function1;)V

    move-object p1, v0

    check-cast p1, Lkotlinx/coroutines/CancelHandler;

    :goto_0
    return-object p1
.end method

.method private final d(Ljava/lang/Object;)V
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already resumed, but proposed with update "

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
.end method

.method private final h()V
    .locals 7

    .line 83
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->j:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Job;->b:Lkotlinx/coroutines/Job$Key;

    check-cast v1, Lkotlin/coroutines/CoroutineContext$Key;

    invoke-interface {v0, v1}, Lkotlin/coroutines/CoroutineContext;->get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_2

    .line 85
    invoke-interface {v1}, Lkotlinx/coroutines/Job;->j()Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 88
    new-instance v0, Lkotlinx/coroutines/ChildContinuation;

    invoke-direct {v0, v1, p0}, Lkotlinx/coroutines/ChildContinuation;-><init>(Lkotlinx/coroutines/Job;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    check-cast v0, Lkotlinx/coroutines/CompletionHandlerBase;

    .line 347
    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 86
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/Job$DefaultImpls;->a(Lkotlinx/coroutines/Job;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    .line 90
    iput-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->i:Lkotlinx/coroutines/DisposableHandle;

    .line 92
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->a()V

    .line 94
    sget-object v0, Lkotlinx/coroutines/NonDisposableHandle;->a:Lkotlinx/coroutines/NonDisposableHandle;

    check-cast v0, Lkotlinx/coroutines/DisposableHandle;

    iput-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->i:Lkotlinx/coroutines/DisposableHandle;

    :cond_1
    return-void

    :cond_2
    return-void
.end method

.method private final i()Z
    .locals 3

    .line 360
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    .line 142
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 140
    :cond_2
    sget-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private final j()Z
    .locals 3

    .line 362
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :pswitch_0
    return v1

    .line 150
    :pswitch_1
    sget-object v0, Lkotlinx/coroutines/CancellableContinuationImpl;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final k()V
    .locals 1

    .line 249
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->i:Lkotlinx/coroutines/DisposableHandle;

    if-eqz v0, :cond_0

    .line 250
    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->a()V

    .line 251
    sget-object v0, Lkotlinx/coroutines/NonDisposableHandle;->a:Lkotlinx/coroutines/NonDisposableHandle;

    check-cast v0, Lkotlinx/coroutines/DisposableHandle;

    iput-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->i:Lkotlinx/coroutines/DisposableHandle;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 378
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->d:Ljava/lang/Object;

    .line 258
    instance-of v1, v0, Lkotlinx/coroutines/NotCompleted;

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    move-object v1, p1

    goto :goto_1

    .line 260
    :cond_0
    new-instance v1, Lkotlinx/coroutines/CompletedIdempotentResult;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/NotCompleted;

    invoke-direct {v1, p2, p1, v2}, Lkotlinx/coroutines/CompletedIdempotentResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lkotlinx/coroutines/NotCompleted;)V

    .line 261
    :goto_1
    sget-object v2, Lkotlinx/coroutines/CancellableContinuationImpl;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 262
    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->k()V

    return-object v0

    .line 265
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/CompletedIdempotentResult;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 266
    check-cast v0, Lkotlinx/coroutines/CompletedIdempotentResult;

    iget-object v1, v0, Lkotlinx/coroutines/CompletedIdempotentResult;->a:Ljava/lang/Object;

    if-ne v1, p2, :cond_5

    .line 267
    iget-object p2, v0, Lkotlinx/coroutines/CompletedIdempotentResult;->b:Ljava/lang/Object;

    if-ne p2, p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    .line 268
    iget-object v2, v0, Lkotlinx/coroutines/CompletedIdempotentResult;->c:Lkotlinx/coroutines/NotCompleted;

    goto :goto_3

    .line 267
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Non-idempotent resume"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_5
    :goto_3
    return-object v2

    :cond_6
    return-object v2
.end method

.method public a(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 3

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->d:Ljava/lang/Object;

    .line 281
    instance-of v1, v0, Lkotlinx/coroutines/NotCompleted;

    if-eqz v1, :cond_1

    .line 282
    new-instance v1, Lkotlinx/coroutines/CompletedExceptionally;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;)V

    .line 283
    sget-object v2, Lkotlinx/coroutines/CancellableContinuationImpl;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->k()V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lkotlinx/coroutines/Job;)Ljava/lang/Throwable;
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->i()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    iget p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->e:I

    invoke-direct {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->a(I)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;I)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    new-instance v0, Lkotlinx/coroutines/CompletedExceptionally;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/CancellableContinuationImpl;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public a(Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 174
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancelHandler;

    .line 364
    :cond_0
    :goto_0
    iget-object v2, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->d:Ljava/lang/Object;

    .line 177
    instance-of v3, v2, Lkotlinx/coroutines/Active;

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 178
    :cond_1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->b(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/CancelHandler;

    move-result-object v1

    .line 179
    :goto_1
    sget-object v3, Lkotlinx/coroutines/CancellableContinuationImpl;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 181
    :cond_2
    instance-of v3, v2, Lkotlinx/coroutines/CancelHandler;

    if-eqz v3, :cond_3

    invoke-direct {p0, p1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    goto :goto_0

    .line 182
    :cond_3
    instance-of v1, v2, Lkotlinx/coroutines/CancelledContinuation;

    if-eqz v1, :cond_7

    .line 188
    move-object v1, v2

    check-cast v1, Lkotlinx/coroutines/CancelledContinuation;

    invoke-virtual {v1}, Lkotlinx/coroutines/CancelledContinuation;->b()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0, p1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    .line 193
    :cond_4
    :try_start_0
    instance-of v1, v2, Lkotlinx/coroutines/CompletedExceptionally;

    if-nez v1, :cond_5

    move-object v2, v0

    :cond_5
    check-cast v2, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v2, :cond_6

    iget-object v1, v2, Lkotlinx/coroutines/CompletedExceptionally;->a:Ljava/lang/Throwable;

    goto :goto_2

    :cond_6
    move-object v1, v0

    .line 367
    :goto_2
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 370
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v1

    .line 371
    new-instance v2, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in cancellation handler for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v2, Ljava/lang/Throwable;

    const/4 p1, 0x4

    .line 369
    invoke-static {v1, v2, v0, p1, v0}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;ILjava/lang/Object;)V

    :goto_3
    return-void

    :cond_7
    return-void
.end method

.method public a(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineDispatcher;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "receiver$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->j:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlinx/coroutines/DispatchedContinuation;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lkotlinx/coroutines/DispatchedContinuation;

    if-eqz v0, :cond_1

    .line 299
    iget-object v2, v0, Lkotlinx/coroutines/DispatchedContinuation;->c:Lkotlinx/coroutines/CoroutineDispatcher;

    :cond_1
    if-ne v2, p1, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    iget p1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->e:I

    :goto_0
    invoke-direct {p0, p2, p1}, Lkotlinx/coroutines/CancellableContinuationImpl;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 73
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->b()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/NotCompleted;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .line 69
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->d:Ljava/lang/Object;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 309
    instance-of v0, p1, Lkotlinx/coroutines/CompletedIdempotentResult;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/CompletedIdempotentResult;

    iget-object p1, p1, Lkotlinx/coroutines/CompletedIdempotentResult;->b:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method

.method public b(Ljava/lang/Throwable;)Z
    .locals 5

    .line 349
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->d:Ljava/lang/Object;

    .line 107
    instance-of v1, v0, Lkotlinx/coroutines/NotCompleted;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 109
    :cond_0
    new-instance v1, Lkotlinx/coroutines/CancelledContinuation;

    move-object v3, p0

    check-cast v3, Lkotlin/coroutines/Continuation;

    instance-of v4, v0, Lkotlinx/coroutines/CancelHandler;

    invoke-direct {v1, v3, p1, v4}, Lkotlinx/coroutines/CancelledContinuation;-><init>(Lkotlin/coroutines/Continuation;Ljava/lang/Throwable;Z)V

    .line 110
    sget-object v3, Lkotlinx/coroutines/CancellableContinuationImpl;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 112
    :try_start_0
    check-cast v0, Lkotlinx/coroutines/CancelHandler;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/CancelHandler;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 354
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    .line 355
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in cancellation handler for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p1}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    const/4 p1, 0x4

    const/4 v3, 0x0

    .line 353
    invoke-static {v0, v1, v3, p1, v3}, Lkotlinx/coroutines/CoroutineExceptionHandlerKt;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;ILjava/lang/Object;)V

    .line 114
    :cond_2
    :goto_1
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->k()V

    .line 115
    invoke-direct {p0, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;->a(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/Object;
    .locals 2

    .line 159
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->h()V

    .line 160
    invoke-direct {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 162
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->b()Ljava/lang/Object;

    move-result-object v0

    .line 163
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-nez v1, :cond_1

    .line 164
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 163
    :cond_1
    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v0, v0, Lkotlinx/coroutines/CompletedExceptionally;->a:Ljava/lang/Throwable;

    move-object v1, p0

    check-cast v1, Lkotlin/coroutines/Continuation;

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->a(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "CancellableContinuation"

    return-object v0
.end method

.method public final f()Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->j:Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 2

    .line 99
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->j:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    return-object v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 25
    iget-object v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->a:Lkotlin/coroutines/CoroutineContext;

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 1

    .line 168
    invoke-static {p1}, Lkotlinx/coroutines/CompletedExceptionallyKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget v0, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->e:I

    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/CancellableContinuationImpl;->j:Lkotlin/coroutines/Continuation;

    invoke-static {v1}, Lkotlinx/coroutines/DebugKt;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/CancellableContinuationImpl;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/DebugKt;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
