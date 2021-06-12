.class public final Lkotlinx/coroutines/ThreadLocalEventLoop;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlinx/coroutines/ThreadLocalEventLoop;

.field private static final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lkotlinx/coroutines/EventLoop;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    new-instance v0, Lkotlinx/coroutines/ThreadLocalEventLoop;

    invoke-direct {v0}, Lkotlinx/coroutines/ThreadLocalEventLoop;-><init>()V

    sput-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->a:Lkotlinx/coroutines/ThreadLocalEventLoop;

    .line 119
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lkotlinx/coroutines/EventLoop;
    .locals 2

    .line 122
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/EventLoop;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lkotlinx/coroutines/EventLoopKt;->a()Lkotlinx/coroutines/EventLoop;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/ThreadLocalEventLoop;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public final a(Lkotlinx/coroutines/EventLoop;)V
    .locals 1

    const-string v0, "eventLoop"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()V
    .locals 2

    .line 128
    sget-object v0, Lkotlinx/coroutines/ThreadLocalEventLoop;->b:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
