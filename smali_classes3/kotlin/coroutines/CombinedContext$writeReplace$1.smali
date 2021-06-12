.class final Lkotlin/coroutines/CombinedContext$writeReplace$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/coroutines/CombinedContext;->writeReplace()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlin/Unit;",
        "Lkotlin/coroutines/CoroutineContext$Element;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $elements:[Lkotlin/coroutines/CoroutineContext;

.field final synthetic $index:Lkotlin/jvm/internal/Ref$IntRef;


# direct methods
.method constructor <init>([Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/internal/Ref$IntRef;)V
    .locals 0

    iput-object p1, p0, Lkotlin/coroutines/CombinedContext$writeReplace$1;->$elements:[Lkotlin/coroutines/CoroutineContext;

    iput-object p2, p0, Lkotlin/coroutines/CombinedContext$writeReplace$1;->$index:Lkotlin/jvm/internal/Ref$IntRef;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Lkotlin/Unit;

    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    invoke-virtual {p0, p1, p2}, Lkotlin/coroutines/CombinedContext$writeReplace$1;->invoke(Lkotlin/Unit;Lkotlin/coroutines/CoroutineContext$Element;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lkotlin/Unit;Lkotlin/coroutines/CoroutineContext$Element;)V
    .locals 3

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "element"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lkotlin/coroutines/CombinedContext$writeReplace$1;->$elements:[Lkotlin/coroutines/CoroutineContext;

    iget-object v0, p0, Lkotlin/coroutines/CombinedContext$writeReplace$1;->$index:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    aput-object p2, p1, v1

    return-void
.end method
