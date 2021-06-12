.class public final Lkotlinx/coroutines/sync/MutexKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/Symbol;

.field private static final b:Lkotlinx/coroutines/internal/Symbol;

.field private static final c:Lkotlinx/coroutines/internal/Symbol;

.field private static final d:Lkotlinx/coroutines/internal/Symbol;

.field private static final e:Lkotlinx/coroutines/internal/Symbol;

.field private static final f:Lkotlinx/coroutines/internal/Symbol;

.field private static final g:Lkotlinx/coroutines/sync/Empty;

.field private static final h:Lkotlinx/coroutines/sync/Empty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 117
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "LOCK_FAIL"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/MutexKt;->a:Lkotlinx/coroutines/internal/Symbol;

    .line 119
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "ENQUEUE_FAIL"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/MutexKt;->b:Lkotlinx/coroutines/internal/Symbol;

    .line 121
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "UNLOCK_FAIL"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/MutexKt;->c:Lkotlinx/coroutines/internal/Symbol;

    .line 123
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "SELECT_SUCCESS"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/MutexKt;->d:Lkotlinx/coroutines/internal/Symbol;

    .line 125
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "LOCKED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/MutexKt;->e:Lkotlinx/coroutines/internal/Symbol;

    .line 127
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "UNLOCKED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/sync/MutexKt;->f:Lkotlinx/coroutines/internal/Symbol;

    .line 130
    new-instance v0, Lkotlinx/coroutines/sync/Empty;

    sget-object v1, Lkotlinx/coroutines/sync/MutexKt;->e:Lkotlinx/coroutines/internal/Symbol;

    invoke-direct {v0, v1}, Lkotlinx/coroutines/sync/Empty;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lkotlinx/coroutines/sync/MutexKt;->g:Lkotlinx/coroutines/sync/Empty;

    .line 132
    new-instance v0, Lkotlinx/coroutines/sync/Empty;

    sget-object v1, Lkotlinx/coroutines/sync/MutexKt;->f:Lkotlinx/coroutines/internal/Symbol;

    invoke-direct {v0, v1}, Lkotlinx/coroutines/sync/Empty;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lkotlinx/coroutines/sync/MutexKt;->h:Lkotlinx/coroutines/sync/Empty;

    return-void
.end method

.method public static final a(Lkotlinx/coroutines/sync/Mutex;Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/sync/Mutex;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/sync/MutexKt$withLock$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/sync/MutexKt$withLock$1;

    iget v1, v0, Lkotlinx/coroutines/sync/MutexKt$withLock$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lkotlinx/coroutines/sync/MutexKt$withLock$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lkotlinx/coroutines/sync/MutexKt$withLock$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/sync/MutexKt$withLock$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/sync/MutexKt$withLock$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/sync/MutexKt$withLock$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 107
    iget v2, v0, Lkotlinx/coroutines/sync/MutexKt$withLock$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 113
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/sync/MutexKt$withLock$1;->L$2:Ljava/lang/Object;

    move-object p2, p0

    check-cast p2, Lkotlin/jvm/functions/Function0;

    iget-object p1, v0, Lkotlinx/coroutines/sync/MutexKt$withLock$1;->L$1:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/sync/MutexKt$withLock$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/sync/Mutex;

    instance-of v0, p3, Lkotlin/Result$Failure;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_1
    instance-of v2, p3, Lkotlin/Result$Failure;

    if-nez v2, :cond_3

    .line 108
    iput-object p0, v0, Lkotlinx/coroutines/sync/MutexKt$withLock$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/sync/MutexKt$withLock$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/sync/MutexKt$withLock$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/sync/MutexKt$withLock$1;->label:I

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/sync/Mutex;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_2

    return-object v1

    .line 110
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 112
    invoke-interface {p0, p1}, Lkotlinx/coroutines/sync/Mutex;->a(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object p2

    :catchall_0
    move-exception p2

    .line 113
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 112
    invoke-interface {p0, p1}, Lkotlinx/coroutines/sync/Mutex;->a(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p2

    .line 107
    :cond_3
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic a()Lkotlinx/coroutines/sync/Empty;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/sync/MutexKt;->h:Lkotlinx/coroutines/sync/Empty;

    return-object v0
.end method

.method public static final a(Z)Lkotlinx/coroutines/sync/Mutex;
    .locals 1

    .line 98
    new-instance v0, Lkotlinx/coroutines/sync/MutexImpl;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/sync/MutexImpl;-><init>(Z)V

    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    return-object v0
.end method

.method public static synthetic a(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 97
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/sync/MutexKt;->a(Z)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/sync/MutexKt;->a:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method public static final synthetic c()Lkotlinx/coroutines/sync/Empty;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/sync/MutexKt;->g:Lkotlinx/coroutines/sync/Empty;

    return-object v0
.end method

.method public static final synthetic d()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/sync/MutexKt;->b:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method public static final synthetic e()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/sync/MutexKt;->d:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method public static final synthetic f()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/sync/MutexKt;->c:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method public static final synthetic g()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/sync/MutexKt;->f:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method public static final synthetic h()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/sync/MutexKt;->e:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method
