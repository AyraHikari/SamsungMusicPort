.class Lkotlinx/coroutines/TimeoutCoroutine;
.super Lkotlinx/coroutines/AbstractCoroutine;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lkotlin/coroutines/Continuation;
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U:",
        "Ljava/lang/Object;",
        "T::TU;>",
        "Lkotlinx/coroutines/AbstractCoroutine<",
        "TT;>;",
        "Ljava/lang/Runnable;",
        "Lkotlin/coroutines/Continuation<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;"
    }
.end annotation


# instance fields
.field public final c:J

.field public final d:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TU;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(JLkotlin/coroutines/Continuation;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/coroutines/Continuation<",
            "-TU;>;)V"
        }
    .end annotation

    const-string v0, "uCont"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-interface {p3}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/AbstractCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Z)V

    iput-wide p1, p0, Lkotlinx/coroutines/TimeoutCoroutine;->c:J

    iput-object p3, p0, Lkotlinx/coroutines/TimeoutCoroutine;->d:Lkotlin/coroutines/Continuation;

    return-void
.end method


# virtual methods
.method public H_()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public a(Ljava/lang/Object;IZ)V
    .locals 0

    .line 95
    instance-of p3, p1, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz p3, :cond_0

    .line 96
    iget-object p3, p0, Lkotlinx/coroutines/TimeoutCoroutine;->d:Lkotlin/coroutines/Continuation;

    check-cast p1, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object p1, p1, Lkotlinx/coroutines/CompletedExceptionally;->a:Ljava/lang/Throwable;

    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/ResumeModeKt;->b(Lkotlin/coroutines/Continuation;Ljava/lang/Throwable;I)V

    goto :goto_0

    .line 98
    :cond_0
    iget-object p3, p0, Lkotlinx/coroutines/TimeoutCoroutine;->d:Lkotlin/coroutines/Continuation;

    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/ResumeModeKt;->b(Lkotlin/coroutines/Continuation;Ljava/lang/Object;I)V

    :goto_0
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lkotlinx/coroutines/AbstractCoroutine;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "(timeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkotlinx/coroutines/TimeoutCoroutine;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 3

    .line 86
    iget-object v0, p0, Lkotlinx/coroutines/TimeoutCoroutine;->d:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;->getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 3

    .line 87
    iget-object v0, p0, Lkotlinx/coroutines/TimeoutCoroutine;->d:Lkotlin/coroutines/Continuation;

    instance-of v1, v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public run()V
    .locals 3

    .line 90
    iget-wide v0, p0, Lkotlinx/coroutines/TimeoutCoroutine;->c:J

    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/Job;

    invoke-static {v0, v1, v2}, Lkotlinx/coroutines/TimeoutKt;->a(JLkotlinx/coroutines/Job;)Lkotlinx/coroutines/TimeoutCancellationException;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/TimeoutCoroutine;->d(Ljava/lang/Throwable;)Z

    return-void
.end method
