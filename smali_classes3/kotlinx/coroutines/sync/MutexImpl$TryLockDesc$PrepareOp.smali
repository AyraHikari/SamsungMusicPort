.class final Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc$PrepareOp;
.super Lkotlinx/coroutines/internal/OpDescriptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrepareOp"
.end annotation


# instance fields
.field final synthetic a:Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;

.field private final b:Lkotlinx/coroutines/internal/AtomicOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/AtomicOp<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;Lkotlinx/coroutines/internal/AtomicOp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/AtomicOp<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "op"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc$PrepareOp;->a:Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc;

    invoke-direct {p0}, Lkotlinx/coroutines/internal/OpDescriptor;-><init>()V

    iput-object p2, p0, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc$PrepareOp;->b:Lkotlinx/coroutines/internal/AtomicOp;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 274
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc$PrepareOp;->b:Lkotlinx/coroutines/internal/AtomicOp;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/AtomicOp;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->a()Lkotlinx/coroutines/sync/Empty;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$TryLockDesc$PrepareOp;->b:Lkotlinx/coroutines/internal/AtomicOp;

    :goto_0
    if-eqz p1, :cond_1

    .line 275
    check-cast p1, Lkotlinx/coroutines/sync/MutexImpl;

    sget-object v1, Lkotlinx/coroutines/sync/MutexImpl;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.sync.MutexImpl"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
