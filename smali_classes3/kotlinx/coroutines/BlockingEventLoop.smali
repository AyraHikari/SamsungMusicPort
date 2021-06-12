.class public final Lkotlinx/coroutines/BlockingEventLoop;
.super Lkotlinx/coroutines/EventLoopImplBase;
.source "SourceFile"


# instance fields
.field private final b:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 1

    const-string v0, "thread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lkotlinx/coroutines/EventLoopImplBase;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/BlockingEventLoop;->b:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method protected b()Ljava/lang/Thread;
    .locals 1

    .line 313
    iget-object v0, p0, Lkotlinx/coroutines/BlockingEventLoop;->b:Ljava/lang/Thread;

    return-object v0
.end method
