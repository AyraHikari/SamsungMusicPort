.class final Lkotlinx/coroutines/sync/MutexImpl$LockCont;
.super Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/MutexImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LockCont"
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/CancellableContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/CancellableContinuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlinx/coroutines/CancellableContinuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "cont"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    invoke-direct {p0, p1}, Lkotlinx/coroutines/sync/MutexImpl$LockWaiter;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lkotlinx/coroutines/sync/MutexImpl$LockCont;->a:Lkotlinx/coroutines/CancellableContinuation;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$LockCont;->a:Lkotlinx/coroutines/CancellableContinuation;

    invoke-interface {v0, p1}, Lkotlinx/coroutines/CancellableContinuation;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 4

    .line 377
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$LockCont;->a:Lkotlinx/coroutines/CancellableContinuation;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3, v2}, Lkotlinx/coroutines/CancellableContinuation$DefaultImpls;->a(Lkotlinx/coroutines/CancellableContinuation;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LockCont["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/sync/MutexImpl$LockCont;->h:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/sync/MutexImpl$LockCont;->a:Lkotlinx/coroutines/CancellableContinuation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
