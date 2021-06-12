.class final Lkotlinx/coroutines/sync/MutexImpl$TryEnqueueLockDesc;
.super Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/sync/MutexImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TryEnqueueLockDesc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc<",
        "Lkotlinx/coroutines/sync/MutexImpl$LockSelect<",
        "TR;>;>;"
    }
.end annotation


# instance fields
.field public final c:Lkotlinx/coroutines/sync/MutexImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/sync/MutexImpl;Ljava/lang/Object;Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/sync/MutexImpl;",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/sync/MutexImpl$LockedQueue;",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkotlinx/coroutines/sync/Mutex;",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "mutex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "select"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    check-cast p3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    new-instance v0, Lkotlinx/coroutines/sync/MutexImpl$LockSelect;

    move-object v1, p1

    check-cast v1, Lkotlinx/coroutines/sync/Mutex;

    invoke-direct {v0, p2, v1, p4, p5}, Lkotlinx/coroutines/sync/MutexImpl$LockSelect;-><init>(Ljava/lang/Object;Lkotlinx/coroutines/sync/Mutex;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-direct {p0, p3, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    iput-object p1, p0, Lkotlinx/coroutines/sync/MutexImpl$TryEnqueueLockDesc;->c:Lkotlinx/coroutines/sync/MutexImpl;

    return-void
.end method


# virtual methods
.method protected a(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;
    .locals 2

    const-string v0, "affected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "next"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lkotlinx/coroutines/sync/MutexImpl$TryEnqueueLockDesc;->c:Lkotlinx/coroutines/sync/MutexImpl;

    iget-object v0, v0, Lkotlinx/coroutines/sync/MutexImpl;->a:Ljava/lang/Object;

    iget-object v1, p0, Lkotlinx/coroutines/sync/MutexImpl$TryEnqueueLockDesc;->a:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    if-eq v0, v1, :cond_0

    invoke-static {}, Lkotlinx/coroutines/sync/MutexKt;->d()Lkotlinx/coroutines/internal/Symbol;

    move-result-object p1

    return-object p1

    .line 303
    :cond_0
    invoke-super {p0, p1, p2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AddLastDesc;->a(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
