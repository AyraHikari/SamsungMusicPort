.class public Lkotlinx/coroutines/JobSupport;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/ChildJob;
.implements Lkotlinx/coroutines/Job;
.implements Lkotlinx/coroutines/ParentJob;
.implements Lkotlinx/coroutines/selects/SelectClause0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/JobSupport$Finishing;,
        Lkotlinx/coroutines/JobSupport$ChildCompletion;,
        Lkotlinx/coroutines/JobSupport$AwaitContinuation;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile a:Ljava/lang/Object;

.field private volatile d:Lkotlinx/coroutines/ChildHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lkotlinx/coroutines/JobSupport;

    const-class v1, Ljava/lang/Object;

    const-string v2, "a"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lkotlinx/coroutines/JobSupport;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 127
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->b()Lkotlinx/coroutines/Empty;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->c()Lkotlinx/coroutines/Empty;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lkotlinx/coroutines/JobSupport;->a:Ljava/lang/Object;

    return-void
.end method

.method private final a(Ljava/lang/Object;)I
    .locals 4

    .line 348
    instance-of v0, p1, Lkotlinx/coroutines/Empty;

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 349
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/Empty;

    invoke-virtual {v0}, Lkotlinx/coroutines/Empty;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 350
    :cond_0
    sget-object v0, Lkotlinx/coroutines/JobSupport;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->b()Lkotlinx/coroutines/Empty;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    .line 351
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->e()V

    return v1

    .line 354
    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/InactiveNodeList;

    if-eqz v0, :cond_4

    .line 355
    sget-object v0, Lkotlinx/coroutines/JobSupport;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-object v3, p1

    check-cast v3, Lkotlinx/coroutines/InactiveNodeList;

    invoke-virtual {v3}, Lkotlinx/coroutines/InactiveNodeList;->G_()Lkotlinx/coroutines/NodeList;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    .line 356
    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->e()V

    return v1

    :cond_4
    return v3
.end method

