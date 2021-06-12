.class final Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;
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
        0x250,
        0x250,
        0x255,
        0x255,
        0x256
    }
    d = "invokeSuspend"
    e = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$drop$1"
.end annotation


# instance fields
.field final synthetic $n:I

.field final synthetic $this_drop:Lkotlinx/coroutines/channels/ReceiveChannel;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->$this_drop:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->$n:I

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

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->$this_drop:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->$n:I

    invoke-direct {v0, v1, v2, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->p$:Lkotlinx/coroutines/channels/ProducerScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v0

    .line 588
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 600
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 588
    :pswitch_0
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->L$1:Ljava/lang/Object;

    iget v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->I$0:I

    iget-object v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    instance-of v4, p1, Lkotlin/Result$Failure;

    if-nez v4, :cond_0

    move-object p1, p0

    move-object v4, v0

    goto/16 :goto_5

    :cond_0
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_1
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->I$0:I

    iget-object v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    instance-of v4, p1, Lkotlin/Result$Failure;

    if-nez v4, :cond_1

    move-object v4, v0

    move-object v0, p0

    goto/16 :goto_7

    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_2
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->I$0:I

    iget-object v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ProducerScope;

    instance-of v4, p1, Lkotlin/Result$Failure;

    if-nez v4, :cond_2

    move-object v4, v0

    move-object v0, p0

    goto/16 :goto_6

    :cond_2
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_3
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->I$0:I

    iget-object v4, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    instance-of v5, p1, Lkotlin/Result$Failure;

    if-nez v5, :cond_3

    move-object p1, p0

    move-object v6, v4

    move-object v4, v0

    move-object v0, v6

    goto/16 :goto_3

    :cond_3
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_4
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->I$0:I

    iget-object v4, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    instance-of v5, p1, Lkotlin/Result$Failure;

    if-nez v5, :cond_4

    move-object v5, v0

    move-object v0, p0

    goto :goto_2

    :cond_4
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_5
    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_10

    iget-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->p$:Lkotlinx/coroutines/channels/ProducerScope;

    .line 589
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->$n:I

    if-ltz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_f

    .line 590
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->$n:I

    if-lez v1, :cond_a

    .line 592
    iget-object v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->$this_drop:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v3

    move-object v4, v0

    move-object v0, p1

    move-object p1, p0

    :goto_1
    iput-object v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->L$0:Ljava/lang/Object;

    iput v1, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->I$0:I

    iput-object v3, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->L$1:Ljava/lang/Object;

    iput v2, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->label:I

    invoke-interface {v3, p1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_6

    return-object v4

    :cond_6
    move-object v6, v0

    move-object v0, p1

    move-object p1, v5

    move-object v5, v4

    move-object v4, v6

    move-object v7, v3

    move v3, v1

    move-object v1, v7

    .line 588
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->I$0:I

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->L$1:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->label:I

    invoke-interface {v1, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_7

    return-object v5

    :cond_7
    move-object p1, v0

    move-object v0, v4

    move-object v4, v5

    :goto_3
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_8

    goto :goto_4

    :cond_8
    move v6, v3

    move-object v3, v1

    move v1, v6

    goto :goto_1

    :cond_9
    move-object p1, v0

    move-object v0, v4

    move-object v4, v5

    goto :goto_4

    :cond_a
    move-object v4, v0

    move v3, v1

    move-object v0, p1

    move-object p1, p0

    .line 597
    :goto_4
    iget-object v1, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->$this_drop:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v1}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v1

    move v2, v3

    move-object v3, v0

    :goto_5
    iput-object v3, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->L$0:Ljava/lang/Object;

    iput v2, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->I$0:I

    iput-object v1, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->L$1:Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->label:I

    invoke-interface {v1, p1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_b

    return-object v4

    :cond_b
    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    .line 588
    :goto_6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_e

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->L$0:Ljava/lang/Object;

    iput v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->I$0:I

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->L$1:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->label:I

    invoke-interface {v1, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_c

    return-object v4

    .line 598
    :cond_c
    :goto_7
    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->L$0:Ljava/lang/Object;

    iput v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->I$0:I

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->L$1:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->L$2:Ljava/lang/Object;

    const/4 v5, 0x5

    iput v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->label:I

    invoke-interface {v3, p1, v0}, Lkotlinx/coroutines/channels/ProducerScope;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v4, :cond_d

    return-object v4

    :cond_d
    move-object p1, v0

    goto :goto_5

    .line 600
    :cond_e
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 589
    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested element count "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$drop$1;->$n:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is less than zero."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 588
    :cond_10
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
