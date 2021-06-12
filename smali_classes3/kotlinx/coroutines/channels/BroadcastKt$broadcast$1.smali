.class final Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/BroadcastKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/channels/ProducerScope<",
        "-TE;>;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    b = "Broadcast.kt"
    c = {
        0x1d,
        0x1d,
        0x1e
    }
    d = "invokeSuspend"
    e = "kotlinx.coroutines.channels.BroadcastKt$broadcast$1"
.end annotation


# instance fields
.field final synthetic $this_broadcast:Lkotlinx/coroutines/channels/ReceiveChannel;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->$this_broadcast:Lkotlinx/coroutines/channels/ReceiveChannel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->$this_broadcast:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-direct {v0, v1, p2}, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p1, v0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->p$:Lkotlinx/coroutines/channels/ProducerScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v0

    .line 28
    iget v1, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->label:I

    packed-switch v1, :pswitch_data_0

    .line 32
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :pswitch_0
    iget-object v1, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->L$1:Ljava/lang/Object;

    iget-object v2, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ProducerScope;

    instance-of v3, p1, Lkotlin/Result$Failure;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_1
    iget-object v1, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ProducerScope;

    instance-of v3, p1, Lkotlin/Result$Failure;

    if-nez v3, :cond_1

    move-object v3, v0

    move-object v0, p0

    goto :goto_3

    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_2
    iget-object v1, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ProducerScope;

    instance-of v3, p1, Lkotlin/Result$Failure;

    if-nez v3, :cond_2

    move-object v3, v0

    move-object v0, p0

    goto :goto_2

    :cond_2
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_3
    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_7

    iget-object p1, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->p$:Lkotlinx/coroutines/channels/ProducerScope;

    .line 29
    iget-object v1, p0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->$this_broadcast:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v1}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v1

    move-object v2, p1

    :goto_0
    move-object p1, p0

    :goto_1
    iput-object v2, p1, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->L$0:Ljava/lang/Object;

    iput-object v1, p1, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->L$1:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, p1, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->label:I

    invoke-interface {v1, p1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_3

    return-object v0

    :cond_3
    move-object v5, v0

    move-object v0, p1

    move-object p1, v3

    move-object v3, v5

    .line 28
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    iput-object v2, v0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->L$0:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->L$1:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->label:I

    invoke-interface {v1, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_4

    return-object v3

    .line 30
    :cond_4
    :goto_3
    iput-object v2, v0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->L$1:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->L$2:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v0, Lkotlinx/coroutines/channels/BroadcastKt$broadcast$1;->label:I

    invoke-interface {v2, p1, v0}, Lkotlinx/coroutines/channels/ProducerScope;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_5

    return-object v3

    :cond_5
    move-object p1, v0

    move-object v0, v3

    goto :goto_1

    .line 32
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 28
    :cond_7
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
