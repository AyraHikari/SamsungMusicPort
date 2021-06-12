.class final Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;
.super Lkotlinx/coroutines/internal/AtomicDesc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/MutexImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TryLockDesc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc$PrepareOp;
    }
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/sync/MutexImpl;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "mutex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    invoke-direct {p0}, Lkotlinx/coroutines/internal/AtomicDesc;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;->a:Lkotlinx/coroutines/sync/MutexImpl;

    iput-object p2, p0, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/internal/AtomicOp;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/AtomicOp<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "op"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    new-instance v0, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc$PrepareOp;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc$PrepareOp;-><init>(Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;Lkotlinx/coroutines/internal/AtomicOp;)V

    .line 282
    iget-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;->a:Lkotlinx/coroutines/sync/MutexImpl;

    sget-object v1, Lkotlinx/coroutines/sync/MutexImpl;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->a()Lkotlinx/coroutines/sync/Empty;

    move-result-object v2

    invoke-virtual {v1, p1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->b()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    return-object p1

    .line 283
    :cond_0
    iget-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;->a:Lkotlinx/coroutines/sync/MutexImpl;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc$PrepareOp;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lkotlinx/coroutines/internal/AtomicOp;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/AtomicOp<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "op"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 287
    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->a()Lkotlinx/coroutines/sync/Empty;

    move-result-object p2

    goto :goto_0

    .line 288
    :cond_0
    iget-object p2, p0, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;->b:Ljava/lang/Object;

    if-nez p2, :cond_1

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->c()Lkotlinx/coroutines/sync/Empty;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p2, Lkotlinx/coroutines/sync/Empty;

    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;->b:Ljava/lang/Object;

    invoke-direct {p2, v0}, Lkotlinx/coroutines/sync/Empty;-><init>(Ljava/lang/Object;)V

    .line 290
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;->a:Lkotlinx/coroutines/sync/MutexImpl;

    sget-object v1, Lkotlinx/coroutines/sync/MutexImpl;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method
