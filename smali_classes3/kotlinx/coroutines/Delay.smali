.class public interface abstract Lkotlinx/coroutines/Delay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/Delay$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract a(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;
.end method

.method public abstract a(JLkotlinx/coroutines/CancellableContinuation;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method
