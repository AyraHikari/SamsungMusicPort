.class final Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$invoke$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function2;

.field final synthetic $this_invoke:Lkotlinx/coroutines/selects/SelectClause1;

.field final synthetic this$0:Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;Lkotlinx/coroutines/selects/SelectClause1;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$invoke$2;->this$0:Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;

    iput-object p2, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$invoke$2;->$this_invoke:Lkotlinx/coroutines/selects/SelectClause1;

    iput-object p3, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$invoke$2;->$block:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$invoke$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 59
    iget-object v0, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$invoke$2;->$this_invoke:Lkotlinx/coroutines/selects/SelectClause1;

    iget-object v1, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$invoke$2;->this$0:Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;

    invoke-virtual {v1}, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;->a()Lkotlinx/coroutines/selects/SelectBuilderImpl;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/selects/SelectInstance;

    iget-object v2, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$invoke$2;->$block:Lkotlin/jvm/functions/Function2;

    invoke-interface {v0, v1, v2}, Lkotlinx/coroutines/selects/SelectClause1;->a(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
