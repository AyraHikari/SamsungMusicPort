.class final Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;
.super Lkotlinx/coroutines/internal/OpDescriptor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PrepareOp"
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

.field public final b:Lkotlinx/coroutines/internal/AtomicOp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/internal/AtomicOp<",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/AtomicOp;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
            "Lkotlinx/coroutines/internal/AtomicOp<",
            "-",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListNode;",
            ">;",
            "Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;",
            ")V"
        }
    .end annotation

    const-string v0, "next"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "op"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "desc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    invoke-direct {p0}, Lkotlinx/coroutines/internal/OpDescriptor;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->a:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    iput-object p2, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->b:Lkotlinx/coroutines/internal/AtomicOp;

    iput-object p3, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->c:Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    if-eqz p1, :cond_4

    .line 425
    check-cast p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 426
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->c:Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    iget-object v1, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->a:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-virtual {v0, p1, v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->a(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 428
    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->b()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 430
    iget-object v1, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->a:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-static {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->b(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/internal/Removed;

    move-result-object v1

    .line 431
    sget-object v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p1, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 432
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->k()V

    goto :goto_0

    .line 436
    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->b:Lkotlinx/coroutines/internal/AtomicOp;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/internal/AtomicOp;->b(Ljava/lang/Object;)Z

    .line 438
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v2, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->a:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-virtual {v1, p1, p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v0

    .line 442
    :cond_2
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->b:Lkotlinx/coroutines/internal/AtomicOp;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/AtomicOp;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->a:Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->b:Lkotlinx/coroutines/internal/AtomicOp;

    .line 443
    :goto_1
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    const/4 p1, 0x0

    return-object p1

    .line 425
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
