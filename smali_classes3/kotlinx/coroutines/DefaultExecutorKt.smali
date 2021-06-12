.class public final Lkotlinx/coroutines/DefaultExecutorKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lkotlinx/coroutines/Delay;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    sget-object v0, Lkotlinx/coroutines/DefaultExecutor;->b:Lkotlinx/coroutines/DefaultExecutor;

    check-cast v0, Lkotlinx/coroutines/Delay;

    sput-object v0, Lkotlinx/coroutines/DefaultExecutorKt;->a:Lkotlinx/coroutines/Delay;

    return-void
.end method

.method public static final a()Lkotlinx/coroutines/Delay;
    .locals 1

    .line 9
    sget-object v0, Lkotlinx/coroutines/DefaultExecutorKt;->a:Lkotlinx/coroutines/Delay;

    return-object v0
.end method
