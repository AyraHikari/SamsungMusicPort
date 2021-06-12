.class public final Lkotlinx/coroutines/PoolThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/coroutines/ThreadPoolDispatcher;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/ThreadPoolDispatcher;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "target"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object p1, p0, Lkotlinx/coroutines/PoolThread;->a:Lkotlinx/coroutines/ThreadPoolDispatcher;

    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/PoolThread;->setDaemon(Z)V

    return-void
.end method
