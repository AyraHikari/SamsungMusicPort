.class public final Lkotlinx/coroutines/selects/SelectBuilderImpl;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListHead;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/Continuation;
.implements Lkotlinx/coroutines/selects/SelectInstance;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;,
        Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListHead;",
        "Lkotlin/coroutines/Continuation<",
        "TR;>;",
        "Lkotlinx/coroutines/selects/SelectInstance<",
        "TR;>;"
    }
.end annotation


# static fields
.field static final b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field static final h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile a:Ljava/lang/Object;

.field volatile c:Ljava/lang/Object;

.field private volatile i:Lkotlinx/coroutines/DisposableHandle;

.field private final j:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;

    const-class v1, Ljava/lang/Object;

    const-string v2, "a"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-class v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;

    const-class v1, Ljava/lang/Object;

    const-string v2, "c"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public static final synthetic a(Lkotlinx/coroutines/selects/SelectBuilderImpl;)V
    .locals 0

    .line 197
    invoke-direct {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->m()V

    return-void
.end method

.method public static final synthetic b(Lkotlinx/coroutines/selects/SelectBuilderImpl;)Ljava/lang/Object;
    .locals 0

    .line 197
    invoke-direct {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->l()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final l()Ljava/lang/Object;
    .locals 2

    .line 464
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->a:Ljava/lang/Object;

    .line 296
    instance-of v1, v0, Lkotlinx/coroutines/internal/OpDescriptor;

    if-nez v1, :cond_0

    return-object v0

    .line 297
    :cond_0
    check-cast v0, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private final m()V
    .locals 2

    .line 326
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->i:Lkotlinx/coroutines/DisposableHandle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->a()V

    .line 474
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;->f()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 475
    :goto_0
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    .line 476
    instance-of v1, v0, Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;

    .line 328
    iget-object v1, v1, Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;->a:Lkotlinx/coroutines/DisposableHandle;

    invoke-interface {v1}, Lkotlinx/coroutines/DisposableHandle;->a()V

    .line 477
    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->g()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void

    .line 474
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/internal/AtomicDesc;)Ljava/lang/Object;
    .locals 2

    const-string v0, "desc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    new-instance v0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;-><init>(Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlinx/coroutines/internal/AtomicDesc;Z)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a()Lkotlin/coroutines/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/Continuation<",
            "TR;>;"
        }
    .end annotation

    .line 229
    move-object v0, p0

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public a(JLkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    const/4 p1, 0x0

    .line 412
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 413
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->a()Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-void

    .line 480
    :cond_1
    new-instance v0, Lkotlinx/coroutines/selects/SelectBuilderImpl$onTimeout$$inlined$Runnable$1;

    invoke-direct {v0, p0, p3}, Lkotlinx/coroutines/selects/SelectBuilderImpl$onTimeout$$inlined$Runnable$1;-><init>(Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Ljava/lang/Runnable;

    .line 422
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p3

    invoke-static {p3}, Lkotlinx/coroutines/DelayKt;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Delay;

    move-result-object p3

    invoke-interface {p3, p1, p2, v0}, Lkotlinx/coroutines/Delay;->a(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->a(Lkotlinx/coroutines/DisposableHandle;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 3

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 450
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->c:Ljava/lang/Object;

    .line 452
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->b()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->b()Ljava/lang/Object;

    move-result-object v0

    .line 256
    new-instance v1, Lkotlinx/coroutines/CompletedExceptionally;

    invoke-direct {v1, p1}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;)V

    sget-object v2, Lkotlinx/coroutines/selects/SelectBuilderImpl;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 453
    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    sget-object v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 454
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->c()Ljava/lang/Object;

    move-result-object v2

    .line 453
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->j:Lkotlin/coroutines/Continuation;

    invoke-static {v0}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-static {v0, p1}, Lkotlinx/coroutines/DispatchedKt;->a(Lkotlin/coroutines/Continuation;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 459
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 447
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be selected first"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public a(Lkotlinx/coroutines/DisposableHandle;)V
    .locals 4

    const-string v0, "handle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    new-instance v0, Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl$DisposeNode;-><init>(Lkotlinx/coroutines/DisposableHandle;)V

    .line 314
    :cond_0
    invoke-direct {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->l()Ljava/lang/Object;

    move-result-object v1

    .line 315
    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/selects/SelectBuilderImpl;

    if-ne v1, v2, :cond_2

    .line 466
    new-instance v1, Lkotlinx/coroutines/selects/SelectBuilderImpl$disposeOnSelect$$inlined$addLastIf$1;

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-direct {v1, v2, v2, p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl$disposeOnSelect$$inlined$addLastIf$1;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/selects/SelectBuilderImpl;)V

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;

    .line 470
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->h()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    check-cast v3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 471
    invoke-virtual {v3, v2, p0, v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->a(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x0

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_0

    return-void

    .line 470
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 319
    :cond_2
    invoke-interface {p1}, Lkotlinx/coroutines/DisposableHandle;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 4

    .line 334
    instance-of v0, p1, Lkotlinx/coroutines/internal/OpDescriptor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 336
    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->l()Ljava/lang/Object;

    move-result-object v0

    .line 338
    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/selects/SelectBuilderImpl;

    if-ne v0, v3, :cond_2

    .line 339
    sget-object v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0, p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    invoke-direct {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->m()V

    return v2

    :cond_2
    if-nez p1, :cond_3

    return v1

    :cond_3
    if-ne v0, p1, :cond_4

    return v2

    :cond_4
    return v1

    .line 334
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cannot use OpDescriptor as idempotent marker"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public b(Lkotlinx/coroutines/internal/AtomicDesc;)Ljava/lang/Object;
    .locals 2

    const-string v0, "desc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    new-instance v0, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;-><init>(Lkotlinx/coroutines/selects/SelectBuilderImpl;Lkotlinx/coroutines/internal/AtomicDesc;Z)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/selects/SelectBuilderImpl$AtomicSelectOp;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 2

    .line 309
    invoke-direct {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->l()Ljava/lang/Object;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/selects/SelectBuilderImpl;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1

    .line 227
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->j:Lkotlin/coroutines/Continuation;

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 3

    .line 432
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 435
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->c:Ljava/lang/Object;

    .line 437
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->b()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->b()Ljava/lang/Object;

    move-result-object v0

    .line 249
    invoke-static {p1}, Lkotlinx/coroutines/CompletedExceptionallyKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lkotlinx/coroutines/selects/SelectBuilderImpl;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 438
    :cond_1
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    sget-object v0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->h:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 439
    invoke-static {}, Lkotlinx/coroutines/selects/SelectKt;->c()Ljava/lang/Object;

    move-result-object v2

    .line 438
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lkotlinx/coroutines/selects/SelectBuilderImpl;->j:Lkotlin/coroutines/Continuation;

    invoke-interface {v0, p1}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 444
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already resumed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 432
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be selected first"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method
