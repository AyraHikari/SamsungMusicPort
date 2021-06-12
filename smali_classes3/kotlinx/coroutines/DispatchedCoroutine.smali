.class final Lkotlinx/coroutines/DispatchedCoroutine;
.super Lkotlinx/coroutines/internal/ScopeCoroutine;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/ScopeCoroutine<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lkotlinx/coroutines/DispatchedCoroutine;

    const-string v1, "d"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/DispatchedCoroutine;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uCont"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/internal/ScopeCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/Continuation;)V

    const/4 p1, 0x0

    .line 200
    iput p1, p0, Lkotlinx/coroutines/DispatchedCoroutine;->d:I

    return-void
.end method

.method private final q()Z
    .locals 3

    .line 239
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/DispatchedCoroutine;->d:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    .line 207
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already suspended"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 205
    :cond_2
    sget-object v0, Lkotlinx/coroutines/DispatchedCoroutine;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2
.end method

.method private final r()Z
    .locals 3

    .line 241
    :cond_0
    iget v0, p0, Lkotlinx/coroutines/DispatchedCoroutine;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already resumed"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :pswitch_0
    return v1

    .line 215
    :pswitch_1
    sget-object v0, Lkotlinx/coroutines/DispatchedCoroutine;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

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


# virtual methods
.method public H_()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/Object;IZ)V
    .locals 1

    .line 223
    invoke-direct {p0}, Lkotlinx/coroutines/DispatchedCoroutine;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 225
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lkotlinx/coroutines/internal/ScopeCoroutine;->a(Ljava/lang/Object;IZ)V

    return-void
.end method

.method public final h()Ljava/lang/Object;
    .locals 2

    .line 229
    invoke-direct {p0}, Lkotlinx/coroutines/DispatchedCoroutine;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 231
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/DispatchedCoroutine;->l()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/JobSupportKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 232
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v0, v0, Lkotlinx/coroutines/CompletedExceptionally;->a:Ljava/lang/Throwable;

    throw v0
.end method
