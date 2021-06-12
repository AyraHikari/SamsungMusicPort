.class final Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;
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
        0x350,
        0x350,
        0x351
    }
    d = "invokeSuspend"
    e = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$take$1"
.end annotation


# instance fields
.field final synthetic $n:I

.field final synthetic $this_take:Lkotlinx/coroutines/channels/ReceiveChannel;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->$this_take:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->$n:I

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

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->$this_take:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->$n:I

    invoke-direct {v0, v1, v2, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->p$:Lkotlinx/coroutines/channels/ProducerScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v0

    .line 844
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->label:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 854
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 844
    :pswitch_0
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$1:Ljava/lang/Object;

    iget v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->I$0:I

    iget-object v4, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    instance-of v5, p1, Lkotlin/Result$Failure;

    if-nez v5, :cond_0

    move-object p1, p0

    goto/16 :goto_3

    :cond_0
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_1
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->I$0:I

    iget-object v4, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    instance-of v5, p1, Lkotlin/Result$Failure;

    if-nez v5, :cond_1

    move-object v5, v0

    move-object v0, p0

    goto/16 :goto_2

    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_2
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->I$0:I

    iget-object v4, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ProducerScope;

    instance-of v5, p1, Lkotlin/Result$Failure;

    if-nez v5, :cond_2

    move-object v5, v0

    move-object v0, p0

    goto :goto_1

    :cond_2
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_3
    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_b

    iget-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->p$:Lkotlinx/coroutines/channels/ProducerScope;

    .line 845
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->$n:I

    if-nez v1, :cond_3

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 846
    :cond_3
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->$n:I

    if-ltz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_a

    .line 847
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->$n:I

    .line 848
    iget-object v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->$this_take:Lkotlinx/coroutines/channels/ReceiveChannel;

    invoke-interface {v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v3

    move-object v4, p1

    move-object p1, p0

    move-object v7, v3

    move v3, v1

    move-object v1, v7

    :cond_5
    iput-object v4, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$0:Ljava/lang/Object;

    iput v3, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->I$0:I

    iput-object v1, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$1:Ljava/lang/Object;

    iput v2, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->label:I

    invoke-interface {v1, p1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_6

    return-object v0

    :cond_6
    move-object v7, v0

    move-object v0, p1

    move-object p1, v5

    move-object v5, v7

    .line 844
    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->I$0:I

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$1:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->label:I

    invoke-interface {v1, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_7

    return-object v5

    .line 849
    :cond_7
    :goto_2
    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->I$0:I

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$1:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->L$2:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->label:I

    invoke-interface {v4, p1, v0}, Lkotlinx/coroutines/channels/ProducerScope;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v5, :cond_8

    return-object v5

    :cond_8
    move-object p1, v0

    move-object v0, v5

    :goto_3
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_5

    .line 852
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 854
    :cond_9
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    .line 846
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested element count "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$take$1;->$n:I

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

    .line 844
    :cond_b
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
