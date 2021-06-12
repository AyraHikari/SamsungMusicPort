.class public final Lkotlinx/coroutines/internal/ThreadContextKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlinx/coroutines/internal/Symbol;

.field private static final b:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lkotlinx/coroutines/ThreadContextElement<",
            "*>;",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            "Lkotlinx/coroutines/ThreadContextElement<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final d:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lkotlinx/coroutines/internal/ThreadState;",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            "Lkotlinx/coroutines/internal/ThreadState;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lkotlinx/coroutines/internal/ThreadState;",
            "Lkotlin/coroutines/CoroutineContext$Element;",
            "Lkotlinx/coroutines/internal/ThreadState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "ZERO"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->a:Lkotlinx/coroutines/internal/Symbol;

    .line 26
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$countAll$1;->INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$countAll$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->b:Lkotlin/jvm/functions/Function2;

    .line 36
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$findOne$1;->INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$findOne$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->c:Lkotlin/jvm/functions/Function2;

    .line 43
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;->INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$updateState$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->d:Lkotlin/jvm/functions/Function2;

    .line 52
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;->INSTANCE:Lkotlinx/coroutines/internal/ThreadContextKt$restoreState$1;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    sput-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->e:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public static final a(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 60
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/internal/ThreadContextKt;->b:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    return-object p0
.end method

.method public static final a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/internal/ThreadContextKt;->a(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    sget-object p0, Lkotlinx/coroutines/internal/ThreadContextKt;->a:Lkotlinx/coroutines/internal/Symbol;

    goto :goto_1

    .line 70
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 72
    new-instance v0, Lkotlinx/coroutines/internal/ThreadState;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/internal/ThreadState;-><init>(Lkotlin/coroutines/CoroutineContext;I)V

    sget-object p1, Lkotlinx/coroutines/internal/ThreadContextKt;->d:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, p1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    .line 77
    check-cast p1, Lkotlinx/coroutines/ThreadContextElement;

    .line 78
    invoke-interface {p1, p0}, Lkotlinx/coroutines/ThreadContextElement;->b(Lkotlin/coroutines/CoroutineContext;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0

    .line 77
    :cond_3
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final b(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->a:Lkotlinx/coroutines/internal/Symbol;

    if-ne p1, v0, :cond_0

    return-void

    .line 86
    :cond_0
    instance-of v0, p1, Lkotlinx/coroutines/internal/ThreadState;

    if-eqz v0, :cond_1

    .line 88
    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/internal/ThreadState;

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ThreadState;->b()V

    .line 89
    sget-object v0, Lkotlinx/coroutines/internal/ThreadContextKt;->e:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, p1, v0}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 94
    sget-object v1, Lkotlinx/coroutines/internal/ThreadContextKt;->c:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, v0, v1}, Lkotlin/coroutines/CoroutineContext;->fold(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lkotlinx/coroutines/ThreadContextElement;

    .line 95
    invoke-interface {v0, p0, p1}, Lkotlinx/coroutines/ThreadContextElement;->a(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 94
    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
