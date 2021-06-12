.class public abstract Lkotlinx/coroutines/JobNode;
.super Lkotlinx/coroutines/CompletionHandlerBase;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/DisposableHandle;
.implements Lkotlinx/coroutines/Incomplete;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<J::",
        "Lkotlinx/coroutines/Job;",
        ">",
        "Lkotlinx/coroutines/CompletionHandlerBase;",
        "Lkotlinx/coroutines/DisposableHandle;",
        "Lkotlinx/coroutines/Incomplete;"
    }
.end annotation


# instance fields
.field public final c:Lkotlinx/coroutines/Job;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TJ;"
        }
    .end annotation
.end field


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

    .line 1201
    invoke-direct {p0}, Lkotlinx/coroutines/CompletionHandlerBase;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/JobNode;->c:Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public G_()Lkotlinx/coroutines/NodeList;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()V
    .locals 2

    .line 1204
    iget-object v0, p0, Lkotlinx/coroutines/JobNode;->c:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_0

    check-cast v0, Lkotlinx/coroutines/JobSupport;

    invoke-virtual {v0, p0}, Lkotlinx/coroutines/JobSupport;->a(Lkotlinx/coroutines/JobNode;)V

    return-void

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.JobSupport"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
