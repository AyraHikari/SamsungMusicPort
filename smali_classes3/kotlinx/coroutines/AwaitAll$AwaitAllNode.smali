.class final Lkotlinx/coroutines/AwaitAll$AwaitAllNode;
.super Lkotlinx/coroutines/JobNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/AwaitAll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AwaitAllNode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/JobNode<",
        "Lkotlinx/coroutines/Job;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lkotlinx/coroutines/DisposableHandle;

.field final synthetic b:Lkotlinx/coroutines/AwaitAll;

.field private volatile h:Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/AwaitAll<",
            "TT;>.DisposeHandlersOnCancel;"
        }
    .end annotation
.end field

.field private final i:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Ljava/util/List<",
            "+TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/AwaitAll;Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/Job;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Ljava/util/List<",
            "+TT;>;>;",
            "Lkotlinx/coroutines/Job;",
            ")V"
        }
    .end annotation

    const-string v0, "continuation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "job"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;->b:Lkotlinx/coroutines/AwaitAll;

    invoke-direct {p0, p3}, Lkotlinx/coroutines/JobNode;-><init>(Lkotlinx/coroutines/Job;)V

    iput-object p2, p0, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;->i:Lkotlinx/coroutines/CancellableContinuation;

    return-void
.end method


# virtual methods
.method public final F_()Lkotlinx/coroutines/DisposableHandle;
    .locals 2

    .line 95
    iget-object v0, p0, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;->a:Lkotlinx/coroutines/DisposableHandle;

    if-nez v0, :cond_0

    const-string v1, "handle"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;->i:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/CancellableContinuation;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 104
    iget-object v0, p0, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;->i:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/CancellableContinuation;->a(Ljava/lang/Object;)V

    .line 106
    iget-object p1, p0, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;->h:Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;

    if-eqz p1, :cond_2

    .line 108
    invoke-virtual {p1}, Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;->a()V

    goto :goto_1

    .line 110
    :cond_0
    iget-object p1, p0, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;->b:Lkotlinx/coroutines/AwaitAll;

    sget-object v0, Lkotlinx/coroutines/AwaitAll;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->decrementAndGet(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_2

    .line 111
    iget-object p1, p0, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;->i:Lkotlinx/coroutines/CancellableContinuation;

    check-cast p1, Lkotlin/coroutines/Continuation;

    iget-object v0, p0, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;->b:Lkotlinx/coroutines/AwaitAll;

    invoke-static {v0}, Lkotlinx/coroutines/AwaitAll;->a(Lkotlinx/coroutines/AwaitAll;)[Lkotlinx/coroutines/Deferred;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 119
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 111
    invoke-interface {v4}, Lkotlinx/coroutines/Deferred;->f()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 121
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 111
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/AwaitAll<",
            "TT;>.DisposeHandlersOnCancel;)V"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;->h:Lkotlinx/coroutines/AwaitAll$DisposeHandlersOnCancel;

    return-void
.end method

.method public final a(Lkotlinx/coroutines/DisposableHandle;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;->a:Lkotlinx/coroutines/DisposableHandle;

    return-void
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/AwaitAll$AwaitAllNode;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method
