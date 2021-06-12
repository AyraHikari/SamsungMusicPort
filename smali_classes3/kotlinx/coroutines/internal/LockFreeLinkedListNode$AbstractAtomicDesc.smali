.class public abstract Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;
.super Lkotlinx/coroutines/internal/AtomicDesc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractAtomicDesc"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 407
    invoke-direct {p0}, Lkotlinx/coroutines/internal/AtomicDesc;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlinx/coroutines/internal/AtomicOp;)Ljava/lang/Object;
    .locals 4
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

    .line 451
    :cond_0
    :goto_0
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->a(Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    .line 453
    iget-object v1, v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->d:Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne v1, p1, :cond_1

    return-object v2

    .line 456
    :cond_1
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/AtomicOp;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    .line 457
    :cond_2
    instance-of v2, v1, Lkotlinx/coroutines/internal/OpDescriptor;

    if-eqz v2, :cond_3

    .line 459
    check-cast v1, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v1, v0}, Lkotlinx/coroutines/internal/OpDescriptor;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 463
    :cond_3
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->a(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    return-object v2

    .line 465
    :cond_4
    invoke-virtual {p0, v0, v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->b(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_0

    .line 466
    :cond_5
    new-instance v2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;

    if-eqz v1, :cond_7

    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-direct {v2, v3, p1, p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/AtomicOp;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;)V

    .line 467
    sget-object v3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    invoke-virtual {v2, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc$PrepareOp;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 470
    invoke-static {}, Lkotlinx/coroutines/internal/LockFreeLinkedListKt;->b()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_6

    goto :goto_0

    :cond_6
    return-object v0

    .line 466
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "affected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "next"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected abstract a(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;
.end method

.method protected abstract a()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.end method

.method protected a(Lkotlinx/coroutines/internal/OpDescriptor;)Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
    .locals 1

    const-string v0, "op"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->a()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    return-object p1
.end method

.method public final a(Lkotlinx/coroutines/internal/AtomicOp;Ljava/lang/Object;)V
    .locals 4
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

    const/4 v0, 0x1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 478
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->a()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 479
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->b()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_1

    .line 480
    invoke-virtual {p0, v1, v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->b(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 481
    :goto_1
    sget-object v3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->e:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, v1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 482
    invoke-virtual {p0, v1, v2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;->c(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V

    :cond_2
    return-void

    .line 479
    :cond_3
    move-object p1, p0

    check-cast p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    xor-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_4

    return-void

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 478
    :cond_5
    move-object p1, p0

    check-cast p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$AbstractAtomicDesc;

    xor-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_6

    return-void

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method protected abstract b(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Ljava/lang/Object;
.end method

.method protected abstract b()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;
.end method

.method protected b(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "affected"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "next"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected abstract c(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)V
.end method
