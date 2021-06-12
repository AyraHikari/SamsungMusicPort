.class final Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$onTimeout$1;
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
.field final synthetic $block:Lkotlin/jvm/functions/Function1;

.field final synthetic $timeMillis:J

.field final synthetic this$0:Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;JLkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$onTimeout$1;->this$0:Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;

    iput-wide p2, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$onTimeout$1;->$timeMillis:J

    iput-object p4, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$onTimeout$1;->$block:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$onTimeout$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 67
    iget-object v0, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$onTimeout$1;->this$0:Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;

    invoke-virtual {v0}, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl;->a()Lkotlinx/coroutines/selects/SelectBuilderImpl;

    move-result-object v0

    iget-wide v1, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$onTimeout$1;->$timeMillis:J

    iget-object v3, p0, Lkotlinx/coroutines/selects/UnbiasedSelectBuilderImpl$onTimeout$1;->$block:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1, v2, v3}, Lkotlinx/coroutines/selects/SelectBuilderImpl;->a(JLkotlin/jvm/functions/Function1;)V

    return-void
.end method
