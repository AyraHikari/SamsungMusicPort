.class final Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;
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
        "-TR;>;",
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
        0x76c,
        0x76c,
        0x4af,
        0x4af
    }
    d = "invokeSuspend"
    e = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$map$1"
.end annotation


# instance fields
.field final synthetic $this_map:Lkotlinx/coroutines/channels/ReceiveChannel;

.field final synthetic $transform:Lkotlin/jvm/functions/Function2;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/channels/ProducerScope;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->$this_map:Lkotlinx/coroutines/channels/ReceiveChannel;

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->$transform:Lkotlin/jvm/functions/Function2;

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

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->$this_map:Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->$transform:Lkotlin/jvm/functions/Function2;

    invoke-direct {v0, v1, v2, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;-><init>(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)V

    check-cast p1, Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->p$:Lkotlinx/coroutines/channels/ProducerScope;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v0

    .line 1197
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->label:I

    packed-switch v1, :pswitch_data_0

    .line 1201
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1197
    :pswitch_0
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$8:Ljava/lang/Object;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$7:Ljava/lang/Object;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$6:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$5:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v4, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;

    iget-object v6, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v7, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ProducerScope;

    :try_start_0
    instance-of v8, p1, Lkotlin/Result$Failure;

    if-nez v8, :cond_0

    move-object p1, p0

    move-object v12, v6

    move-object v6, v0

    move-object v0, v4

    move-object v4, v12

    goto/16 :goto_0

    :cond_0
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_1
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$9:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ProducerScope;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$8:Ljava/lang/Object;

    iget-object v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$7:Ljava/lang/Object;

    iget-object v4, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$6:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$5:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$4:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;

    iget-object v9, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v10, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ProducerScope;

    :try_start_1
    instance-of v11, p1, Lkotlin/Result$Failure;

    if-nez v11, :cond_1

    move-object v11, v0

    move-object v0, p0

    move-object v12, v10

    move-object v10, v2

    move-object v2, v5

    move-object v5, v4

    move-object v4, v7

    move-object v7, v12

    move-object v13, v9

    move-object v9, v3

    move-object v3, v6

    move-object v6, v13

    goto/16 :goto_3

    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    move-object v3, v6

    move-object v4, v7

    goto/16 :goto_5

    :catch_0
    move-exception p1

    move-object v3, p1

    move-object v4, v7

    goto/16 :goto_4

    :pswitch_2
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$6:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$5:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v4, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;

    iget-object v6, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v7, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ProducerScope;

    :try_start_2
    instance-of v8, p1, Lkotlin/Result$Failure;

    if-nez v8, :cond_2

    move-object v8, v5

    move-object v5, v1

    move-object v1, v7

    move-object v7, v0

    move-object v0, p0

    move-object v12, v2

    move-object v2, p1

    move-object p1, v12

    goto/16 :goto_2

    :cond_2
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :pswitch_3
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$6:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$5:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$4:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v4, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;

    iget-object v6, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v7, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ProducerScope;

    :try_start_3
    instance-of v8, p1, Lkotlin/Result$Failure;

    if-nez v8, :cond_3

    move-object v8, v0

    move-object v0, p0

    goto :goto_1

    :cond_3
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto/16 :goto_5

    :catch_1
    move-exception p1

    move-object v3, p1

    goto/16 :goto_4

    :pswitch_4
    instance-of v1, p1, Lkotlin/Result$Failure;

    if-nez v1, :cond_9

    iget-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->p$:Lkotlinx/coroutines/channels/ProducerScope;

    .line 1198
    iget-object v4, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->$this_map:Lkotlinx/coroutines/channels/ReceiveChannel;

    const/4 v1, 0x0

    .line 1897
    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    .line 1900
    :try_start_4
    invoke-interface {v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v5, p0

    move-object v7, p1

    move-object v6, v0

    move-object v0, v4

    move-object v2, v0

    move-object p1, v5

    :goto_0
    :try_start_5
    iput-object v7, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$0:Ljava/lang/Object;

    iput-object v4, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$1:Ljava/lang/Object;

    iput-object v5, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$2:Ljava/lang/Object;

    iput-object v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$3:Ljava/lang/Object;

    iput-object v3, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$4:Ljava/lang/Object;

    iput-object v2, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$5:Ljava/lang/Object;

    iput-object v1, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$6:Ljava/lang/Object;

    const/4 v8, 0x1

    iput v8, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->label:I

    invoke-interface {v1, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ne v8, v6, :cond_4

    return-object v6

    :cond_4
    move-object v12, v0

    move-object v0, p1

    move-object p1, v8

    move-object v8, v6

    move-object v6, v4

    move-object v4, v12

    .line 1197
    :goto_1
    :try_start_6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$3:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$5:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$6:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->label:I

    invoke-interface {v1, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v8, :cond_5

    return-object v8

    :cond_5
    move-object v12, v2

    move-object v2, p1

    move-object p1, v12

    move-object v13, v5

    move-object v5, v1

    move-object v1, v7

    move-object v7, v8

    move-object v8, v13

    .line 1199
    :goto_2
    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->$transform:Lkotlin/jvm/functions/Function2;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$1:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$3:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$5:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$6:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$7:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$8:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$9:Ljava/lang/Object;

    const/4 v10, 0x3

    iput v10, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->label:I

    invoke-interface {v9, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v7, :cond_6

    return-object v7

    :cond_6
    move-object v10, v2

    move-object v11, v7

    move-object v2, p1

    move-object v7, v1

    move-object p1, v9

    move-object v9, v10

    .line 1200
    :goto_3
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$1:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$3:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$5:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$6:Ljava/lang/Object;

    iput-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$7:Ljava/lang/Object;

    iput-object v10, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->L$8:Ljava/lang/Object;

    const/4 v9, 0x4

    iput v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$map$1;->label:I

    invoke-interface {v1, p1, v0}, Lkotlinx/coroutines/channels/ProducerScope;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v11, :cond_7

    return-object v11

    :cond_7
    move-object p1, v0

    move-object v0, v4

    move-object v1, v5

    move-object v4, v6

    move-object v5, v8

    move-object v6, v11

    goto/16 :goto_0

    .line 1901
    :cond_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1903
    invoke-interface {v4, v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    .line 1201
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1

    :catchall_2
    move-exception p1

    move-object v4, v0

    goto :goto_5

    :catch_2
    move-exception p1

    move-object v3, p1

    move-object v4, v0

    .line 1906
    :goto_4
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1903
    :goto_5
    invoke-interface {v4, v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    throw p1

    .line 1197
    :cond_9
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
