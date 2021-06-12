.class public final Lkotlinx/coroutines/DefaultTimeSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/TimeSource;


# static fields
.field public static final a:Lkotlinx/coroutines/DefaultTimeSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lkotlinx/coroutines/DefaultTimeSource;

    invoke-direct {v0}, Lkotlinx/coroutines/DefaultTimeSource;-><init>()V

    sput-object v0, Lkotlinx/coroutines/DefaultTimeSource;->a:Lkotlinx/coroutines/DefaultTimeSource;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 23
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public a(Ljava/lang/Object;J)V
    .locals 1

    const-string v0, "blocker"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-static {p1, p2, p3}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    return-void
.end method

.method public a(Ljava/lang/Thread;)V
    .locals 1

    const-string v0, "thread"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {p1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method
