.class final Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;
.super Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/EventLoopImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DelayedResumeTask"
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/EventLoopImplBase;

.field private final c:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/EventLoopImplBase;JLkotlinx/coroutines/CancellableContinuation;)V
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

    const-string v0, "cont"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iput-object p1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;->a:Lkotlinx/coroutines/EventLoopImplBase;

    .line 291
    invoke-direct {p0, p2, p3}, Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;-><init>(J)V

    iput-object p4, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;->c:Lkotlinx/coroutines/CancellableContinuation;

    .line 294
    iget-object p1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;->c:Lkotlinx/coroutines/CancellableContinuation;

    move-object p2, p0

    check-cast p2, Lkotlinx/coroutines/DisposableHandle;

    invoke-static {p1, p2}, Lkotlinx/coroutines/CancellableContinuationKt;->a(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/DisposableHandle;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 298
    iget-object v0, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;->c:Lkotlinx/coroutines/CancellableContinuation;

    iget-object v1, p0, Lkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask;->a:Lkotlinx/coroutines/EventLoopImplBase;

    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuation;->a(Lkotlinx/coroutines/CoroutineDispatcher;Ljava/lang/Object;)V

    return-void
.end method
