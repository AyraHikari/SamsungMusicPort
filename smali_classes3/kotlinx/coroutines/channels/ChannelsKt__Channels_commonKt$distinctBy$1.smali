.class final Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt;
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
    b = "Channels.common.kt"
    c = {
        0x5b5,
        0x5b5,
        0x5b6,
        0x5b8
    }
    d = "invokeSuspend"
    e = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$distinctBy$1"
.end annotation


# instance fields
.field final synthetic $selector:Lkotlin/jvm/functions/Function2;

.field final synthetic $this_distinctBy:Lkotlinx/coroutines/channels/ReceiveChannel;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->$this_distinctBy:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->$selector:Lkotlin/jvm/functions/Function2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
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

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->$this_distinctBy:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->$selector:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->p$:Lkotlinx/coroutines/channels/ProducerScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1459
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->label:I

    packed-switch v1, :pswitch_data_0

    .line 1468
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1459
    :pswitch_0
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$4:Ljava/lang/Object;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$2:Ljava/lang/Object;

    iget-object v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashSet;

    iget-object v4, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    instance-of v5, p1, Lkotlin/Result$Failure;

    if-nez v5, :cond_0

    move-object v5, v0

    move-object p1, v2

    move-object v0, p0

    goto/16 :goto_4

    :cond_0
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_1
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$2:Ljava/lang/Object;

    iget-object v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$1:Ljava/lang/Object;

    check-cast v3, Ljava/util/HashSet;

    iget-object v4, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    instance-of v5, p1, Lkotlin/Result$Failure;

    if-nez v5, :cond_1

    move-object v5, v0

    move-object v0, p0

    move-object v7, v1

    move-object v1, p1

    move-object p1, v7

    goto/16 :goto_3

    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_2
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashSet;

    iget-object v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    instance-of v4, p1, Lkotlin/Result$Failure;

    if-nez v4, :cond_3

    move-object v4, v0

    move-object v0, p0

    :cond_2
    move-object v7, v2

    move-object v2, p1

    move-object p1, v7

    goto/16 :goto_2

    :cond_3
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_3
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$1:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashSet;

    iget-object v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    instance-of v4, p1, Lkotlin/Result$Failure;

    if-nez v4, :cond_4

    move-object v4, v0

    move-object v0, p0

    goto :goto_1

    :cond_4
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_4
    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_a

    iget-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->p$:Lkotlinx/coroutines/channels/ProducerScope;

    .line 1460
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1461
    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->$this_distinctBy:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2

    move-object v3, v0

    move-object v0, p1

    move-object p1, p0

    :goto_0
    iput-object v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$0:Ljava/lang/Object;

    iput-object v1, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$1:Ljava/lang/Object;

    iput-object v2, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$2:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->label:I

    invoke-interface {v2, p1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_5

    return-object v3

    :cond_5
    move-object v7, v0

    move-object v0, p1

    move-object p1, v4

    move-object v4, v3

    move-object v3, v7

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    .line 1459
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$1:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$2:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->label:I

    invoke-interface {v1, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_2

    return-object v4

    .line 1462
    :goto_2
    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->$selector:Lkotlin/jvm/functions/Function2;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$2:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$3:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->label:I

    invoke-interface {v5, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_6

    return-object v4

    :cond_6
    move-object v7, v3

    move-object v3, p1

    move-object p1, v1

    move-object v1, v5

    move-object v5, v4

    move-object v4, v7

    .line 1463
    :goto_3
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 1464
    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$0:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$3:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->L$4:Ljava/lang/Object;

    const/4 v6, 0x4

    iput v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$distinctBy$1;->label:I

    invoke-interface {v4, v2, v0}, Lkotlinx/coroutines/channels/ProducerScope;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v5, :cond_7

    return-object v5

    .line 1465
    :cond_7
    :goto_4
    move-object v2, v3

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_8
    move-object v2, p1

    move-object p1, v0

    move-object v1, v3

    move-object v0, v4

    move-object v3, v5

    goto :goto_0

    .line 1468
    :cond_9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 1459
    :cond_a
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