.method private final a(Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 8

    .line 753
    instance-of v0, p1, Lkotlinx/coroutines/Incomplete;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 761
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/Empty;

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-nez v0, :cond_1

    instance-of v0, p1, Lkotlinx/coroutines/JobNode;

    if-eqz v0, :cond_3

    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/ChildHandleNode;

    if-nez v0, :cond_3

    instance-of v0, p2, Lkotlinx/coroutines/CompletedExceptionally;

    if-nez v0, :cond_3

    .line 762
    check-cast p1, Lkotlinx/coroutines/Incomplete;

    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/JobSupport;->a(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;I)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v3

    .line 766
    :cond_3
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/Incomplete;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->a(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/NodeList;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 770
    instance-of v5, p1, Lkotlinx/coroutines/JobSupport$Finishing;

    const/4 v6, 0x0

    if-nez v5, :cond_4

    move-object v5, v6

    goto :goto_0

    :cond_4
    move-object v5, p1

    :goto_0
    check-cast v5, Lkotlinx/coroutines/JobSupport$Finishing;

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    new-instance v5, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-direct {v5, v4, v1, v6}, Lkotlinx/coroutines/JobSupport$Finishing;-><init>(Lkotlinx/coroutines/NodeList;ZLjava/lang/Throwable;)V

    .line 772
    :goto_1
    move-object v7, v6

    check-cast v7, Ljava/lang/Throwable;

    .line 1437
    monitor-enter v5

    .line 775
    :try_start_0
    iget-boolean v7, v5, Lkotlinx/coroutines/JobSupport$Finishing;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_6

    monitor-exit v5

    return v1

    .line 777
    :cond_6
    :try_start_1
    iput-boolean v3, v5, Lkotlinx/coroutines/JobSupport$Finishing;->a:Z

    if-eq v5, p1, :cond_7

    .line 782
    sget-object v1, Lkotlinx/coroutines/JobSupport;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_7

    monitor-exit v5

    return v2

    .line 785
    :cond_7
    :try_start_2
    invoke-virtual {v5}, Lkotlinx/coroutines/JobSupport$Finishing;->c()Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_e

    .line 787
    invoke-virtual {v5}, Lkotlinx/coroutines/JobSupport$Finishing;->d()Z

    move-result p1

    .line 788
    instance-of v1, p2, Lkotlinx/coroutines/CompletedExceptionally;

    if-nez v1, :cond_8

    move-object v1, v6

    goto :goto_2

    :cond_8
    move-object v1, p2

    :goto_2
    check-cast v1, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lkotlinx/coroutines/CompletedExceptionally;->a:Ljava/lang/Throwable;

    invoke-virtual {v5, v1}, Lkotlinx/coroutines/JobSupport$Finishing;->b(Ljava/lang/Throwable;)V

    .line 790
    :cond_9
    iget-object v1, v5, Lkotlinx/coroutines/JobSupport$Finishing;->b:Ljava/lang/Throwable;

    xor-int/2addr p1, v3

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    move-object v1, v6

    .line 791
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v5

    if-eqz v1, :cond_b

    .line 793
    invoke-direct {p0, v4, v1}, Lkotlinx/coroutines/JobSupport;->a(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V

    .line 795
    :cond_b
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->b(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/ChildHandleNode;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 796
    invoke-direct {p0, v5, p1, p2}, Lkotlinx/coroutines/JobSupport;->a(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p1, 0x2

    return p1

    .line 799
    :cond_c
    invoke-direct {p0, v5, p2, p3}, Lkotlinx/coroutines/JobSupport;->a(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_d

    return v3

    :cond_d
    return v2

    :cond_e
    :try_start_3
    const-string p1, "Failed requirement."

    .line 785
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    .line 791
    monitor-exit v5

    throw p1

    :cond_f
    return v2
.end method

.method private final a(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/util/List;)Ljava/lang/Throwable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/JobSupport$Finishing;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .line 236
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$Finishing;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport;->q()Lkotlinx/coroutines/JobCancellationException;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    return-object p1

    :cond_0
    return-object v1

    .line 242
    :cond_1
    move-object p1, p2

    check-cast p1, Ljava/lang/Iterable;

    .line 1345
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/Throwable;

    .line 242
    instance-of v3, v3, Ljava/util/concurrent/CancellationException;

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 1346
    :goto_1
    check-cast v0, Ljava/lang/Throwable;

    if-eqz v0, :cond_5

    goto :goto_2

    .line 242
    :cond_5
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/lang/Throwable;

    :goto_2
    return-object v0
.end method

.method private final a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;
    .locals 2

    .line 381
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/Job;

    invoke-direct {v0, p2, p1, v1}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    check-cast v0, Ljava/util/concurrent/CancellationException;

    :goto_1
    return-object v0
.end method

.method private final a(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;
    .locals 1

    .line 836
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->i()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object p1

    goto :goto_0

    .line 838
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->g()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object p1

    .line 839
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 840
    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/ChildHandleNode;

    if-eqz v0, :cond_2

    check-cast p1, Lkotlinx/coroutines/ChildHandleNode;

    return-object p1

    .line 841
    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/NodeList;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1
.end method

.method private final a(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/JobNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;Z)",
            "Lkotlinx/coroutines/JobNode<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_4

    .line 467
    instance-of p2, p1, Lkotlinx/coroutines/JobCancellingNode;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    check-cast v2, Lkotlinx/coroutines/JobCancellingNode;

    if-eqz v2, :cond_3

    iget-object p2, v2, Lkotlinx/coroutines/JobCancellingNode;->c:Lkotlinx/coroutines/Job;

    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/JobSupport;

    if-ne p2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_3

    check-cast v2, Lkotlinx/coroutines/JobNode;

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 468
    :cond_3
    new-instance p2, Lkotlinx/coroutines/InvokeOnCancelling;

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-direct {p2, v0, p1}, Lkotlinx/coroutines/InvokeOnCancelling;-><init>(Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function1;)V

    move-object v2, p2

    check-cast v2, Lkotlinx/coroutines/JobNode;

    goto :goto_2

    .line 470
    :cond_4
    instance-of p2, p1, Lkotlinx/coroutines/JobNode;

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    move-object v2, p1

    :goto_1
    check-cast v2, Lkotlinx/coroutines/JobNode;

    if-eqz v2, :cond_8

    iget-object p2, v2, Lkotlinx/coroutines/JobNode;->c:Lkotlinx/coroutines/Job;

    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/JobSupport;

    if-ne p2, v3, :cond_6

    instance-of p2, v2, Lkotlinx/coroutines/JobCancellingNode;

    if-nez p2, :cond_6

    const/4 v0, 0x1

    :cond_6
    if-eqz v0, :cond_7

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 471
    :cond_8
    new-instance p2, Lkotlinx/coroutines/InvokeOnCompletion;

    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/Job;

    invoke-direct {p2, v0, p1}, Lkotlinx/coroutines/InvokeOnCompletion;-><init>(Lkotlinx/coroutines/Job;Lkotlin/jvm/functions/Function1;)V

    move-object v2, p2

    check-cast v2, Lkotlinx/coroutines/JobNode;

    :goto_2
    return-object v2
.end method

.method private final a(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/NodeList;
    .locals 2

    .line 689
    invoke-interface {p1}, Lkotlinx/coroutines/Incomplete;->G_()Lkotlinx/coroutines/NodeList;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 691
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/Empty;

    if-eqz v0, :cond_1

    new-instance v0, Lkotlinx/coroutines/NodeList;

    invoke-direct {v0}, Lkotlinx/coroutines/NodeList;-><init>()V

    goto :goto_0

    .line 692
    :cond_1
    instance-of v0, p1, Lkotlinx/coroutines/JobNode;

    if-eqz v0, :cond_2

    .line 695
    check-cast p1, Lkotlinx/coroutines/JobNode;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->b(Lkotlinx/coroutines/JobNode;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 698
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State should have list: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method private final a(Lkotlinx/coroutines/Empty;)V
    .locals 2

    .line 479
    new-instance v0, Lkotlinx/coroutines/NodeList;

    invoke-direct {v0}, Lkotlinx/coroutines/NodeList;-><init>()V

    .line 480
    invoke-virtual {p1}, Lkotlinx/coroutines/Empty;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/Incomplete;

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/InactiveNodeList;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/InactiveNodeList;-><init>(Lkotlinx/coroutines/NodeList;)V

    move-object v0, v1

    check-cast v0, Lkotlinx/coroutines/Incomplete;

    .line 481
    :goto_0
    sget-object v1, Lkotlinx/coroutines/JobSupport;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private final a(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;IZ)V
    .locals 4

    .line 276
    iget-object v0, p0, Lkotlinx/coroutines/JobSupport;->d:Lkotlinx/coroutines/ChildHandle;

    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0}, Lkotlinx/coroutines/ChildHandle;->a()V

    .line 278
    sget-object v0, Lkotlinx/coroutines/NonDisposableHandle;->a:Lkotlinx/coroutines/NonDisposableHandle;

    check-cast v0, Lkotlinx/coroutines/ChildHandle;

    iput-object v0, p0, Lkotlinx/coroutines/JobSupport;->d:Lkotlinx/coroutines/ChildHandle;

    .line 280
    :cond_0
    instance-of v0, p2, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v0, :cond_2

    iget-object v1, v0, Lkotlinx/coroutines/CompletedExceptionally;->a:Ljava/lang/Throwable;

    .line 286
    :cond_2
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->c(Lkotlinx/coroutines/Incomplete;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/JobSupport;->a(Ljava/lang/Throwable;)V

    .line 291
    :cond_3
    instance-of v0, p1, Lkotlinx/coroutines/JobNode;

    if-eqz v0, :cond_4

    .line 293
    :try_start_0
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/JobNode;

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/JobNode;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 295
    new-instance v1, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in completion handler "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {p0, v1}, Lkotlinx/coroutines/JobSupport;->c(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 298
    :cond_4
    invoke-interface {p1}, Lkotlinx/coroutines/Incomplete;->G_()Lkotlinx/coroutines/NodeList;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/JobSupport;->b(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V

    .line 305
    :cond_5
    :goto_1
    invoke-virtual {p0, p2, p3, p4}, Lkotlinx/coroutines/JobSupport;->a(Ljava/lang/Object;IZ)V

    return-void
.end method

.method public static final synthetic a(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/JobSupport;->b(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V

    return-void
.end method

.method private final a(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V
    .locals 7

    .line 310
    invoke-virtual {p0, p2}, Lkotlinx/coroutines/JobSupport;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 1348
    check-cast v0, Ljava/lang/Throwable;

    .line 1350
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;->f()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 1351
    :goto_0
    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1352
    instance-of v2, v1, Lkotlinx/coroutines/JobCancellingNode;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/JobNode;

    .line 1354
    :try_start_0
    invoke-virtual {v2, p2}, Lkotlinx/coroutines/JobNode;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    if-eqz v0, :cond_0

    .line 1357
    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1356
    :cond_0
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/JobSupport;

    .line 1358
    new-instance v4, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in completion handler "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v4, Ljava/lang/Throwable;

    .line 1359
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    move-object v0, v4

    .line 1362
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->g()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 1365
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->c(Ljava/lang/Throwable;)V

    .line 313
    :cond_3
    invoke-direct {p0, p2}, Lkotlinx/coroutines/JobSupport;->b(Ljava/lang/Throwable;)Z

    return-void

    .line 1350
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(Ljava/lang/Object;Lkotlinx/coroutines/NodeList;Lkotlinx/coroutines/JobNode;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlinx/coroutines/NodeList;",
            "Lkotlinx/coroutines/JobNode<",
            "*>;)Z"
        }
    .end annotation

    .line 1404
    new-instance v0, Lkotlinx/coroutines/JobSupport$addLastAtomic$$inlined$addLastIf$1;

    check-cast p3, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-direct {v0, p3, p3, p0, p1}, Lkotlinx/coroutines/JobSupport$addLastAtomic$$inlined$addLastIf$1;-><init>(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/JobSupport;Ljava/lang/Object;)V

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;

    .line 1408
    :goto_0
    invoke-virtual {p2}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->h()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 1409
    invoke-virtual {p1, p3, p2, v0}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->a(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode;Lkotlinx/coroutines/internal/LockFreeLinkedListNode$CondAddOp;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p1, 0x0

    goto :goto_1

    :pswitch_1
    const/4 p1, 0x1

    :goto_1
    return p1

    .line 1408
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final a(Ljava/lang/Throwable;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)Z"
        }
    .end annotation

    .line 246
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    return v1

    .line 247
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lkotlinx/coroutines/internal/ConcurrentKt;->a(I)Ljava/util/Set;

    move-result-object v0

    .line 249
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Throwable;

    .line 250
    invoke-static {v3}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->a(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    if-eq v3, p1, :cond_1

    .line 251
    instance-of v4, v3, Ljava/util/concurrent/CancellationException;

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1347
    invoke-static {p1, v3}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private final a(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;I)Z
    .locals 4

    .line 261
    instance-of v0, p1, Lkotlinx/coroutines/Empty;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    instance-of v0, p1, Lkotlinx/coroutines/JobNode;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    .line 262
    instance-of v0, p2, Lkotlinx/coroutines/CompletedExceptionally;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    .line 263
    sget-object v0, Lkotlinx/coroutines/JobSupport;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Lkotlinx/coroutines/JobSupportKt;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    return v2

    .line 264
    :cond_3
    invoke-direct {p0, p1, p2, p3, v2}, Lkotlinx/coroutines/JobSupport;->a(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;IZ)V

    return v1

    .line 262
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 261
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final a(Lkotlinx/coroutines/Incomplete;Ljava/lang/Throwable;)Z
    .locals 5

    .line 703
    instance-of v0, p1, Lkotlinx/coroutines/JobSupport$Finishing;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 704
    invoke-interface {p1}, Lkotlinx/coroutines/Incomplete;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 706
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->a(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/NodeList;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 708
    new-instance v3, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-direct {v3, v0, v2, p2}, Lkotlinx/coroutines/JobSupport$Finishing;-><init>(Lkotlinx/coroutines/NodeList;ZLjava/lang/Throwable;)V

    .line 709
    sget-object v4, Lkotlinx/coroutines/JobSupport;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v2

    .line 711
    :cond_1
    invoke-direct {p0, v0, p2}, Lkotlinx/coroutines/JobSupport;->a(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V

    return v1

    :cond_2
    return v2

    .line 704
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 703
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Check failed."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final a(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/lang/Object;I)Z
    .locals 5

    .line 201
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->l()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_b

    .line 202
    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$Finishing;->c()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_a

    .line 203
    iget-boolean v0, p1, Lkotlinx/coroutines/JobSupport$Finishing;->a:Z

    if-eqz v0, :cond_9

    .line 204
    instance-of v0, p2, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    move-object v0, v3

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v0, :cond_2

    iget-object v3, v0, Lkotlinx/coroutines/CompletedExceptionally;->a:Ljava/lang/Throwable;

    .line 1344
    :cond_2
    monitor-enter p1

    .line 208
    :try_start_0
    invoke-virtual {p1, v3}, Lkotlinx/coroutines/JobSupport$Finishing;->a(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object v0

    .line 209
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/JobSupport;->a(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/util/List;)Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 211
    invoke-direct {p0, v4, v0}, Lkotlinx/coroutines/JobSupport;->a(Ljava/lang/Throwable;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lkotlinx/coroutines/JobSupport$Finishing;->b:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v4, v0, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 212
    :cond_4
    monitor-exit p1

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    if-ne v4, v3, :cond_6

    goto :goto_2

    .line 221
    :cond_6
    new-instance p2, Lkotlinx/coroutines/CompletedExceptionally;

    invoke-direct {p2, v4}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    if-eqz v4, :cond_7

    .line 224
    invoke-direct {p0, v4}, Lkotlinx/coroutines/JobSupport;->b(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 225
    invoke-virtual {p0, v4}, Lkotlinx/coroutines/JobSupport;->f(Ljava/lang/Throwable;)V

    .line 228
    :cond_7
    sget-object v0, Lkotlinx/coroutines/JobSupport;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p2}, Lkotlinx/coroutines/JobSupportKt;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p0, p1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 230
    check-cast p1, Lkotlinx/coroutines/Incomplete;

    invoke-direct {p0, p1, p2, p3, v1}, Lkotlinx/coroutines/JobSupport;->a(Lkotlinx/coroutines/Incomplete;Ljava/lang/Object;IZ)V

    return v2

    .line 228
    :cond_8
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected state: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lkotlinx/coroutines/JobSupport;->a:Ljava/lang/Object;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", expected: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", update: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    :catchall_0
    move-exception p2

    .line 212
    monitor-exit p1

    throw p2

    .line 203
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 202
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 201
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final a(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)Z
    .locals 6

    .line 814
    :goto_0
    iget-object v0, p2, Lkotlinx/coroutines/ChildHandleNode;->a:Lkotlinx/coroutines/ChildJob;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 816
    new-instance v3, Lkotlinx/coroutines/JobSupport$ChildCompletion;

    invoke-direct {v3, p0, p1, p2, p3}, Lkotlinx/coroutines/JobSupport$ChildCompletion;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V

    check-cast v3, Lkotlinx/coroutines/CompletionHandlerBase;

    .line 1438
    check-cast v3, Lkotlin/jvm/functions/Function1;

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 814
    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/Job$DefaultImpls;->a(Lkotlinx/coroutines/Job;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v0

    .line 818
    sget-object v1, Lkotlinx/coroutines/NonDisposableHandle;->a:Lkotlinx/coroutines/NonDisposableHandle;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 819
    :cond_0
    check-cast p2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-direct {p0, p2}, Lkotlinx/coroutines/JobSupport;->a(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;

    move-result-object p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final b(Lkotlinx/coroutines/Incomplete;)Lkotlinx/coroutines/ChildHandleNode;
    .locals 2

    .line 809
    instance-of v0, p1, Lkotlinx/coroutines/ChildHandleNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Lkotlinx/coroutines/ChildHandleNode;

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Lkotlinx/coroutines/Incomplete;->G_()Lkotlinx/coroutines/NodeList;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->a(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;

    move-result-object v1

    :cond_2
    :goto_1
    return-object v1
.end method

.method private final b(Lkotlinx/coroutines/JobNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/JobNode<",
            "*>;)V"
        }
    .end annotation

    .line 486
    new-instance v0, Lkotlinx/coroutines/NodeList;

    invoke-direct {v0}, Lkotlinx/coroutines/NodeList;-><init>()V

    check-cast v0, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/JobNode;->a(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Z

    .line 488
    invoke-virtual {p1}, Lkotlinx/coroutines/JobNode;->g()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v0

    .line 490
    sget-object v1, Lkotlinx/coroutines/JobSupport;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method private final b(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)V
    .locals 2

    .line 825
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->l()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 827
    check-cast p2, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    invoke-direct {p0, p2}, Lkotlinx/coroutines/JobSupport;->a(Lkotlinx/coroutines/internal/LockFreeLinkedListNode;)Lkotlinx/coroutines/ChildHandleNode;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 829
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/JobSupport;->a(Lkotlinx/coroutines/JobSupport$Finishing;Lkotlinx/coroutines/ChildHandleNode;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 831
    :cond_1
    invoke-direct {p0, p1, p3, v1}, Lkotlinx/coroutines/JobSupport;->a(Lkotlinx/coroutines/JobSupport$Finishing;Ljava/lang/Object;I)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    return-void

    .line 825
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed requirement."

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method private final b(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V
    .locals 7

    const/4 v0, 0x0

    .line 1367
    check-cast v0, Ljava/lang/Throwable;

    .line 1369
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;->f()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    .line 1370
    :goto_0
    move-object v2, p1

    check-cast v2, Lkotlinx/coroutines/internal/LockFreeLinkedListHead;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 1371
    instance-of v2, v1, Lkotlinx/coroutines/JobNode;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/JobNode;

    .line 1373
    :try_start_0
    invoke-virtual {v2, p2}, Lkotlinx/coroutines/JobNode;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    if-eqz v0, :cond_0

    .line 1376
    invoke-static {v0, v3}, Lkotlin/ExceptionsKt;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1375
    :cond_0
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/JobSupport;

    .line 1377
    new-instance v4, Lkotlinx/coroutines/CompletionHandlerException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in completion handler "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lkotlinx/coroutines/CompletionHandlerException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast v4, Ljava/lang/Throwable;

    .line 1378
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    move-object v0, v4

    .line 1381
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/LockFreeLinkedListNode;->g()Lkotlinx/coroutines/internal/LockFreeLinkedListNode;

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 1384
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->c(Ljava/lang/Throwable;)V

    :cond_3
    return-void

    .line 1369
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final b(Ljava/lang/Object;)Z
    .locals 1

    .line 589
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->c(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 595
    :cond_0
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->e(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final b(Ljava/lang/Throwable;)Z
    .locals 3

    .line 917
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 918
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->c()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 919
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/JobSupport;->d:Lkotlinx/coroutines/ChildHandle;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lkotlinx/coroutines/ChildHandle;->b(Ljava/lang/Throwable;)Z

    move-result p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final c(Ljava/lang/Object;)Z
    .locals 4

    .line 1429
    :pswitch_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->l()Ljava/lang/Object;

    move-result-object v0

    .line 601
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    instance-of v1, v0, Lkotlinx/coroutines/JobSupport$Finishing;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/JobSupport$Finishing;

    iget-boolean v1, v1, Lkotlinx/coroutines/JobSupport$Finishing;->a:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 604
    :cond_0
    new-instance v1, Lkotlinx/coroutines/CompletedExceptionally;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v3}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;)V

    .line 605
    invoke-direct {p0, v0, v1, v2}, Lkotlinx/coroutines/JobSupport;->a(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 609
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected result"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :pswitch_1
    const/4 p1, 0x1

    return p1

    :pswitch_2
    return v2

    :cond_1
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final c(Lkotlinx/coroutines/Incomplete;)Z
    .locals 1

    .line 1020
    instance-of v0, p1, Lkotlinx/coroutines/JobSupport$Finishing;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$Finishing;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final d(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    if-eqz p1, :cond_0

    .line 640
    instance-of v0, p1, Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    :goto_1
    check-cast p1, Ljava/lang/Throwable;

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport;->q()Lkotlinx/coroutines/JobCancellationException;

    move-result-object p1

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 641
    check-cast p1, Lkotlinx/coroutines/ParentJob;

    invoke-interface {p1}, Lkotlinx/coroutines/ParentJob;->n()Ljava/lang/Throwable;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final e(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    .line 647
    move-object v1, v0

    check-cast v1, Ljava/lang/Throwable;

    .line 1431
    :cond_0
    :pswitch_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->l()Ljava/lang/Object;

    move-result-object v2

    .line 650
    instance-of v3, v2, Lkotlinx/coroutines/JobSupport$Finishing;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_7

    .line 1432
    monitor-enter v2

    .line 652
    :try_start_0
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v3}, Lkotlinx/coroutines/JobSupport$Finishing;->c()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    monitor-exit v2

    return v4

    .line 654
    :cond_1
    :try_start_1
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v3}, Lkotlinx/coroutines/JobSupport$Finishing;->d()Z

    move-result v3

    if-nez p1, :cond_2

    if-nez v3, :cond_4

    :cond_2
    if-eqz v1, :cond_3

    goto :goto_0

    .line 657
    :cond_3
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 658
    :goto_0
    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {p1, v1}, Lkotlinx/coroutines/JobSupport$Finishing;->b(Ljava/lang/Throwable;)V

    .line 661
    :cond_4
    move-object p1, v2

    check-cast p1, Lkotlinx/coroutines/JobSupport$Finishing;

    iget-object p1, p1, Lkotlinx/coroutines/JobSupport$Finishing;->b:Ljava/lang/Throwable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    xor-int/lit8 v1, v3, 0x1

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    move-object p1, v0

    :goto_1
    monitor-exit v2

    if-eqz p1, :cond_6

    .line 663
    check-cast v2, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {v2}, Lkotlinx/coroutines/JobSupport$Finishing;->G_()Lkotlinx/coroutines/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lkotlinx/coroutines/JobSupport;->a(Lkotlinx/coroutines/NodeList;Ljava/lang/Throwable;)V

    :cond_6
    return v5

    :catchall_0
    move-exception p1

    .line 661
    monitor-exit v2

    throw p1

    .line 666
    :cond_7
    instance-of v3, v2, Lkotlinx/coroutines/Incomplete;

    if-eqz v3, :cond_a

    if-eqz v1, :cond_8

    goto :goto_2

    .line 668
    :cond_8
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    .line 669
    :goto_2
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/Incomplete;

    invoke-interface {v3}, Lkotlinx/coroutines/Incomplete;->b()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 671
    invoke-direct {p0, v3, v1}, Lkotlinx/coroutines/JobSupport;->a(Lkotlinx/coroutines/Incomplete;Ljava/lang/Throwable;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v5

    .line 674
    :cond_9
    new-instance v3, Lkotlinx/coroutines/CompletedExceptionally;

    invoke-direct {v3, v1}, Lkotlinx/coroutines/CompletedExceptionally;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v2, v3, v4}, Lkotlinx/coroutines/JobSupport;->a(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 678
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unexpected result"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :pswitch_1
    return v5

    .line 675
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot happen in "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_a
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final f(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2

    .line 806
    instance-of v0, p1, Lkotlinx/coroutines/CompletedExceptionally;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object p1, v1

    :cond_0
    check-cast p1, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz p1, :cond_1

    iget-object v1, p1, Lkotlinx/coroutines/CompletedExceptionally;->a:Ljava/lang/Throwable;

    :cond_1
    return-object v1
.end method

.method private final g(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 944
    instance-of v0, p1, Lkotlinx/coroutines/JobSupport$Finishing;

    if-eqz v0, :cond_2

    .line 945
    check-cast p1, Lkotlinx/coroutines/JobSupport$Finishing;

    invoke-virtual {p1}, Lkotlinx/coroutines/JobSupport$Finishing;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Cancelling"

    goto :goto_0

    .line 946
    :cond_0
    iget-boolean p1, p1, Lkotlinx/coroutines/JobSupport$Finishing;->a:Z

    if-eqz p1, :cond_1

    const-string p1, "Completing"

    goto :goto_0

    :cond_1
    const-string p1, "Active"

    goto :goto_0

    .line 949
    :cond_2
    instance-of v0, p1, Lkotlinx/coroutines/Incomplete;

    if-eqz v0, :cond_4

    check-cast p1, Lkotlinx/coroutines/Incomplete;

    invoke-interface {p1}, Lkotlinx/coroutines/Incomplete;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Active"

    goto :goto_0

    :cond_3
    const-string p1, "New"

    goto :goto_0

    .line 950
    :cond_4
    instance-of p1, p1, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz p1, :cond_5

    const-string p1, "Cancelled"

    goto :goto_0

    :cond_5
    const-string p1, "Completed"

    :goto_0
    return-object p1
.end method

.method private final h()Z
    .locals 2

    .line 1413
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->l()Ljava/lang/Object;

    move-result-object v0

    .line 503
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    .line 504
    :cond_1
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->a(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method private final q()Lkotlinx/coroutines/JobCancellationException;
    .locals 4

    .line 615
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    const-string v1, "Job was cancelled"

    move-object v2, p0

    check-cast v2, Lkotlinx/coroutines/Job;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    return-object v0
.end method


# virtual methods
.method protected E_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a()Lkotlin/coroutines/CoroutineContext$Key;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "*>;"
        }
    .end annotation

    .line 27
    sget-object v0, Lkotlinx/coroutines/Job;->b:Lkotlinx/coroutines/Job$Key;

    check-cast v0, Lkotlin/coroutines/CoroutineContext$Key;

    return-object v0
.end method

.method public final a(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;
    .locals 7

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 866
    new-instance v0, Lkotlinx/coroutines/ChildHandleNode;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/ChildHandleNode;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/ChildJob;)V

    check-cast v0, Lkotlinx/coroutines/CompletionHandlerBase;

    .line 1439
    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    .line 866
    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/Job$DefaultImpls;->a(Lkotlinx/coroutines/Job;ZZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lkotlinx/coroutines/ChildHandle;

    return-object p1

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.ChildHandle"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/DisposableHandle;"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 403
    invoke-virtual {p0, v0, v1, p1}, Lkotlinx/coroutines/JobSupport;->a(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p1

    return-object p1
.end method

.method public final a(ZZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;)",
            "Lkotlinx/coroutines/DisposableHandle;"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 410
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/JobNode;

    .line 1398
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->l()Ljava/lang/Object;

    move-result-object v2

    .line 413
    instance-of v3, v2, Lkotlinx/coroutines/Empty;

    if-eqz v3, :cond_3

    .line 414
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/Empty;

    invoke-virtual {v3}, Lkotlinx/coroutines/Empty;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    .line 416
    :cond_1
    invoke-direct {p0, p3, p1}, Lkotlinx/coroutines/JobSupport;->a(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/JobNode;

    move-result-object v1

    .line 417
    :goto_1
    sget-object v3, Lkotlinx/coroutines/JobSupport;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Lkotlinx/coroutines/DisposableHandle;

    return-object v1

    .line 419
    :cond_2
    invoke-direct {p0, v3}, Lkotlinx/coroutines/JobSupport;->a(Lkotlinx/coroutines/Empty;)V

    goto :goto_0

    .line 421
    :cond_3
    instance-of v3, v2, Lkotlinx/coroutines/Incomplete;

    if-eqz v3, :cond_f

    .line 422
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/Incomplete;

    invoke-interface {v3}, Lkotlinx/coroutines/Incomplete;->G_()Lkotlinx/coroutines/NodeList;

    move-result-object v3

    if-nez v3, :cond_5

    if-eqz v2, :cond_4

    .line 424
    check-cast v2, Lkotlinx/coroutines/JobNode;

    invoke-direct {p0, v2}, Lkotlinx/coroutines/JobSupport;->b(Lkotlinx/coroutines/JobNode;)V

    goto :goto_0

    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.JobNode<*>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 426
    :cond_5
    move-object v4, v0

    check-cast v4, Ljava/lang/Throwable;

    .line 427
    sget-object v5, Lkotlinx/coroutines/NonDisposableHandle;->a:Lkotlinx/coroutines/NonDisposableHandle;

    check-cast v5, Lkotlinx/coroutines/DisposableHandle;

    if-eqz p1, :cond_b

    .line 428
    instance-of v6, v2, Lkotlinx/coroutines/JobSupport$Finishing;

    if-eqz v6, :cond_b

    .line 1399
    monitor-enter v2

    .line 431
    :try_start_0
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/JobSupport$Finishing;

    iget-object v4, v4, Lkotlinx/coroutines/JobSupport$Finishing;->b:Ljava/lang/Throwable;

    if-eqz v4, :cond_6

    .line 1400
    instance-of v6, p3, Lkotlinx/coroutines/ChildHandleNode;

    if-eqz v6, :cond_a

    move-object v6, v2

    check-cast v6, Lkotlinx/coroutines/JobSupport$Finishing;

    iget-boolean v6, v6, Lkotlinx/coroutines/JobSupport$Finishing;->a:Z

    if-nez v6, :cond_a

    :cond_6
    if-eqz v1, :cond_7

    goto :goto_2

    .line 436
    :cond_7
    invoke-direct {p0, p3, p1}, Lkotlinx/coroutines/JobSupport;->a(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/JobNode;

    move-result-object v1

    .line 437
    :goto_2
    invoke-direct {p0, v2, v3, v1}, Lkotlinx/coroutines/JobSupport;->a(Ljava/lang/Object;Lkotlinx/coroutines/NodeList;Lkotlinx/coroutines/JobNode;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_8

    monitor-exit v2

    goto :goto_0

    :cond_8
    if-nez v4, :cond_9

    .line 439
    :try_start_1
    check-cast v1, Lkotlinx/coroutines/DisposableHandle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-object v1

    .line 441
    :cond_9
    :try_start_2
    move-object v5, v1

    check-cast v5, Lkotlinx/coroutines/DisposableHandle;

    .line 443
    :cond_a
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v2

    throw p1

    :cond_b
    :goto_3
    if-eqz v4, :cond_d

    if-eqz p2, :cond_c

    .line 1401
    invoke-interface {p3, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    return-object v5

    :cond_d
    if-eqz v1, :cond_e

    goto :goto_4

    .line 450
    :cond_e
    invoke-direct {p0, p3, p1}, Lkotlinx/coroutines/JobSupport;->a(Lkotlin/jvm/functions/Function1;Z)Lkotlinx/coroutines/JobNode;

    move-result-object v1

    .line 451
    :goto_4
    invoke-direct {p0, v2, v3, v1}, Lkotlinx/coroutines/JobSupport;->a(Ljava/lang/Object;Lkotlinx/coroutines/NodeList;Lkotlinx/coroutines/JobNode;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Lkotlinx/coroutines/DisposableHandle;

    return-object v1

    :cond_f
    if-eqz p2, :cond_12

    .line 458
    instance-of p1, v2, Lkotlinx/coroutines/CompletedExceptionally;

    if-nez p1, :cond_10

    move-object v2, v0

    :cond_10
    check-cast v2, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v2, :cond_11

    iget-object v0, v2, Lkotlinx/coroutines/CompletedExceptionally;->a:Ljava/lang/Throwable;

    .line 1402
    :cond_11
    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    :cond_12
    sget-object p1, Lkotlinx/coroutines/NonDisposableHandle;->a:Lkotlinx/coroutines/NonDisposableHandle;

    check-cast p1, Lkotlinx/coroutines/DisposableHandle;

    return-object p1
.end method

.method public a(Ljava/lang/Object;IZ)V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final a(Lkotlinx/coroutines/Job;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lkotlinx/coroutines/JobSupport;->d:Lkotlinx/coroutines/ChildHandle;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    .line 142
    sget-object p1, Lkotlinx/coroutines/NonDisposableHandle;->a:Lkotlinx/coroutines/NonDisposableHandle;

    check-cast p1, Lkotlinx/coroutines/ChildHandle;

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport;->d:Lkotlinx/coroutines/ChildHandle;

    return-void

    .line 145
    :cond_1
    invoke-interface {p1}, Lkotlinx/coroutines/Job;->j()Z

    .line 147
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/ChildJob;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/Job;->a(Lkotlinx/coroutines/ChildJob;)Lkotlinx/coroutines/ChildHandle;

    move-result-object p1

    .line 148
    iput-object p1, p0, Lkotlinx/coroutines/JobSupport;->d:Lkotlinx/coroutines/ChildHandle;

    .line 150
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    invoke-interface {p1}, Lkotlinx/coroutines/ChildHandle;->a()V

    .line 152
    sget-object p1, Lkotlinx/coroutines/NonDisposableHandle;->a:Lkotlinx/coroutines/NonDisposableHandle;

    check-cast p1, Lkotlinx/coroutines/ChildHandle;

    iput-object p1, p0, Lkotlinx/coroutines/JobSupport;->d:Lkotlinx/coroutines/ChildHandle;

    :cond_2
    return-void

    .line 140
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final a(Lkotlinx/coroutines/JobNode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/JobNode<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1427
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->l()Ljava/lang/Object;

    move-result-object v0

    .line 544
    instance-of v1, v0, Lkotlinx/coroutines/JobNode;

    if-eqz v1, :cond_2

    if-eq v0, p1, :cond_1

    return-void

    .line 547
    :cond_1
    sget-object v1, Lkotlinx/coroutines/JobSupport;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Lkotlinx/coroutines/JobSupportKt;->b()Lkotlinx/coroutines/Empty;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 549
    :cond_2
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-eqz v1, :cond_4

    .line 551
    check-cast v0, Lkotlinx/coroutines/Incomplete;

    invoke-interface {v0}, Lkotlinx/coroutines/Incomplete;->G_()Lkotlinx/coroutines/NodeList;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lkotlinx/coroutines/JobNode;->d()Z

    :cond_3
    return-void

    :cond_4
    return-void
.end method

.method public final a(Lkotlinx/coroutines/ParentJob;)V
    .locals 1

    const-string v0, "parentJob"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1424
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->l()Ljava/lang/Object;

    move-result-object v0

    .line 520
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 521
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 523
    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/SelectInstance;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 524
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->a()Lkotlin/coroutines/Continuation;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/YieldKt;->a(Lkotlin/coroutines/CoroutineContext;)V

    .line 525
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->a()Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->a(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    :cond_2
    return-void

    .line 529
    :cond_3
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->a(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 531
    new-instance v0, Lkotlinx/coroutines/SelectJoinOnCompletion;

    invoke-direct {v0, p0, p1, p2}, Lkotlinx/coroutines/SelectJoinOnCompletion;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlinx/coroutines/CompletionHandlerBase;

    .line 1425
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 531
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->a(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/coroutines/selects/SelectInstance;->a(Lkotlinx/coroutines/DisposableHandle;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;I)Z
    .locals 2

    .line 1436
    :pswitch_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->l()Ljava/lang/Object;

    move-result-object v0

    .line 742
    invoke-direct {p0, v0, p1, p2}, Lkotlinx/coroutines/JobSupport;->a(Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 748
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected result"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :pswitch_1
    const/4 p1, 0x0

    return p1

    :pswitch_2
    const/4 p1, 0x1

    return p1

    .line 743
    :pswitch_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Job "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is already complete or completing, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "but is being completed with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->f(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    .line 743
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 494
    invoke-direct {p0}, Lkotlinx/coroutines/JobSupport;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    invoke-interface {p1}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/YieldKt;->a(Lkotlin/coroutines/CoroutineContext;)V

    .line 496
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 498
    :cond_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1446
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->l()Ljava/lang/Object;

    move-result-object v0

    .line 1120
    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1121
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    .line 1123
    invoke-interface {p1, v1}, Lkotlinx/coroutines/selects/SelectInstance;->a(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1124
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v1, :cond_2

    .line 1125
    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object p2, v0, Lkotlinx/coroutines/CompletedExceptionally;->a:Ljava/lang/Throwable;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/selects/SelectInstance;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1128
    :cond_2
    invoke-static {v0}, Lkotlinx/coroutines/JobSupportKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->a()Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lkotlinx/coroutines/intrinsics/UndispatchedKt;->a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    :cond_3
    :goto_0
    return-void

    .line 1133
    :cond_4
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->a(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1135
    new-instance v0, Lkotlinx/coroutines/SelectAwaitOnCompletion;

    invoke-direct {v0, p0, p1, p2}, Lkotlinx/coroutines/SelectAwaitOnCompletion;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V

    check-cast v0, Lkotlinx/coroutines/CompletionHandlerBase;

    .line 1447
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 1135
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->a(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/coroutines/selects/SelectInstance;->a(Lkotlinx/coroutines/DisposableHandle;)V

    return-void
.end method

.method public b()Z
    .locals 2

    .line 179
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->l()Ljava/lang/Object;

    move-result-object v0

    .line 180
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlinx/coroutines/Incomplete;

    invoke-interface {v0}, Lkotlinx/coroutines/Incomplete;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final synthetic c(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1415
    new-instance v0, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/CancellableContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;I)V

    .line 1419
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    .line 510
    new-instance v2, Lkotlinx/coroutines/ResumeOnCompletion;

    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/Job;

    move-object v4, v1

    check-cast v4, Lkotlin/coroutines/Continuation;

    invoke-direct {v2, v3, v4}, Lkotlinx/coroutines/ResumeOnCompletion;-><init>(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)V

    check-cast v2, Lkotlinx/coroutines/CompletionHandlerBase;

    .line 1420
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 510
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/JobSupport;->a(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlinx/coroutines/CancellableContinuationKt;->a(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/DisposableHandle;)V

    .line 1421
    invoke-virtual {v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1414
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0
.end method

.method public c(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 875
    throw p1
.end method

.method public final c(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/SelectInstance<",
            "-TR;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "select"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1146
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->l()Ljava/lang/Object;

    move-result-object v0

    .line 1148
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v1, :cond_0

    .line 1149
    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object p2, v0, Lkotlinx/coroutines/CompletedExceptionally;->a:Ljava/lang/Throwable;

    invoke-interface {p1, p2}, Lkotlinx/coroutines/selects/SelectInstance;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1151
    :cond_0
    invoke-static {v0}, Lkotlinx/coroutines/JobSupportKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lkotlinx/coroutines/selects/SelectInstance;->a()Lkotlin/coroutines/Continuation;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lkotlinx/coroutines/intrinsics/CancellableKt;->a(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V

    :goto_0
    return-void
.end method

.method protected c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1087
    :cond_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->l()Ljava/lang/Object;

    move-result-object v0

    .line 1088
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-nez v1, :cond_4

    .line 1090
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v1, :cond_3

    .line 1091
    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v0, v0, Lkotlinx/coroutines/CompletedExceptionally;->a:Ljava/lang/Throwable;

    .line 1440
    invoke-static {v0}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->b(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 1441
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->a(I)V

    .line 1442
    instance-of v1, p1, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    if-nez v1, :cond_1

    throw v0

    .line 1443
    :cond_1
    check-cast p1, Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;

    invoke-static {v0, p1}, Lkotlinx/coroutines/internal/StackTraceRecoveryKt;->a(Ljava/lang/Throwable;Lkotlin/coroutines/jvm/internal/CoroutineStackFrame;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 1440
    :cond_2
    throw v0

    .line 1093
    :cond_3
    invoke-static {v0}, Lkotlinx/coroutines/JobSupportKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1096
    :cond_4
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->a(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1098
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/JobSupport;->e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Ljava/lang/Throwable;)Z
    .locals 0

    .line 575
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->E_()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method final synthetic e(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1107
    new-instance v0, Lkotlinx/coroutines/JobSupport$AwaitContinuation;

    invoke-static {p1}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a(Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lkotlinx/coroutines/JobSupport$AwaitContinuation;-><init>(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/JobSupport;)V

    .line 1108
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CancellableContinuation;

    new-instance v2, Lkotlinx/coroutines/ResumeAwaitOnCompletion;

    move-object v3, v0

    check-cast v3, Lkotlinx/coroutines/CancellableContinuationImpl;

    invoke-direct {v2, p0, v3}, Lkotlinx/coroutines/ResumeAwaitOnCompletion;-><init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/CancellableContinuationImpl;)V

    check-cast v2, Lkotlinx/coroutines/CompletionHandlerBase;

    .line 1444
    check-cast v2, Lkotlin/jvm/functions/Function1;

    .line 1108
    invoke-virtual {p0, v2}, Lkotlinx/coroutines/JobSupport;->a(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlinx/coroutines/CancellableContinuationKt;->a(Lkotlinx/coroutines/CancellableContinuation;Lkotlinx/coroutines/DisposableHandle;)V

    .line 1109
    invoke-virtual {v0}, Lkotlinx/coroutines/JobSupport$AwaitContinuation;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1101
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/DebugProbesKt;->c(Lkotlin/coroutines/Continuation;)V

    :cond_0
    return-object v0
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public e(Ljava/lang/Throwable;)Z
    .locals 1

    const-string v0, "cause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobSupport;->b(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->E_()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected f(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "exception"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {p0, p1, p2}, Lkotlinx/coroutines/Job$DefaultImpls;->a(Lkotlinx/coroutines/Job;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 941
    invoke-static {p0}, Lkotlinx/coroutines/DebugKt;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            ">(",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {p0, p1}, Lkotlinx/coroutines/Job$DefaultImpls;->a(Lkotlinx/coroutines/Job;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext$Element;

    move-result-object p1

    return-object p1
.end method

.method public final i()Ljava/util/concurrent/CancellationException;
    .locals 4

    .line 370
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->l()Ljava/lang/Object;

    move-result-object v0

    .line 372
    instance-of v1, v0, Lkotlinx/coroutines/JobSupport$Finishing;

    if-eqz v1, :cond_1

    check-cast v0, Lkotlinx/coroutines/JobSupport$Finishing;

    iget-object v0, v0, Lkotlinx/coroutines/JobSupport$Finishing;->b:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const-string v1, "Job is cancelling"

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/JobSupport;->a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Job is still new or active: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1

    .line 374
    :cond_1
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-nez v1, :cond_3

    .line 375
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v1, :cond_2

    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v0, v0, Lkotlinx/coroutines/CompletedExceptionally;->a:Ljava/lang/Throwable;

    const-string v1, "Job was cancelled"

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/JobSupport;->a(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/util/concurrent/CancellationException;

    move-result-object v0

    goto :goto_0

    .line 376
    :cond_2
    new-instance v0, Lkotlinx/coroutines/JobCancellationException;

    const-string v1, "Job has completed normally"

    const/4 v2, 0x0

    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/Job;

    invoke-direct {v0, v1, v2, v3}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    check-cast v0, Ljava/util/concurrent/CancellationException;

    :goto_0
    return-object v0

    .line 374
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Job is still new or active: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public final j()Z
    .locals 1

    .line 1394
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->l()Ljava/lang/Object;

    move-result-object v0

    .line 335
    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->a(Ljava/lang/Object;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    .line 570
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->d(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final l()Ljava/lang/Object;
    .locals 2

    .line 1343
    :goto_0
    iget-object v0, p0, Lkotlinx/coroutines/JobSupport;->a:Ljava/lang/Object;

    .line 164
    instance-of v1, v0, Lkotlinx/coroutines/internal/OpDescriptor;

    if-nez v1, :cond_0

    return-object v0

    .line 165
    :cond_0
    check-cast v0, Lkotlinx/coroutines/internal/OpDescriptor;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/internal/OpDescriptor;->c(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final m()Z
    .locals 1

    .line 183
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->l()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/Incomplete;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public minusKey(Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/CoroutineContext$Key<",
            "*>;)",
            "Lkotlin/coroutines/CoroutineContext;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {p0, p1}, Lkotlinx/coroutines/Job$DefaultImpls;->b(Lkotlinx/coroutines/Job;Lkotlin/coroutines/CoroutineContext$Key;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    return-object p1
.end method

.method public n()Ljava/lang/Throwable;
    .locals 5

    .line 619
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->l()Ljava/lang/Object;

    move-result-object v0

    .line 621
    instance-of v1, v0, Lkotlinx/coroutines/JobSupport$Finishing;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/JobSupport$Finishing;

    iget-object v1, v1, Lkotlinx/coroutines/JobSupport$Finishing;->b:Ljava/lang/Throwable;

    goto :goto_0

    .line 622
    :cond_0
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-nez v1, :cond_4

    .line 623
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v1, v1, Lkotlinx/coroutines/CompletedExceptionally;->a:Ljava/lang/Throwable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 631
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->E_()Z

    move-result v2

    if-eqz v2, :cond_3

    instance-of v2, v1, Ljava/util/concurrent/CancellationException;

    if-nez v2, :cond_3

    .line 632
    :cond_2
    new-instance v2, Lkotlinx/coroutines/JobCancellationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parent job is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lkotlinx/coroutines/JobSupport;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, p0

    check-cast v3, Lkotlinx/coroutines/Job;

    invoke-direct {v2, v0, v1, v3}, Lkotlinx/coroutines/JobCancellationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lkotlinx/coroutines/Job;)V

    move-object v1, v2

    check-cast v1, Ljava/lang/Throwable;

    :cond_3
    return-object v1

    .line 622
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot be cancelling child in this state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public final o()Ljava/lang/String;
    .locals 2

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->l()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lkotlinx/coroutines/JobSupport;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final p()Ljava/lang/Object;
    .locals 2

    .line 1075
    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->l()Ljava/lang/Object;

    move-result-object v0

    .line 1076
    instance-of v1, v0, Lkotlinx/coroutines/Incomplete;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 1077
    instance-of v1, v0, Lkotlinx/coroutines/CompletedExceptionally;

    if-nez v1, :cond_1

    .line 1078
    invoke-static {v0}, Lkotlinx/coroutines/JobSupportKt;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1077
    :cond_1
    check-cast v0, Lkotlinx/coroutines/CompletedExceptionally;

    iget-object v0, v0, Lkotlinx/coroutines/CompletedExceptionally;->a:Ljava/lang/Throwable;

    throw v0

    .line 1076
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This job has not completed yet"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-static {p0, p1}, Lkotlinx/coroutines/Job$DefaultImpls;->a(Lkotlinx/coroutines/Job;Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlinx/coroutines/JobSupport;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lkotlinx/coroutines/DebugKt;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
