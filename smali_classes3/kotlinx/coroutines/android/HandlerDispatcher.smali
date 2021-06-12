.class public abstract Lkotlinx/coroutines/android/HandlerDispatcher;
.super Lkotlinx/coroutines/MainCoroutineDispatcher;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/Delay;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lkotlinx/coroutines/MainCoroutineDispatcher;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lkotlinx/coroutines/android/HandlerDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;
    .locals 1

    const-string v0, "block"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {p0, p1, p2, p3}, Lkotlinx/coroutines/Delay$DefaultImpls;->a(Lkotlinx/coroutines/Delay;JLjava/lang/Runnable;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object p1

    return-object p1
.end method
