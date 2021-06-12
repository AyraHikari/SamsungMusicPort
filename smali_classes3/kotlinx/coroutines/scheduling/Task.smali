.class public abstract Lkotlinx/coroutines/scheduling/Task;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public f:J

.field public g:Lkotlinx/coroutines/scheduling/TaskContext;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 89
    sget-object v0, Lkotlinx/coroutines/scheduling/NonBlockingContext;->a:Lkotlinx/coroutines/scheduling/NonBlockingContext;

    check-cast v0, Lkotlinx/coroutines/scheduling/TaskContext;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2, v0}, Lkotlinx/coroutines/scheduling/Task;-><init>(JLkotlinx/coroutines/scheduling/TaskContext;)V

    return-void
.end method

.method public constructor <init>(JLkotlinx/coroutines/scheduling/TaskContext;)V
    .locals 1

    const-string v0, "taskContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlinx/coroutines/scheduling/Task;->f:J

    iput-object p3, p0, Lkotlinx/coroutines/scheduling/Task;->g:Lkotlinx/coroutines/scheduling/TaskContext;

    return-void
.end method


# virtual methods
.method public final g()Lkotlinx/coroutines/scheduling/TaskMode;
    .locals 1

    .line 90
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/Task;->g:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/TaskContext;->d()Lkotlinx/coroutines/scheduling/TaskMode;

    move-result-object v0

    return-object v0
.end method
