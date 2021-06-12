.class public final Lkotlinx/coroutines/Delay$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/Delay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static a(Lkotlinx/coroutines/Delay;JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;
    .locals 0

    const-string p0, "block"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lkotlinx/coroutines/DefaultExecutorKt;->a()Lkotlinx/coroutines/Delay;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lkotlinx/coroutines/Delay;->a(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p0

    return-object p0
.end method
