.class final Lkotlin/coroutines/experimental/CoroutineContext$plus$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/coroutines/experimental/CoroutineContext$DefaultImpls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        "Lkotlin/coroutines/experimental/CoroutineContext$Element;",
        "Lkotlin/coroutines/experimental/CoroutineContext;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/coroutines/experimental/CoroutineContext$plus$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/coroutines/experimental/CoroutineContext$plus$1;

    invoke-direct {v0}, Lkotlin/coroutines/experimental/CoroutineContext$plus$1;-><init>()V

    sput-object v0, Lkotlin/coroutines/experimental/CoroutineContext$plus$1;->INSTANCE:Lkotlin/coroutines/experimental/CoroutineContext$plus$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Lkotlin/coroutines/experimental/CoroutineContext;

    check-cast p2, Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-virtual {p0, p1, p2}, Lkotlin/coroutines/experimental/CoroutineContext$plus$1;->invoke(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)Lkotlin/coroutines/experimental/CoroutineContext;
    .locals 3

    const-string v0, "acc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "element"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {p2}, Lkotlin/coroutines/experimental/CoroutineContext$Element;->a()Lkotlin/coroutines/experimental/CoroutineContext$Key;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/coroutines/experimental/CoroutineContext;->b(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object p1

    .line 36
    sget-object v0, Lkotlin/coroutines/experimental/EmptyCoroutineContext;->a:Lkotlin/coroutines/experimental/EmptyCoroutineContext;

    if-ne p1, v0, :cond_0

    check-cast p2, Lkotlin/coroutines/experimental/CoroutineContext;

    goto :goto_1

    .line 38
    :cond_0
    sget-object v0, Lkotlin/coroutines/experimental/ContinuationInterceptor;->a:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p1, v0}, Lkotlin/coroutines/experimental/CoroutineContext;->a(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext$Element;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/experimental/ContinuationInterceptor;

    if-nez v0, :cond_1

    .line 39
    new-instance v0, Lkotlin/coroutines/experimental/CombinedContext;

    invoke-direct {v0, p1, p2}, Lkotlin/coroutines/experimental/CombinedContext;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)V

    move-object p1, v0

    goto :goto_0

    .line 40
    :cond_1
    sget-object v1, Lkotlin/coroutines/experimental/ContinuationInterceptor;->a:Lkotlin/coroutines/experimental/ContinuationInterceptor$Key;

    check-cast v1, Lkotlin/coroutines/experimental/CoroutineContext$Key;

    invoke-interface {p1, v1}, Lkotlin/coroutines/experimental/CoroutineContext;->b(Lkotlin/coroutines/experimental/CoroutineContext$Key;)Lkotlin/coroutines/experimental/CoroutineContext;

    move-result-object p1

    .line 41
    sget-object v1, Lkotlin/coroutines/experimental/EmptyCoroutineContext;->a:Lkotlin/coroutines/experimental/EmptyCoroutineContext;

    if-ne p1, v1, :cond_2

    new-instance p1, Lkotlin/coroutines/experimental/CombinedContext;

    check-cast p2, Lkotlin/coroutines/experimental/CoroutineContext;

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-direct {p1, p2, v0}, Lkotlin/coroutines/experimental/CombinedContext;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)V

    goto :goto_0

    .line 42
    :cond_2
    new-instance v1, Lkotlin/coroutines/experimental/CombinedContext;

    new-instance v2, Lkotlin/coroutines/experimental/CombinedContext;

    invoke-direct {v2, p1, p2}, Lkotlin/coroutines/experimental/CombinedContext;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)V

    check-cast v2, Lkotlin/coroutines/experimental/CoroutineContext;

    check-cast v0, Lkotlin/coroutines/experimental/CoroutineContext$Element;

    invoke-direct {v1, v2, v0}, Lkotlin/coroutines/experimental/CombinedContext;-><init>(Lkotlin/coroutines/experimental/CoroutineContext;Lkotlin/coroutines/experimental/CoroutineContext$Element;)V

    move-object p1, v1

    .line 39
    :goto_0
    move-object p2, p1

    check-cast p2, Lkotlin/coroutines/experimental/CoroutineContext;

    :goto_1
    return-object p2
.end method
