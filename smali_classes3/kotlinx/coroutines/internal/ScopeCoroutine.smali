.class public Lkotlinx/coroutines/internal/ScopeCoroutine;
.super Lkotlinx/coroutines/AbstractCoroutine;
.source "SourceFile"

# interfaces
.implements Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/AbstractCoroutine<",
        "TT;>;",
        "Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;"
    }
.end annotation


# instance fields
.field public final c:Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/coroutines/Continuation<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
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

    const/4 v0, 0x1

    .line 17
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/AbstractCoroutine;-><init>(Lkotlin/coroutines/CoroutineContext;Z)V

    iput-object p2, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->c:Lkotlin/coroutines/Continuation;

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

    .line 24
    instance-of p3, p1, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz p3, :cond_1

    const/4 p3, 0x4

    if-ne p2, p3, :cond_0

    .line 25
    check-cast p1, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object p1, p1, Lkotlinx/coroutines/CompletedExceptionally;->a:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    check-cast p1, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object p1, p1, Lkotlinx/coroutines/CompletedExceptionally;->a:Ljava/lang/Throwable;

    iget-object p3, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->c:Lkotlin/coroutines/Continuation;

    invoke-static {p1, p3}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->a(Ljava/lang/Throwable;Lkotlin/coroutines/Continuation;)Ljava/lang/Throwable;

    move-result-object p1

    .line 26
    :goto_0
    iget-object p3, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->c:Lkotlin/coroutines/Continuation;

    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/ResumeModeKt;->b(Lkotlin/coroutines/Continuation;Ljava/lang/Throwable;I)V

    goto :goto_1

    .line 28
    :cond_1
    iget-object p3, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->c:Lkotlin/coroutines/Continuation;

    invoke-static {p3, p1, p2}, Lkotlinx/coroutines/ResumeModeKt;->b(Lkotlin/coroutines/Continuation;Ljava/lang/Object;I)V

    :goto_1
    return-void
.end method

.method public final getCallerFrame()Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;
    .locals 1

    .line 18
    iget-object v0, p0, Lkotlinx/coroutines/internal/ScopeCoroutine;->c:Lkotlin/coroutines/Continuation;

    check-cast v0, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    return-object v0
.end method

.method public final getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
