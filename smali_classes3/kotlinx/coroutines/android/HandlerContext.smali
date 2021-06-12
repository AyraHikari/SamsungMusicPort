.class public final Lkotlinx/coroutines/android/HandlerContext;
.super Lkotlinx/coroutines/android/HandlerDispatcher;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/Delay;


# instance fields
.field private volatile b:Lkotlinx/coroutines/android/HandlerContext;

.field private final c:Lkotlinx/coroutines/android/HandlerContext;

.field private final d:Landroid/os/Handler;

.field private final e:Ljava/lang/String;

.field private final f:Z


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2, v0}, Lkotlinx/coroutines/android/HandlerContext;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, v0}, Lkotlinx/coroutines/android/HandlerDispatcher;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlinx/coroutines/android/HandlerContext;->d:Landroid/os/Handler;

    iput-object p2, p0, Lkotlinx/coroutines/android/HandlerContext;->e:Ljava/lang/String;

    iput-boolean p3, p0, Lkotlinx/coroutines/android/HandlerContext;->f:Z

    .line 105
    iget-boolean p1, p0, Lkotlinx/coroutines/android/HandlerContext;->f:Z

    if-eqz p1, :cond_0

    move-object v0, p0

    :cond_0
    iput-object v0, p0, Lkotlinx/coroutines/android/HandlerContext;->b:Lkotlinx/coroutines/android/HandlerContext;

    .line 107
    iget-object p1, p0, Lkotlinx/coroutines/android/HandlerContext;->b:Lkotlinx/coroutines/android/HandlerContext;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    new-instance p1, Lkotlinx/coroutines/android/HandlerContext;

    iget-object p2, p0, Lkotlinx/coroutines/android/HandlerContext;->d:Landroid/os/Handler;

    iget-object p3, p0, Lkotlinx/coroutines/android/HandlerContext;->e:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p1, p2, p3, v0}, Lkotlinx/coroutines/android/HandlerContext;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p1, p0, Lkotlinx/coroutines/android/HandlerContext;->b:Lkotlinx/coroutines/android/HandlerContext;

    :goto_0
    iput-object p1, p0, Lkotlinx/coroutines/android/HandlerContext;->c:Lkotlinx/coroutines/android/HandlerContext;

    return-void
.end method

.method public static final synthetic a(Lkotlinx/coroutines/android/HandlerContext;)Landroid/os/Handler;
    .locals 0

    .line 88
    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext;->d:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;
    .locals 3

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext;->d:Landroid/os/Handler;

    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {p1, p2, v1, v2}, Lkotlin/ranges/RangesKt;->b(JJ)J

    move-result-wide p1

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 128
    new-instance p1, Lkotlinx/coroutines/android/HandlerContext$invokeOnTimeout$1;

    invoke-direct {p1, p0, p3}, Lkotlinx/coroutines/android/HandlerContext$invokeOnTimeout$1;-><init>(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;)V

    check-cast p1, Lkotlinx/coroutines/DisposableHandle;

    return-object p1
.end method

.method public a(JLkotlinx/coroutines/CancellableContinuation;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "continuation"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    new-instance v0, Lkotlinx/coroutines/android/HandlerContext$scheduleResumeAfterDelay$$inlined$Runnable$1;

    invoke-direct {v0, p0, p3}, Lkotlinx/coroutines/android/HandlerContext$scheduleResumeAfterDelay$$inlined$Runnable$1;-><init>(Lkotlinx/coroutines/android/HandlerContext;Lkotlinx/coroutines/CancellableContinuation;)V

    check-cast v0, Ljava/lang/Runnable;

    .line 122
    iget-object v1, p0, Lkotlinx/coroutines/android/HandlerContext;->d:Landroid/os/Handler;

    const-wide v2, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {p1, p2, v2, v3}, Lkotlin/ranges/RangesKt;->b(JJ)J

    move-result-wide p1

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 123
    new-instance p1, Lkotlinx/coroutines/android/HandlerContext$scheduleResumeAfterDelay$1;

    invoke-direct {p1, p0, v0}, Lkotlinx/coroutines/android/HandlerContext$scheduleResumeAfterDelay$1;-><init>(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;)V

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-interface {p3, p1}, Lkotlinx/coroutines/CancellableContinuation;->a(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "block"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lkotlinx/coroutines/android/HandlerContext;->d:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lkotlin/coroutines/CoroutineContext;)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    iget-boolean p1, p0, Lkotlinx/coroutines/android/HandlerContext;->f:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v1, p0, Lkotlinx/coroutines/android/HandlerContext;->d:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 142
    instance-of v0, p1, Lkotlinx/coroutines/android/HandlerContext;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/coroutines/android/HandlerContext;

    iget-object p1, p1, Lkotlinx/coroutines/android/HandlerContext;->d:Landroid/os/Handler;

    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext;->d:Landroid/os/Handler;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 143
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext;->d:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 136
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 137
    iget-boolean v0, p0, Lkotlinx/coroutines/android/HandlerContext;->f:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lkotlinx/coroutines/android/HandlerContext;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [immediate]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext;->e:Ljava/lang/String;

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext;->d:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handler.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
