.class public final Lkotlinx/coroutines/ChildHandleNode;
.super Lkotlinx/coroutines/JobCancellingNode;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/ChildHandle;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlinx/coroutines/JobCancellingNode<",
        "Lkotlinx/coroutines/JobSupport;",
        ">;",
        "Lkotlinx/coroutines/ChildHandle;"
    }
.end annotation


# instance fields
.field public final a:Lkotlinx/coroutines/ChildJob;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/JobSupport;Lkotlinx/coroutines/ChildJob;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "childJob"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1323
    check-cast p1, Lkotlinx/coroutines/Job;

    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobCancellingNode;-><init>(Lkotlinx/coroutines/Job;)V

    iput-object p2, p0, Lkotlinx/coroutines/ChildHandleNode;->a:Lkotlinx/coroutines/ChildJob;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1324
    iget-object p1, p0, Lkotlinx/coroutines/ChildHandleNode;->a:Lkotlinx/coroutines/ChildJob;

    iget-object v0, p0, Lkotlinx/coroutines/ChildHandleNode;->c:Lkotlinx/coroutines/Job;

    check-cast v0, Lkotlinx/coroutines/ParentJob;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/ChildJob;->a(Lkotlinx/coroutines/ParentJob;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)Z
    .locals 1

    const-string v0, "cause"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1325
    iget-object v0, p0, Lkotlinx/coroutines/ChildHandleNode;->c:Lkotlinx/coroutines/Job;

    check-cast v0, Lkotlinx/coroutines/JobSupport;

    invoke-virtual {v0, p1}, Lkotlinx/coroutines/JobSupport;->e(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1320
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lkotlinx/coroutines/ChildHandleNode;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChildHandle["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/ChildHandleNode;->a:Lkotlinx/coroutines/ChildJob;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
