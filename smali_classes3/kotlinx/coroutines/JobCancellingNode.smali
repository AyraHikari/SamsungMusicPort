.class public abstract Lkotlinx/coroutines/JobCancellingNode;
.super Lkotlinx/coroutines/JobNode;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J::",
        "Lkotlinx/coroutines/Job;",
        ">",
        "Lkotlinx/coroutines/JobNode<",
        "TJ;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/Job;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TJ;)V"
        }
    .end annotation

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1306
    invoke-direct {p0, p1}, Lkotlinx/coroutines/JobNode;-><init>(Lkotlinx/coroutines/Job;)V

    return-void
.end method
