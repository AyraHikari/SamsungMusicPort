.class public final Lkotlinx/coroutines/scheduling/TaskImpl;
.super Lkotlinx/coroutines/scheduling/Task;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;JLkotlinx/coroutines/scheduling/TaskContext;)V
    .locals 1

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskContext"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0, p2, p3, p4}, Lkotlinx/coroutines/scheduling/Task;-><init>(JLkotlinx/coroutines/scheduling/TaskContext;)V

    iput-object p1, p0, Lkotlinx/coroutines/scheduling/TaskImpl;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 101
    :try_start_0
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/TaskImpl;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    iget-object v0, p0, Lkotlinx/coroutines/scheduling/TaskImpl;->g:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {v0}, Lkotlinx/coroutines/scheduling/TaskContext;->c()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/TaskImpl;->g:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-interface {v1}, Lkotlinx/coroutines/scheduling/TaskContext;->c()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/TaskImpl;->a:Ljava/lang/Runnable;

    invoke-static {v1}, Lkotlinx/coroutines/DebugKt;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/TaskImpl;->a:Ljava/lang/Runnable;

    invoke-static {v1}, Lkotlinx/coroutines/DebugKt;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lkotlinx/coroutines/scheduling/TaskImpl;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/coroutines/scheduling/TaskImpl;->g:Lkotlinx/coroutines/scheduling/TaskContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
