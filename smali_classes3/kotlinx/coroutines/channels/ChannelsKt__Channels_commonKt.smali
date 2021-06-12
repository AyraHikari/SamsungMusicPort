.class final synthetic Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlinx/coroutines/channels/BroadcastChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/BroadcastChannel<",
            "TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 42
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 45
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 42
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$5:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/BroadcastChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/BroadcastChannel;

    :try_start_0
    instance-of v7, p2, Lkotlin/Result$Failure;

    if-nez v7, :cond_1

    move-object v8, p2

    move-object p2, p0

    move-object p0, p1

    move-object p1, v8

    goto/16 :goto_3

    :cond_1
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$5:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/BroadcastChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/BroadcastChannel;

    :try_start_1
    instance-of v7, p2, Lkotlin/Result$Failure;

    if-nez v7, :cond_2

    move-object v8, p2

    move-object p2, p1

    move-object p1, v8

    goto :goto_2

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :pswitch_2
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    .line 1896
    invoke-interface {p0}, Lkotlinx/coroutines/channels/BroadcastChannel;->a()Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object v2

    .line 44
    :try_start_2
    invoke-interface {v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p2

    move-object v4, p0

    move-object v6, v4

    move-object v5, p1

    move-object p0, v2

    :goto_1
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$5:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->label:I

    invoke-interface {p2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v8, p2

    move-object p2, p0

    move-object p0, v8

    .line 42
    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$3:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$4:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$5:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v8, p2

    move-object p2, p0

    move-object p0, v8

    .line 45
    :goto_3
    invoke-interface {v5, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 1900
    invoke-interface {v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->b()V

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object p0

    :goto_4
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    invoke-interface {v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->b()V

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 42
    :cond_6
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;I",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 171
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->label:I

    const/16 v3, 0x2e

    packed-switch v2, :pswitch_data_0

    .line 172
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 171
    :pswitch_0
    iget p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->I$1:I

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->I$0:I

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v9, p2, Lkotlin/Result$Failure;

    if-nez v9, :cond_1

    move-object v10, v2

    move-object v2, p1

    move-object p1, v10

    goto/16 :goto_3

    :cond_1
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->I$1:I

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$3:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->I$0:I

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v9, p2, Lkotlin/Result$Failure;

    if-nez v9, :cond_2

    move-object v10, v1

    move v1, p0

    move-object p0, v5

    move-object v5, v10

    goto :goto_2

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v5

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v4, p0

    move-object p0, v5

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_8

    const/4 p2, 0x0

    .line 1953
    move-object v4, p2

    check-cast v4, Ljava/lang/Throwable;

    if-ltz p1, :cond_7

    const/4 p2, 0x0

    .line 1961
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2

    move-object v6, p0

    move-object v8, v6

    move v7, p1

    move-object p1, v8

    :goto_1
    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$0:Ljava/lang/Object;

    iput v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->I$0:I

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$5:Ljava/lang/Object;

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->I$1:I

    const/4 v5, 0x1

    iput v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v1, :cond_3

    return-object v1

    :cond_3
    move-object v10, v2

    move-object v2, p1

    move-object p1, v10

    move-object v11, v1

    move v1, p2

    move-object p2, v5

    move-object v5, v11

    .line 171
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$0:Ljava/lang/Object;

    iput v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->I$0:I

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$5:Ljava/lang/Object;

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->I$1:I

    const/4 p2, 0x2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne p2, v5, :cond_4

    return-object v5

    :cond_4
    move-object v10, v5

    move-object v5, p0

    move p0, v1

    move-object v1, v10

    move-object v11, v2

    move-object v2, p1

    move-object p1, v11

    :goto_3
    add-int/lit8 v9, p0, 0x1

    if-ne v7, p0, :cond_5

    .line 1959
    invoke-interface {v5, v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object p2

    :cond_5
    move-object p0, v5

    move p2, v9

    goto :goto_1

    .line 1965
    :cond_6
    :try_start_3
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 172
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ReceiveChannel doesn\'t contain element at index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 1957
    :cond_7
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 172
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReceiveChannel doesn\'t contain element at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v4, p1

    .line 1968
    :goto_4
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1959
    :goto_5
    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    throw p1

    .line 171
    :cond_8
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 184
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 1988
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 184
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$5:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->I$1:I

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$4:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->I$0:I

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_1

    move-object v9, v4

    move-object v4, p0

    move-object p0, v9

    move-object v10, p3

    move p3, p1

    move-object p1, v10

    goto/16 :goto_4

    :cond_1
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$5:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->I$1:I

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$4:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->I$0:I

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_2

    move-object v9, p3

    move p3, p1

    move-object p1, v9

    goto :goto_3

    :cond_2
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :catch_0
    move-exception p0

    move-object v2, p0

    move-object p0, v4

    goto/16 :goto_5

    :pswitch_2
    instance-of v2, p3, Lkotlin/Result$Failure;

    if-nez v2, :cond_8

    const/4 p3, 0x0

    .line 1969
    move-object v2, p3

    check-cast v2, Ljava/lang/Throwable;

    if-gez p1, :cond_3

    .line 187
    :try_start_2
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p2, 0x4

    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 1977
    :goto_1
    invoke-interface {p0, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object p1

    :catchall_1
    move-exception p1

    move-object v4, p0

    move-object p0, p1

    goto/16 :goto_6

    :catch_1
    move-exception p1

    move-object v2, p1

    goto/16 :goto_5

    :cond_3
    const/4 p3, 0x0

    .line 189
    :try_start_3
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4

    move-object v7, p0

    move v6, p1

    move-object v5, p2

    move-object p2, v7

    :goto_2
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->I$0:I

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$3:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$4:Ljava/lang/Object;

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->I$1:I

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$5:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->label:I

    invoke-interface {v4, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v9, v4

    move-object v4, p0

    move-object p0, v9

    .line 184
    :goto_3
    :try_start_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v8, 0x2

    if-eqz p1, :cond_7

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->I$0:I

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$3:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$4:Ljava/lang/Object;

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->I$1:I

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$5:Ljava/lang/Object;

    iput v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    move-object v9, v4

    move-object v4, p0

    move-object p0, v9

    :goto_4
    add-int/lit8 v8, p3, 0x1

    if-ne v6, p3, :cond_6

    const/4 p2, 0x3

    .line 191
    invoke-static {p2}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    goto :goto_1

    :cond_6
    move p3, v8

    goto :goto_2

    .line 193
    :cond_7
    :try_start_5
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v5, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 1977
    invoke-interface {v4, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object p0

    .line 1980
    :goto_5
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_6
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 1977
    invoke-interface {v4, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 184
    :cond_8
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 326
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 333
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 326
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$1:Ljava/lang/Object;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v9, p2, Lkotlin/Result$Failure;

    if-nez v9, :cond_2

    :cond_1
    move-object v10, v4

    move-object v4, p0

    move-object p0, v10

    goto/16 :goto_3

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$1:Ljava/lang/Object;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v9, p2, Lkotlin/Result$Failure;

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v2, p0

    move-object p0, v4

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    .line 327
    new-instance p2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v2, 0x0

    iput v2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v2, 0x0

    .line 2140
    check-cast v2, Ljava/lang/Throwable;

    .line 2143
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4

    move-object v5, p0

    move-object v8, v5

    move-object v7, p1

    move-object p1, v8

    :goto_1
    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$6:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$7:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->label:I

    invoke-interface {v4, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v6, v1, :cond_4

    return-object v1

    :cond_4
    move-object v10, v4

    move-object v4, p0

    move-object p0, v10

    move-object v11, v6

    move-object v6, p2

    move-object p2, v11

    .line 326
    :goto_2
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$7:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v1, :cond_1

    return-object v1

    .line 329
    :goto_3
    :try_start_4
    invoke-static {v7, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 330
    iget p1, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2146
    invoke-interface {p0, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object p1

    .line 331
    :cond_5
    :try_start_5
    iget p2, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p2, v3

    iput p2, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object p2, v6

    goto :goto_1

    .line 2144
    :cond_6
    :try_start_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2146
    invoke-interface {v4, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    const/4 p0, -0x1

    .line 333
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p1

    move-object v4, p0

    move-object p0, p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v2, p1

    .line 2149
    :goto_4
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 2146
    :goto_5
    invoke-interface {v4, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    throw p0

    .line 326
    :cond_7
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TR;",
            "Lkotlin/jvm/functions/Function2<",
            "-TR;-TE;+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1578
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 3174
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1578
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$8:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$7:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$6:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$5:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$1:Ljava/lang/Object;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v9, p3, Lkotlin/Result$Failure;

    if-nez v9, :cond_1

    move-object v10, v4

    move-object v4, p0

    move-object p0, v10

    move-object v11, v1

    move-object v1, p1

    move-object p1, v2

    move-object v2, v11

    goto/16 :goto_3

    :cond_1
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$8:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$7:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$6:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$5:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$1:Ljava/lang/Object;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v9, p3, Lkotlin/Result$Failure;

    if-nez v9, :cond_2

    move-object v10, v1

    move-object v1, p1

    move-object p1, v2

    move-object v2, v10

    goto :goto_2

    :cond_2
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    move-object p1, v2

    goto/16 :goto_6

    :catch_0
    move-exception p0

    move-object p2, p0

    move-object p0, v2

    goto/16 :goto_5

    :pswitch_2
    instance-of v2, p3, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    .line 1579
    new-instance p3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object p1, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3158
    check-cast v2, Ljava/lang/Throwable;

    .line 3161
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v8, p0

    move-object v7, p1

    move-object v6, p2

    move-object p2, v2

    move-object p1, v8

    move-object v2, v1

    move-object v1, p1

    :goto_1
    :try_start_3
    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$2:Ljava/lang/Object;

    iput-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$5:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$6:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$7:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$8:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->label:I

    invoke-interface {v4, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v2, :cond_3

    return-object v2

    :cond_3
    move-object v10, v4

    move-object v4, p0

    move-object p0, v10

    move-object v11, v5

    move-object v5, p3

    move-object p3, v11

    .line 1578
    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_5

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$5:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$6:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$7:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$8:Ljava/lang/Object;

    const/4 p3, 0x2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v2, :cond_4

    return-object v2

    :cond_4
    move-object v10, v4

    move-object v4, p0

    move-object p0, v10

    .line 1581
    :goto_3
    iget-object v9, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v6, v9, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iput-object p3, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object p3, v5

    goto :goto_1

    .line 3162
    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3164
    invoke-interface {p1, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    .line 1583
    iget-object p0, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_1
    move-exception p0

    move-object p2, p0

    move-object p0, p1

    goto :goto_5

    :catchall_2
    move-exception p1

    move-object p2, v2

    :goto_4
    move-object v10, p1

    move-object p1, p0

    move-object p0, v10

    goto :goto_6

    :catch_2
    move-exception p1

    move-object p2, p1

    .line 3167
    :goto_5
    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    goto :goto_4

    :goto_6
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3164
    invoke-interface {p1, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 1578
    :cond_6
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TR;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-TR;-TE;+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v2

    .line 1599
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 3196
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1599
    :pswitch_0
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$8:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$6:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function3;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$1:Ljava/lang/Object;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v14, v0, Lkotlin/Result$Failure;

    if-nez v14, :cond_1

    move-object/from16 v16, v9

    move-object v9, v2

    move-object v2, v7

    move-object v7, v3

    move-object/from16 v3, v16

    goto/16 :goto_3

    :cond_1
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$8:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$6:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function3;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$1:Ljava/lang/Object;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v14, v0, Lkotlin/Result$Failure;

    if-nez v14, :cond_2

    move-object/from16 v16, v7

    move-object v7, v2

    move-object/from16 v2, v16

    goto :goto_2

    :cond_2
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v7

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v2, v7

    goto/16 :goto_5

    :pswitch_2
    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_6

    .line 1600
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, 0x0

    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 1601
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object/from16 v5, p1

    iput-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v6, 0x0

    .line 3180
    check-cast v6, Ljava/lang/Throwable;

    .line 3183
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v8, p0

    move-object v13, v8

    move-object/from16 v11, p2

    move-object v9, v2

    move-object v12, v5

    move-object v2, v13

    move-object v5, v2

    :goto_1
    :try_start_3
    iput-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$2:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$3:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$4:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$5:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$6:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$7:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$8:Ljava/lang/Object;

    iput-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$9:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->label:I

    invoke-interface {v7, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v9, :cond_3

    return-object v9

    :cond_3
    move-object/from16 v16, v10

    move-object v10, v0

    move-object/from16 v0, v16

    move-object/from16 v17, v9

    move-object v9, v3

    move-object v3, v7

    move-object/from16 v7, v17

    .line 1599
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$4:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$5:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$6:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$7:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$8:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$9:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_4

    return-object v7

    :cond_4
    move-object/from16 v16, v7

    move-object v7, v3

    move-object v3, v9

    move-object/from16 v9, v16

    .line 1603
    :goto_3
    iget v14, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v11, v14, v15, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v0, v10

    goto :goto_1

    .line 3184
    :cond_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3186
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    .line 1605
    iget-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v0

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_4
    move-object v6, v0

    .line 3189
    :goto_5
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :goto_6
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3186
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw v0

    .line 1599
    :cond_6
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "-TE;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TC;",
            "Lkotlin/coroutines/Continuation<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 741
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->label:I

    packed-switch v2, :pswitch_data_0

    .line 745
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 741
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/Collection;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v7, p2, Lkotlin/Result$Failure;

    if-nez v7, :cond_1

    goto/16 :goto_3

    :cond_1
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/Collection;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v7, p2, Lkotlin/Result$Failure;

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v2, p0

    move-object p0, v3

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    const/4 p2, 0x0

    .line 2406
    move-object v2, p2

    check-cast v2, Ljava/lang/Throwable;

    .line 2409
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p2

    move-object v4, p0

    move-object v6, v4

    move-object v5, p1

    move-object p1, v6

    :goto_1
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$5:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$6:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->label:I

    invoke-interface {p2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v3, v1, :cond_3

    return-object v1

    :cond_3
    move-object v8, v3

    move-object v3, p0

    move-object p0, p2

    move-object p2, v8

    .line 741
    :goto_2
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$5:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$6:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_3
    if-eqz p2, :cond_5

    .line 743
    invoke-interface {v5, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object p2, p0

    move-object p0, v3

    goto :goto_1

    .line 2410
    :cond_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2412
    invoke-interface {v3, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object v5

    :catchall_1
    move-exception p1

    move-object v3, p0

    move-object p0, p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v2, p1

    .line 2415
    :goto_4
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2412
    :goto_5
    invoke-interface {v3, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    throw p0

    .line 741
    :cond_7
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "-TE;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TC;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 775
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 2444
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 775
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_2

    :cond_1
    move-object v9, v2

    move-object v2, p0

    move-object p0, v9

    goto/16 :goto_3

    :cond_2
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object p2, p0

    move-object p0, v2

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p3, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    const/4 p3, 0x0

    .line 2428
    check-cast p3, Ljava/lang/Throwable;

    .line 2431
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, p0

    move-object v7, v4

    move-object v6, p1

    move-object v5, p2

    move-object p2, p3

    move-object p1, v7

    :cond_4
    :goto_1
    :try_start_3
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$6:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$7:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    move-object v9, v2

    move-object v2, p0

    move-object p0, v9

    .line 775
    :goto_2
    :try_start_4
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$7:Ljava/lang/Object;

    const/4 p3, 0x2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p3, v1, :cond_1

    return-object v1

    .line 777
    :goto_3
    :try_start_5
    invoke-interface {v5, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-interface {v6, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 2432
    :cond_6
    :try_start_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2434
    invoke-interface {v2, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v6

    :catchall_1
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    move-object p2, p3

    goto :goto_5

    :catch_1
    move-exception p1

    move-object p2, p1

    .line 2437
    :goto_4
    :try_start_7
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    :goto_5
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2434
    invoke-interface {v2, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 775
    :cond_7
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Collection;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "-TE;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TC;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v2

    .line 677
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 2367
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 677
    :pswitch_0
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$8:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$6:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/util/Collection;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v14, v0, Lkotlin/Result$Failure;

    if-nez v14, :cond_1

    move-object/from16 v16, v7

    move-object v7, v2

    move-object/from16 v2, v16

    goto/16 :goto_4

    :cond_1
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$8:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$6:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/util/Collection;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v14, v0, Lkotlin/Result$Failure;

    if-nez v14, :cond_2

    move-object/from16 v16, v7

    move-object v7, v2

    move-object/from16 v2, v16

    goto :goto_3

    :cond_2
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v7

    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v2, v7

    goto/16 :goto_6

    :pswitch_2
    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_7

    .line 2341
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, 0x0

    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v3, 0x0

    .line 2344
    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    .line 2347
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v5, p0

    move-object v8, v5

    move-object v10, v8

    move-object v13, v10

    move-object/from16 v12, p1

    move-object/from16 v11, p2

    move-object v7, v2

    move-object v2, v13

    :goto_2
    :try_start_3
    iput-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$3:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$4:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$5:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$6:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$7:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$8:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$9:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v7, :cond_3

    return-object v7

    :cond_3
    move-object/from16 v16, v9

    move-object v9, v0

    move-object/from16 v0, v16

    .line 677
    :goto_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$4:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$5:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$6:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$7:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$8:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$9:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_4

    return-object v7

    .line 2348
    :cond_4
    :goto_4
    new-instance v14, Lkotlin/collections/IndexedValue;

    iget v15, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v4, v15, 0x1

    iput v4, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {v14, v15, v0}, Lkotlin/collections/IndexedValue;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14}, Lkotlin/collections/IndexedValue;->c()I

    move-result v0

    invoke-virtual {v14}, Lkotlin/collections/IndexedValue;->d()Ljava/lang/Object;

    move-result-object v4

    .line 679
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v12, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object v0, v9

    const/4 v4, 0x1

    goto :goto_2

    .line 2350
    :cond_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2352
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v12

    :catch_1
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_5
    move-object v6, v0

    .line 2355
    :goto_6
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto/16 :goto_1

    :goto_7
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2352
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw v0

    .line 677
    :cond_7
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Comparator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1645
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 3233
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1645
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$6:Ljava/lang/Object;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/Comparator;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v7, p2, Lkotlin/Result$Failure;

    if-nez v7, :cond_1

    move-object v8, v6

    move-object v6, v1

    move-object v1, v2

    move-object v2, v4

    :goto_1
    move-object v4, v5

    move-object v5, v8

    goto/16 :goto_6

    :cond_1
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$6:Ljava/lang/Object;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/Comparator;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v7, p2, Lkotlin/Result$Failure;

    if-nez v7, :cond_2

    move-object v8, v4

    move-object v4, v1

    move-object v1, v2

    move-object v2, v8

    goto/16 :goto_5

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :pswitch_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$5:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$3:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/Comparator;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_2
    instance-of v6, p2, Lkotlin/Result$Failure;

    if-nez v6, :cond_3

    goto/16 :goto_4

    :cond_3
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    goto/16 :goto_a

    :catch_0
    move-exception p0

    move-object v3, p0

    move-object p0, v2

    goto/16 :goto_8

    :pswitch_3
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$5:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/Comparator;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_3
    instance-of v7, p2, Lkotlin/Result$Failure;

    if-nez v7, :cond_4

    move-object v8, p1

    move-object p1, p0

    move-object p0, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    goto :goto_3

    :cond_4
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    move-object v3, v2

    :goto_2
    move-object v2, v4

    goto/16 :goto_a

    :catch_1
    move-exception p0

    move-object v3, p0

    move-object p0, v4

    goto/16 :goto_8

    :pswitch_4
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_c

    .line 3225
    move-object p2, v3

    check-cast p2, Ljava/lang/Throwable;

    .line 1647
    :try_start_4
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2

    .line 1648
    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$2:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$5:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-ne v4, v1, :cond_5

    return-object v1

    :cond_5
    move-object v5, p0

    move-object v6, v5

    move-object v8, v4

    move-object v4, p1

    move-object p1, v2

    move-object v2, p2

    move-object p2, v8

    .line 1645
    :goto_3
    :try_start_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez p2, :cond_6

    .line 3233
    invoke-interface {p0, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object v3

    .line 1649
    :cond_6
    :try_start_6
    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$3:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$5:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v3, v2

    move-object v2, p0

    move-object p0, p1

    move-object p1, v6

    .line 1650
    :goto_4
    :try_start_7
    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$4:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$5:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$6:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_8

    return-object v1

    :cond_8
    move-object v8, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v1

    move-object v1, v8

    .line 1645
    :goto_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 1651
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$3:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$5:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$6:Ljava/lang/Object;

    const/4 p2, 0x4

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v4, :cond_9

    return-object v4

    :cond_9
    move-object v8, v6

    move-object v6, v4

    goto/16 :goto_1

    .line 1652
    :goto_6
    invoke-interface {v4, p0, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-gez v7, :cond_a

    goto :goto_7

    :cond_a
    move-object p2, p0

    :goto_7
    move-object p0, p1

    move-object p1, v1

    move-object v1, v6

    goto :goto_4

    .line 3233
    :cond_b
    invoke-interface {v2, v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object p0

    :catchall_3
    move-exception p1

    move-object v3, v2

    goto :goto_9

    :catchall_4
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    move-object v3, p2

    goto :goto_a

    :catch_2
    move-exception p1

    move-object v3, p1

    .line 3236
    :goto_8
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception p1

    :goto_9
    move-object v2, p0

    move-object p0, p1

    .line 3233
    :goto_a
    invoke-interface {v2, v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    throw p0

    .line 1645
    :cond_c
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Map;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "-TK;-TV;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+",
            "Lkotlin/Pair<",
            "+TK;+TV;>;>;TM;",
            "Lkotlin/coroutines/Continuation<",
            "-TM;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1057
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->label:I

    packed-switch v2, :pswitch_data_0

    .line 1061
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1057
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v7, p2, Lkotlin/Result$Failure;

    if-nez v7, :cond_2

    :cond_1
    move-object v8, p1

    move-object p1, p0

    move-object p0, v3

    move-object v3, v1

    move-object v1, v8

    goto/16 :goto_3

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v7, p2, Lkotlin/Result$Failure;

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v2, p0

    move-object p0, v3

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    const/4 p2, 0x0

    .line 2694
    move-object v2, p2

    check-cast v2, Ljava/lang/Throwable;

    .line 2697
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p2

    move-object v4, p0

    move-object v6, v4

    move-object v5, p1

    move-object p1, v6

    :goto_1
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$5:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$6:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->label:I

    invoke-interface {p2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v8, v3

    move-object v3, p0

    move-object p0, p2

    move-object p2, v8

    .line 1057
    :goto_2
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$5:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$6:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v1, :cond_1

    return-object v1

    .line 1059
    :goto_3
    :try_start_4
    check-cast p2, Lkotlin/Pair;

    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v5, v7, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object p2, p1

    move-object p1, v1

    move-object v1, v3

    goto :goto_1

    .line 2698
    :cond_5
    :try_start_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2700
    invoke-interface {v3, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object v5

    :catchall_1
    move-exception p1

    move-object v3, p0

    move-object p0, p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v2, p1

    .line 2703
    :goto_4
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2700
    :goto_5
    invoke-interface {v3, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    throw p0

    .line 1057
    :cond_6
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "-TK;-TE;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TM;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+TK;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TM;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 942
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 2622
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 942
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_2

    :cond_1
    move-object v9, v2

    move-object v2, p0

    move-object p0, v9

    goto/16 :goto_3

    :cond_2
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object p2, p0

    move-object p0, v2

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p3, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    const/4 p3, 0x0

    .line 2606
    check-cast p3, Ljava/lang/Throwable;

    .line 2609
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, p0

    move-object v7, v4

    move-object v6, p1

    move-object v5, p2

    move-object p2, p3

    move-object p1, v7

    :goto_1
    :try_start_3
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$6:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$7:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v9, v2

    move-object v2, p0

    move-object p0, v9

    .line 942
    :goto_2
    :try_start_4
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_5

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$7:Ljava/lang/Object;

    const/4 p3, 0x2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p3, v1, :cond_1

    return-object v1

    .line 944
    :goto_3
    :try_start_5
    invoke-interface {v5, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 2610
    :cond_5
    :try_start_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2612
    invoke-interface {v2, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v6

    :catchall_1
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    move-object p2, p3

    goto :goto_5

    :catch_1
    move-exception p1

    move-object p2, p1

    .line 2615
    :goto_4
    :try_start_7
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    :goto_5
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2612
    invoke-interface {v2, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 942
    :cond_6
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "-TK;-TV;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TM;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+TK;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+TV;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TM;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->label:I

    sub-int/2addr p4, v2

    iput p4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;

    invoke-direct {v0, p4}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 963
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 2644
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 963
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$8:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$7:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$6:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$5:Ljava/lang/Object;

    check-cast p3, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v8, p4, Lkotlin/Result$Failure;

    if-nez v8, :cond_1

    move-object v9, v2

    move-object v2, p0

    move-object p0, v9

    move-object v10, p3

    move-object p3, p1

    move-object p1, v10

    goto/16 :goto_3

    :cond_1
    check-cast p4, Lkotlin/Result$Failure;

    iget-object p0, p4, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$8:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$7:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$6:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$5:Ljava/lang/Object;

    check-cast p3, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/functions/Function1;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v8, p4, Lkotlin/Result$Failure;

    if-nez v8, :cond_2

    move-object v9, p3

    move-object p3, p1

    move-object p1, v9

    goto :goto_2

    :cond_2
    check-cast p4, Lkotlin/Result$Failure;

    iget-object p0, p4, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    move-object p1, p3

    goto/16 :goto_6

    :catch_0
    move-exception p0

    move-object p2, p0

    move-object p0, p3

    goto/16 :goto_5

    :pswitch_2
    instance-of v2, p4, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    const/4 p4, 0x0

    .line 2628
    check-cast p4, Ljava/lang/Throwable;

    .line 2631
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v7, p0

    move-object v6, p1

    move-object v5, p2

    move-object v4, p3

    move-object p2, p4

    move-object p1, v7

    move-object p3, p1

    :goto_1
    :try_start_3
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$5:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$6:Ljava/lang/Object;

    iput-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$7:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$8:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    :cond_3
    move-object v9, v2

    move-object v2, p0

    move-object p0, v9

    .line 963
    :goto_2
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_5

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$5:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$6:Ljava/lang/Object;

    iput-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$7:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$8:Ljava/lang/Object;

    const/4 p4, 0x2

    iput p4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_4

    return-object v1

    :cond_4
    move-object v9, v2

    move-object v2, p0

    move-object p0, v9

    .line 965
    :goto_3
    invoke-interface {v5, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, p4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v6, v8, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2632
    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2634
    invoke-interface {p1, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v6

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_1
    move-exception p0

    move-object p2, p0

    move-object p0, p1

    goto :goto_5

    :catchall_2
    move-exception p1

    move-object p2, p4

    :goto_4
    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    goto :goto_6

    :catch_2
    move-exception p1

    move-object p2, p1

    .line 2637
    :goto_5
    :try_start_4
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    goto :goto_4

    :goto_6
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2634
    invoke-interface {p1, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 963
    :cond_6
    check-cast p4, Lkotlin/Result$Failure;

    iget-object p0, p4, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 255
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->label:I

    packed-switch v2, :pswitch_data_0

    .line 2079
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 255
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$3:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    move-object v3, p0

    move-object v4, v1

    goto/16 :goto_4

    :catch_0
    move-exception p0

    move-object v4, v1

    goto/16 :goto_3

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v6, p1, Lkotlin/Result$Failure;

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p0

    goto :goto_3

    :pswitch_2
    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    const/4 p1, 0x0

    .line 2071
    check-cast p1, Ljava/lang/Throwable;

    .line 257
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2

    .line 258
    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$4:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v3, v1, :cond_3

    return-object v1

    :cond_3
    move-object v4, p0

    move-object v5, v4

    move-object p0, v2

    move-object v2, v5

    move-object v7, v3

    move-object v3, p1

    move-object p1, v7

    .line 255
    :goto_1
    :try_start_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 260
    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$4:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object p0, v3

    move-object v1, v4

    .line 2079
    :goto_2
    invoke-interface {v1, p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object p1

    .line 259
    :cond_5
    :try_start_4
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "ReceiveChannel is empty."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_2
    move-exception v0

    move-object v4, p0

    move-object v3, p1

    move-object p1, v0

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v4, p0

    move-object p0, p1

    .line 2082
    :goto_3
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    move-object v3, p0

    .line 2079
    :goto_4
    invoke-interface {v4, v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    throw p1

    .line 255
    :cond_6
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 139
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 1925
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 139
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$5:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$4:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v7, p2, Lkotlin/Result$Failure;

    if-nez v7, :cond_1

    goto/16 :goto_3

    :cond_1
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$5:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$4:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v7, p2, Lkotlin/Result$Failure;

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v2, p0

    move-object p0, v4

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    const/4 p2, 0x0

    .line 1906
    move-object v2, p2

    check-cast v2, Ljava/lang/Throwable;

    .line 141
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p2

    move-object v6, p0

    move-object v5, p1

    move-object p1, v6

    :goto_1
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$5:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->label:I

    invoke-interface {p2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v4, v1, :cond_3

    return-object v1

    :cond_3
    move-object v8, v4

    move-object v4, p0

    move-object p0, p2

    move-object p2, v8

    .line 139
    :goto_2
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$4:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$5:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 142
    :cond_4
    :goto_3
    invoke-interface {v5, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, p0

    move-object p0, v4

    goto :goto_1

    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 1914
    invoke-interface {v4, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object p0

    :catchall_1
    move-exception p1

    move-object v4, p0

    move-object p0, p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v2, p1

    .line 1917
    :goto_4
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_5
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 1914
    invoke-interface {v4, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 139
    :cond_6
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+TK;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+TV;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "TK;+TV;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v2

    .line 925
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 2599
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 925
    :pswitch_0
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$8:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$6:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$4:Ljava/lang/Object;

    check-cast v9, Ljava/util/Map;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function1;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v14, v0, Lkotlin/Result$Failure;

    if-nez v14, :cond_1

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :cond_1
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$8:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$6:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$4:Ljava/lang/Object;

    check-cast v9, Ljava/util/Map;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function1;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v14, v0, Lkotlin/Result$Failure;

    if-nez v14, :cond_2

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto :goto_2

    :cond_2
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v7

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v2, v7

    goto/16 :goto_5

    :pswitch_2
    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_6

    .line 926
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const/4 v3, 0x0

    .line 2577
    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    .line 2580
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v5, p0

    move-object v8, v5

    move-object v10, v8

    move-object v13, v10

    move-object/from16 v12, p1

    move-object/from16 v11, p2

    move-object v7, v2

    move-object v2, v13

    :goto_1
    :try_start_3
    iput-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$3:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$4:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$5:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$6:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$7:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$8:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$9:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v7, :cond_3

    return-object v7

    :cond_3
    move-object v15, v9

    move-object v9, v0

    move-object v0, v15

    .line 925
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$4:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$5:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$6:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$7:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$8:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$9:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_4

    return-object v7

    .line 2581
    :cond_4
    :goto_3
    invoke-interface {v12, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v11, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v9, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v9

    goto :goto_1

    .line 2583
    :cond_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2585
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v9

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_4
    move-object v6, v0

    .line 2588
    :goto_5
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :goto_6
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2585
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw v0

    .line 925
    :cond_6
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "E::TS;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TS;-TE;+TS;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1748
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 3326
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1748
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$8:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function2;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$7:Ljava/lang/Object;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$6:Ljava/lang/Object;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$5:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function2;

    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v10, p2, Lkotlin/Result$Failure;

    if-nez v10, :cond_1

    move-object v11, v9

    move-object v9, v1

    move-object v1, v7

    move-object v7, v11

    move-object v12, v8

    move-object v8, v5

    move-object v5, v12

    goto/16 :goto_4

    :cond_1
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    move-object v2, v7

    goto/16 :goto_6

    :catch_0
    move-exception p0

    move-object v6, p0

    move-object p0, v7

    goto/16 :goto_5

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$6:Ljava/lang/Object;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$3:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function2;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v9, p2, Lkotlin/Result$Failure;

    if-nez v9, :cond_2

    move-object v9, v8

    move-object v11, p1

    move-object p1, p0

    move-object p0, v7

    move-object v7, v1

    move-object v1, v2

    move-object v2, v11

    goto/16 :goto_3

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p0

    move-object v2, v5

    goto/16 :goto_6

    :catch_1
    move-exception p0

    move-object v6, p0

    move-object p0, v5

    goto/16 :goto_5

    :pswitch_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$5:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$3:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_2
    instance-of v8, p2, Lkotlin/Result$Failure;

    if-nez v8, :cond_3

    goto/16 :goto_2

    :cond_3
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :pswitch_3
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$5:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$3:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_3
    instance-of v8, p2, Lkotlin/Result$Failure;

    if-nez v8, :cond_4

    goto :goto_1

    :cond_4
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    goto/16 :goto_6

    :catch_2
    move-exception p0

    move-object v6, p0

    move-object p0, v2

    goto/16 :goto_5

    :pswitch_4
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_b

    const/4 p2, 0x0

    .line 3307
    move-object v6, p2

    check-cast v6, Ljava/lang/Throwable;

    .line 1750
    :try_start_4
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p2

    .line 1751
    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$5:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->label:I

    invoke-interface {p2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v7, p0

    move-object v5, p1

    move-object p1, v7

    move-object p0, p2

    move-object p2, v2

    move-object v2, p1

    .line 1748
    :goto_1
    :try_start_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 1752
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$4:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$5:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    .line 1753
    :cond_6
    :goto_2
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$4:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$5:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$6:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v8
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ne v8, v1, :cond_7

    return-object v1

    :cond_7
    move-object v9, v7

    move-object v7, v1

    move-object v1, p1

    move-object p1, p2

    move-object p2, v8

    move-object v11, v2

    move-object v2, p0

    move-object p0, v5

    move-object v5, v11

    .line 1748
    :goto_3
    :try_start_6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1754
    iput-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$3:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$6:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$7:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$8:Ljava/lang/Object;

    const/4 p2, 0x4

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-ne p2, v7, :cond_8

    return-object v7

    :cond_8
    move-object v8, v1

    move-object v1, v5

    move-object v5, p0

    move-object v11, v9

    move-object v9, v7

    move-object v7, v11

    .line 1753
    :goto_4
    :try_start_7
    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object p0, v2

    move-object p1, v8

    move-object v2, v1

    move-object v1, v9

    goto :goto_2

    :catchall_3
    move-exception p0

    move-object v2, v1

    goto :goto_6

    :catch_3
    move-exception p0

    move-object v6, p0

    move-object p0, v1

    goto :goto_5

    .line 1756
    :cond_9
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3315
    invoke-interface {v5, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object p1

    .line 1748
    :cond_a
    :try_start_8
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Empty channel can\'t be reduced."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_4
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    goto :goto_6

    :catch_4
    move-exception p1

    move-object v6, p1

    .line 3318
    :goto_5
    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :goto_6
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3315
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 1748
    :cond_b
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

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

.method public static final a(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function3;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "E::TS;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/Integer;",
            "-TS;-TE;+TS;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;

    iget v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;

    invoke-direct {v2, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v3

    .line 1773
    iget v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->label:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_0

    .line 3350
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1773
    :pswitch_0
    iget-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$9:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/functions/Function3;

    iget-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$8:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    iget-object v7, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$7:Ljava/lang/Object;

    iget-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$6:Ljava/lang/Object;

    iget v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->I$0:I

    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$5:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$4:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$3:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Throwable;

    iget-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/functions/Function3;

    iget-object v14, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v15, v0, Lkotlin/Result$Failure;

    if-nez v15, :cond_1

    move-object/from16 v16, v14

    move-object v14, v3

    move-object v3, v10

    move-object/from16 v10, v16

    goto/16 :goto_4

    :cond_1
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v12

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v11, v0

    move-object v1, v12

    goto/16 :goto_5

    :pswitch_1
    iget-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$6:Ljava/lang/Object;

    iget v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->I$0:I

    iget-object v7, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$3:Ljava/lang/Object;

    move-object v11, v9

    check-cast v11, Ljava/lang/Throwable;

    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function3;

    iget-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v13, v0, Lkotlin/Result$Failure;

    if-nez v13, :cond_2

    move-object v14, v12

    move-object/from16 v16, v7

    move-object v7, v1

    move-object v1, v10

    move-object v10, v8

    move-object v8, v3

    move-object v3, v2

    move-object/from16 v2, v16

    goto/16 :goto_3

    :cond_2
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v1, v9

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move-object v11, v0

    move-object v1, v9

    goto/16 :goto_5

    :pswitch_2
    iget v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->I$0:I

    iget-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v7, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$3:Ljava/lang/Object;

    move-object v11, v8

    check-cast v11, Ljava/lang/Throwable;

    iget-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function3;

    iget-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_2
    instance-of v12, v0, Lkotlin/Result$Failure;

    if-nez v12, :cond_3

    move-object/from16 v16, v8

    move v8, v1

    move-object/from16 v1, v16

    goto/16 :goto_2

    :cond_3
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v8

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object v11, v0

    move-object v1, v8

    goto/16 :goto_5

    :pswitch_3
    iget-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$5:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v7, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$3:Ljava/lang/Object;

    move-object v11, v7

    check-cast v11, Ljava/lang/Throwable;

    iget-object v7, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function3;

    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_3
    instance-of v10, v0, Lkotlin/Result$Failure;

    if-nez v10, :cond_4

    move-object v10, v9

    move-object v9, v8

    move-object/from16 v16, v4

    move-object v4, v1

    move-object v1, v7

    move-object/from16 v7, v16

    goto :goto_1

    :cond_4
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v1, v7

    goto/16 :goto_6

    :catch_3
    move-exception v0

    move-object v11, v0

    move-object v1, v7

    goto/16 :goto_5

    :pswitch_4
    instance-of v4, v0, Lkotlin/Result$Failure;

    if-nez v4, :cond_b

    const/4 v0, 0x0

    .line 3331
    move-object v11, v0

    check-cast v11, Ljava/lang/Throwable;

    .line 1775
    :try_start_4
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v0

    .line 1776
    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$0:Ljava/lang/Object;

    move-object/from16 v4, p1

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$1:Ljava/lang/Object;

    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$3:Ljava/lang/Object;

    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$4:Ljava/lang/Object;

    iput-object v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$5:Ljava/lang/Object;

    iput v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->label:I

    invoke-interface {v0, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_5

    return-object v3

    :cond_5
    move-object v10, v1

    move-object v9, v4

    move-object v4, v0

    move-object v0, v7

    move-object v7, v10

    .line 1773
    :goto_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1778
    iput-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$1:Ljava/lang/Object;

    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$3:Ljava/lang/Object;

    iput-object v7, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$4:Ljava/lang/Object;

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$5:Ljava/lang/Object;

    iput v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->I$0:I

    iput v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->label:I

    invoke-interface {v4, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_6

    return-object v3

    :cond_6
    const/4 v8, 0x1

    .line 1779
    :goto_2
    iput-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$1:Ljava/lang/Object;

    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$2:Ljava/lang/Object;

    iput-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$3:Ljava/lang/Object;

    iput-object v7, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$4:Ljava/lang/Object;

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$5:Ljava/lang/Object;

    iput v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->I$0:I

    iput-object v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$6:Ljava/lang/Object;

    const/4 v12, 0x3

    iput v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->label:I

    invoke-interface {v4, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-ne v12, v3, :cond_7

    return-object v3

    :cond_7
    move-object v14, v10

    move-object v10, v7

    move-object v7, v0

    move-object v0, v12

    move-object/from16 v16, v9

    move-object v9, v1

    move-object/from16 v1, v16

    move-object/from16 v17, v3

    move-object v3, v2

    move-object v2, v4

    move v4, v8

    move-object/from16 v8, v17

    .line 1773
    :goto_3
    :try_start_5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1780
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    iput-object v14, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$0:Ljava/lang/Object;

    iput-object v1, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$1:Ljava/lang/Object;

    iput-object v9, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$2:Ljava/lang/Object;

    iput-object v11, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$3:Ljava/lang/Object;

    iput-object v10, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$4:Ljava/lang/Object;

    iput-object v2, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$5:Ljava/lang/Object;

    iput v4, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->I$0:I

    iput-object v7, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$6:Ljava/lang/Object;

    iput-object v7, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$7:Ljava/lang/Object;

    iput-object v0, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$8:Ljava/lang/Object;

    iput-object v1, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$9:Ljava/lang/Object;

    const/4 v12, 0x4

    iput v12, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->label:I

    invoke-interface {v2, v3}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-ne v12, v8, :cond_8

    return-object v8

    :cond_8
    move-object v13, v1

    move/from16 v16, v4

    move-object v4, v0

    move-object v0, v12

    move-object v12, v9

    move-object v9, v2

    move-object v2, v3

    move-object v3, v10

    move-object v10, v14

    move-object v14, v8

    move/from16 v8, v16

    .line 1779
    :goto_4
    :try_start_6
    invoke-interface {v1, v4, v7, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v7, v3

    move-object v4, v9

    move-object v1, v12

    move-object v9, v13

    move-object v3, v14

    goto :goto_2

    .line 1782
    :cond_9
    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3339
    invoke-interface {v9, v11}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v7

    .line 1773
    :cond_a
    :try_start_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Empty channel can\'t be reduced."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v11, v0

    .line 3342
    :goto_5
    :try_start_8
    throw v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :goto_6
    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3339
    invoke-interface {v1, v11}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw v0

    .line 1773
    :cond_b
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "C::",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-TE;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TC;",
            "Lkotlin/coroutines/Continuation<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 758
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->label:I

    packed-switch v2, :pswitch_data_0

    .line 762
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 758
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$8:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$7:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v7, p2, Lkotlin/Result$Failure;

    if-nez v7, :cond_1

    move-object v8, v1

    move-object v1, p1

    move-object p1, v3

    move-object v3, v8

    goto/16 :goto_5

    :cond_1
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v7, p2, Lkotlin/Result$Failure;

    if-nez v7, :cond_2

    move-object v8, v1

    move-object v1, p1

    move-object p1, v3

    move-object v3, v8

    goto/16 :goto_4

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :pswitch_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_2
    instance-of v7, p2, Lkotlin/Result$Failure;

    if-nez v7, :cond_3

    move-object v8, v1

    move-object v1, p1

    move-object p1, v3

    :goto_1
    move-object v3, v8

    goto :goto_3

    :cond_3
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    move-object p1, v3

    goto/16 :goto_7

    :catch_0
    move-exception p0

    move-object v2, p0

    move-object p0, v3

    goto/16 :goto_6

    :pswitch_3
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_8

    const/4 p2, 0x0

    .line 2417
    move-object v2, p2

    check-cast v2, Ljava/lang/Throwable;

    .line 2420
    :try_start_3
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v4, p0

    move-object v6, v4

    move-object v5, p1

    move-object p1, v6

    move-object p0, p2

    move-object p2, p1

    :goto_2
    :try_start_4
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$5:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$6:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v8, v1

    move-object v1, p2

    move-object p2, v3

    goto :goto_1

    .line 758
    :goto_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$4:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$5:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$6:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v3, :cond_5

    return-object v3

    :cond_5
    :goto_4
    if-eqz p2, :cond_6

    .line 760
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$4:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$5:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$6:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$7:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$8:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->label:I

    invoke-interface {v5, p2, v0}, Lkotlinx/coroutines/channels/SendChannel;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v3, :cond_6

    return-object v3

    :cond_6
    :goto_5
    move-object p2, v1

    move-object v1, v3

    goto :goto_2

    .line 2421
    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2423
    invoke-interface {p1, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object v5

    :catchall_1
    move-exception p0

    goto :goto_7

    :catch_1
    move-exception p0

    move-object v2, p0

    move-object p0, p1

    goto :goto_6

    :catchall_2
    move-exception p1

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    goto :goto_7

    :catch_2
    move-exception p1

    move-object v2, p1

    .line 2426
    :goto_6
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2423
    :goto_7
    invoke-interface {p1, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    throw p0

    .line 758
    :cond_8
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "C::",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-TE;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TC;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 792
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 2466
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 792
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$9:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$8:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_1

    move-object v9, v1

    move-object v1, p1

    move-object p1, v2

    move-object v2, v9

    goto/16 :goto_5

    :cond_1
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_2

    move-object v9, v1

    move-object v1, p1

    move-object p1, v2

    move-object v2, v9

    goto/16 :goto_4

    :cond_2
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :pswitch_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_2
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_3

    move-object v9, v1

    move-object v1, p1

    move-object p1, v2

    :goto_1
    move-object v2, v9

    goto :goto_3

    :cond_3
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    move-object p1, v2

    goto/16 :goto_8

    :catch_0
    move-exception p0

    move-object p2, p0

    move-object p0, v2

    goto/16 :goto_7

    :pswitch_3
    instance-of v2, p3, Lkotlin/Result$Failure;

    if-nez v2, :cond_8

    const/4 p3, 0x0

    .line 2450
    check-cast p3, Ljava/lang/Throwable;

    .line 2453
    :try_start_3
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v4, p0

    move-object v7, v4

    move-object v6, p1

    move-object v5, p2

    move-object p2, p3

    move-object p1, v7

    move-object p3, p1

    move-object p0, v2

    :goto_2
    :try_start_4
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$5:Ljava/lang/Object;

    iput-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$7:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v9, v1

    move-object v1, p3

    move-object p3, v2

    goto :goto_1

    .line 792
    :goto_3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_7

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$5:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$7:Ljava/lang/Object;

    const/4 p3, 0x2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v2, :cond_5

    return-object v2

    .line 794
    :cond_5
    :goto_4
    invoke-interface {v5, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_6

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$5:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$7:Ljava/lang/Object;

    iput-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$8:Ljava/lang/Object;

    iput-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$9:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->label:I

    invoke-interface {v6, p3, v0}, Lkotlinx/coroutines/channels/SendChannel;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v2, :cond_6

    return-object v2

    :cond_6
    :goto_5
    move-object p3, v1

    move-object v1, v2

    goto :goto_2

    .line 2454
    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2456
    invoke-interface {p1, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v6

    :catchall_1
    move-exception p0

    goto :goto_8

    :catch_1
    move-exception p0

    move-object p2, p0

    move-object p0, p1

    goto :goto_7

    :catchall_2
    move-exception p1

    move-object p2, p3

    :goto_6
    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    goto :goto_8

    :catch_2
    move-exception p1

    move-object p2, p1

    .line 2459
    :goto_7
    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    goto :goto_6

    :goto_8
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2456
    invoke-interface {p1, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 792
    :cond_8
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final a(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "C::",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-TE;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TC;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v2

    .line 696
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 2399
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :pswitch_0
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$13:Ljava/lang/Object;

    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->I$0:I

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$12:Ljava/lang/Object;

    check-cast v3, Lkotlin/collections/IndexedValue;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$11:Ljava/lang/Object;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$10:Ljava/lang/Object;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$8:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$6:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v14, v0, Lkotlin/Result$Failure;

    if-nez v14, :cond_1

    move-object/from16 v17, v7

    move-object v7, v2

    move-object/from16 v2, v17

    goto/16 :goto_5

    :cond_1
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$8:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$6:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v14, v0, Lkotlin/Result$Failure;

    if-nez v14, :cond_2

    move-object/from16 v17, v7

    move-object v7, v2

    move-object/from16 v2, v17

    goto/16 :goto_4

    :cond_2
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :pswitch_2
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$8:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$6:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_2
    instance-of v14, v0, Lkotlin/Result$Failure;

    if-nez v14, :cond_3

    move-object/from16 v17, v7

    move-object v7, v2

    move-object/from16 v2, v17

    goto :goto_3

    :cond_3
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v7

    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v2, v7

    goto/16 :goto_8

    :pswitch_3
    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_9

    .line 2373
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, 0x0

    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v3, 0x0

    .line 2376
    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    .line 2379
    :try_start_3
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v5, p0

    move-object v8, v5

    move-object v10, v8

    move-object v13, v10

    move-object/from16 v12, p1

    move-object/from16 v11, p2

    move-object v9, v0

    move-object v0, v2

    move-object v2, v13

    :goto_2
    :try_start_4
    iput-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$4:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$5:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$6:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$7:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$8:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$9:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_4

    return-object v0

    :cond_4
    move-object/from16 v17, v7

    move-object v7, v0

    move-object/from16 v0, v17

    .line 696
    :goto_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    iput-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$4:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$5:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$6:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$7:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$8:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$9:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_5

    return-object v7

    .line 2380
    :cond_5
    :goto_4
    new-instance v14, Lkotlin/collections/IndexedValue;

    iget v15, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v4, v15, 0x1

    iput v4, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {v14, v15, v0}, Lkotlin/collections/IndexedValue;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14}, Lkotlin/collections/IndexedValue;->c()I

    move-result v4

    invoke-virtual {v14}, Lkotlin/collections/IndexedValue;->d()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v7

    .line 698
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v11, v7, v15}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    iput-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$4:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$5:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$6:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$7:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$8:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$9:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$10:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$11:Ljava/lang/Object;

    iput-object v14, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$12:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->I$0:I

    iput-object v15, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$13:Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->label:I

    invoke-interface {v12, v15, v1}, Lkotlinx/coroutines/channels/SendChannel;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v7, v16

    if-ne v0, v7, :cond_6

    return-object v7

    :cond_6
    :goto_5
    move-object v0, v7

    goto :goto_6

    :cond_7
    move-object/from16 v7, v16

    goto :goto_5

    :goto_6
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 2382
    :cond_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2384
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v12

    :catch_1
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_7
    move-object v6, v0

    .line 2387
    :goto_8
    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    goto/16 :goto_1

    :goto_9
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2384
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw v0

    .line 696
    :cond_9
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final b(Lkotlinx/coroutines/channels/ReceiveChannel;ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;I",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 206
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 2001
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 206
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->I$1:I

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->I$0:I

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v8, p2, Lkotlin/Result$Failure;

    if-nez v8, :cond_1

    move-object v9, v2

    move-object v2, p0

    move-object p0, v5

    move-object v5, v1

    move-object v1, v9

    goto/16 :goto_3

    :cond_1
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->I$1:I

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->I$0:I

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v8, p2, Lkotlin/Result$Failure;

    if-nez v8, :cond_2

    move-object v9, v1

    move v1, p1

    move-object p1, v2

    move-object v2, v9

    goto :goto_2

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v4, p0

    move-object p0, v5

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_8

    .line 1993
    move-object v4, v3

    check-cast v4, Ljava/lang/Throwable;

    if-gez p1, :cond_3

    .line 2001
    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object v3

    :cond_3
    const/4 p2, 0x0

    .line 211
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2

    move-object v7, p0

    move v6, p1

    move-object p1, v7

    :goto_1
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->I$0:I

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$3:Ljava/lang/Object;

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->I$1:I

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$4:Ljava/lang/Object;

    const/4 v5, 0x1

    iput v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v5, v1, :cond_4

    return-object v1

    :cond_4
    move-object v9, v5

    move-object v5, p0

    move-object p0, v2

    move-object v2, v1

    move v1, p2

    move-object p2, v9

    .line 206
    :goto_2
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$0:Ljava/lang/Object;

    iput v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->I$0:I

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$3:Ljava/lang/Object;

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->I$1:I

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$4:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v2, :cond_5

    return-object v2

    :cond_5
    move-object v9, v2

    move-object v2, p0

    move-object p0, v5

    move-object v5, v9

    move v10, v1

    move-object v1, p1

    move p1, v10

    :goto_3
    add-int/lit8 v8, p1, 0x1

    if-ne v6, p1, :cond_6

    .line 2001
    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object p2

    :cond_6
    move-object p1, v1

    move-object v1, v5

    move p2, v8

    goto :goto_1

    :cond_7
    invoke-interface {v5, v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object v3

    :catchall_1
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v4, p1

    .line 2004
    :goto_4
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2001
    :goto_5
    invoke-interface {v5, v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    throw p0

    .line 206
    :cond_8
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final b(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TE;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v2

    .line 434
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 442
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 434
    :pswitch_0
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$1:Ljava/lang/Object;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v13, v0, Lkotlin/Result$Failure;

    if-nez v13, :cond_1

    move-object v14, v9

    move-object v9, v2

    move-object v2, v7

    move-object v7, v5

    move-object v5, v3

    move-object v3, v14

    goto/16 :goto_3

    :cond_1
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$1:Ljava/lang/Object;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v13, v0, Lkotlin/Result$Failure;

    if-nez v13, :cond_2

    move-object v14, v7

    move-object v7, v2

    move-object v2, v14

    goto :goto_2

    :cond_2
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v7

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v2, v7

    goto/16 :goto_5

    :pswitch_2
    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_7

    .line 435
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, -0x1

    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 436
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v5, 0x0

    iput v5, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v5, 0x0

    .line 2229
    move-object v6, v5

    check-cast v6, Ljava/lang/Throwable;

    .line 2232
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v7, p0

    move-object v8, v7

    move-object v12, v8

    move-object/from16 v11, p1

    move-object v9, v2

    move-object v2, v12

    :goto_1
    :try_start_3
    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$1:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$2:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$5:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$6:Ljava/lang/Object;

    iput-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$7:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$8:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->label:I

    invoke-interface {v5, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v9, :cond_3

    return-object v9

    :cond_3
    move-object v14, v10

    move-object v10, v0

    move-object v0, v14

    move-object v15, v9

    move-object v9, v3

    move-object v3, v5

    move-object v5, v7

    move-object v7, v15

    .line 434
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$5:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$6:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$7:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$8:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_4

    return-object v7

    :cond_4
    move-object v14, v5

    move-object v5, v3

    move-object v3, v9

    move-object v9, v7

    move-object v7, v14

    .line 438
    :goto_3
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 439
    iget v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iput v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 440
    :cond_5
    iget v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v0, v4

    iput v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object v0, v10

    goto :goto_1

    .line 2233
    :cond_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2235
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    .line 442
    iget v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_4
    move-object v6, v0

    .line 2238
    :goto_5
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    .line 2235
    :goto_6
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    throw v0

    .line 434
    :cond_7
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final b(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Collection;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "-TE;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TC;",
            "Lkotlin/coroutines/Continuation<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1018
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->label:I

    packed-switch v2, :pswitch_data_0

    .line 1022
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1018
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/Collection;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v7, p2, Lkotlin/Result$Failure;

    if-nez v7, :cond_1

    goto/16 :goto_3

    :cond_1
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/Collection;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v7, p2, Lkotlin/Result$Failure;

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v2, p0

    move-object p0, v3

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    const/4 p2, 0x0

    .line 2683
    move-object v2, p2

    check-cast v2, Ljava/lang/Throwable;

    .line 2686
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p2

    move-object v4, p0

    move-object v6, v4

    move-object v5, p1

    move-object p1, v6

    :goto_1
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$5:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$6:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->label:I

    invoke-interface {p2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v3, v1, :cond_3

    return-object v1

    :cond_3
    move-object v8, v3

    move-object v3, p0

    move-object p0, p2

    move-object p2, v8

    .line 1018
    :goto_2
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$5:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$6:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    .line 1020
    :cond_4
    :goto_3
    invoke-interface {v5, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object p2, p0

    move-object p0, v3

    goto :goto_1

    .line 2687
    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2689
    invoke-interface {v3, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object v5

    :catchall_1
    move-exception p1

    move-object v3, p0

    move-object p0, p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v2, p1

    .line 2692
    :goto_4
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2689
    :goto_5
    invoke-interface {v3, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    throw p0

    .line 1018
    :cond_6
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final b(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "-TE;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TC;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 809
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 2488
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 809
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_2

    :cond_1
    move-object v9, v2

    move-object v2, p0

    move-object p0, v9

    goto/16 :goto_3

    :cond_2
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object p2, p0

    move-object p0, v2

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p3, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    const/4 p3, 0x0

    .line 2472
    check-cast p3, Ljava/lang/Throwable;

    .line 2475
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, p0

    move-object v7, v4

    move-object v6, p1

    move-object v5, p2

    move-object p2, p3

    move-object p1, v7

    :cond_4
    :goto_1
    :try_start_3
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$6:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$7:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    move-object v9, v2

    move-object v2, p0

    move-object p0, v9

    .line 809
    :goto_2
    :try_start_4
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$7:Ljava/lang/Object;

    const/4 p3, 0x2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p3, v1, :cond_1

    return-object v1

    .line 811
    :goto_3
    :try_start_5
    invoke-interface {v5, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 2476
    :cond_6
    :try_start_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2478
    invoke-interface {v2, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v6

    :catchall_1
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    move-object p2, p3

    goto :goto_5

    :catch_1
    move-exception p1

    move-object p2, p1

    .line 2481
    :goto_4
    :try_start_7
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    :goto_5
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2478
    invoke-interface {v2, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 809
    :cond_7
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final b(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Collection;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "-TR;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TC;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TE;+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v2

    .line 1255
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 2898
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1255
    :pswitch_0
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$8:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$6:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/util/Collection;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v14, v0, Lkotlin/Result$Failure;

    if-nez v14, :cond_1

    move-object/from16 v16, v7

    move-object v7, v2

    move-object/from16 v2, v16

    goto/16 :goto_4

    :cond_1
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$8:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$6:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/util/Collection;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v14, v0, Lkotlin/Result$Failure;

    if-nez v14, :cond_2

    move-object/from16 v16, v7

    move-object v7, v2

    move-object/from16 v2, v16

    goto :goto_3

    :cond_2
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v7

    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v2, v7

    goto/16 :goto_6

    :pswitch_2
    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_7

    .line 2872
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, 0x0

    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v3, 0x0

    .line 2875
    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    .line 2878
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v5, p0

    move-object v8, v5

    move-object v10, v8

    move-object v13, v10

    move-object/from16 v12, p1

    move-object/from16 v11, p2

    move-object v7, v2

    move-object v2, v13

    :goto_2
    :try_start_3
    iput-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$3:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$4:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$5:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$6:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$7:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$8:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$9:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v7, :cond_3

    return-object v7

    :cond_3
    move-object/from16 v16, v9

    move-object v9, v0

    move-object/from16 v0, v16

    .line 1255
    :goto_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$4:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$5:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$6:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$7:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$8:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$9:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_4

    return-object v7

    .line 2879
    :cond_4
    :goto_4
    new-instance v14, Lkotlin/collections/IndexedValue;

    iget v15, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v4, v15, 0x1

    iput v4, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {v14, v15, v0}, Lkotlin/collections/IndexedValue;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14}, Lkotlin/collections/IndexedValue;->c()I

    move-result v0

    invoke-virtual {v14}, Lkotlin/collections/IndexedValue;->d()Ljava/lang/Object;

    move-result-object v4

    .line 1257
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v12, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    :cond_5
    move-object v0, v9

    const/4 v4, 0x1

    goto :goto_2

    .line 2881
    :cond_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2883
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v12

    :catch_1
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_5
    move-object v6, v0

    .line 2886
    :goto_6
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    goto/16 :goto_1

    :goto_7
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2883
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw v0

    .line 1255
    :cond_7
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final b(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Comparator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1694
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 3269
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1694
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$6:Ljava/lang/Object;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/Comparator;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v7, p2, Lkotlin/Result$Failure;

    if-nez v7, :cond_1

    move-object v8, v6

    move-object v6, v1

    move-object v1, v2

    move-object v2, v4

    :goto_1
    move-object v4, v5

    move-object v5, v8

    goto/16 :goto_6

    :cond_1
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$6:Ljava/lang/Object;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/Comparator;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v7, p2, Lkotlin/Result$Failure;

    if-nez v7, :cond_2

    move-object v8, v4

    move-object v4, v1

    move-object v1, v2

    move-object v2, v8

    goto/16 :goto_5

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :pswitch_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$5:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$3:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$2:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$1:Ljava/lang/Object;

    check-cast v4, Ljava/util/Comparator;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_2
    instance-of v6, p2, Lkotlin/Result$Failure;

    if-nez v6, :cond_3

    goto/16 :goto_4

    :cond_3
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    goto/16 :goto_a

    :catch_0
    move-exception p0

    move-object v3, p0

    move-object p0, v2

    goto/16 :goto_8

    :pswitch_3
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$5:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$1:Ljava/lang/Object;

    check-cast v5, Ljava/util/Comparator;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_3
    instance-of v7, p2, Lkotlin/Result$Failure;

    if-nez v7, :cond_4

    move-object v8, p1

    move-object p1, p0

    move-object p0, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v8

    goto :goto_3

    :cond_4
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    move-object v3, v2

    :goto_2
    move-object v2, v4

    goto/16 :goto_a

    :catch_1
    move-exception p0

    move-object v3, p0

    move-object p0, v4

    goto/16 :goto_8

    :pswitch_4
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_c

    .line 3261
    move-object p2, v3

    check-cast p2, Ljava/lang/Throwable;

    .line 1696
    :try_start_4
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2

    .line 1697
    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$2:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$5:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-ne v4, v1, :cond_5

    return-object v1

    :cond_5
    move-object v5, p0

    move-object v6, v5

    move-object v8, v4

    move-object v4, p1

    move-object p1, v2

    move-object v2, p2

    move-object p2, v8

    .line 1694
    :goto_3
    :try_start_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-nez p2, :cond_6

    .line 3269
    invoke-interface {p0, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object v3

    .line 1698
    :cond_6
    :try_start_6
    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$3:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$5:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    move-object v3, v2

    move-object v2, p0

    move-object p0, p1

    move-object p1, v6

    .line 1699
    :goto_4
    :try_start_7
    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$4:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$5:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$6:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_8

    return-object v1

    :cond_8
    move-object v8, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v1

    move-object v1, v8

    .line 1694
    :goto_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 1700
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$1:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$3:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$5:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$6:Ljava/lang/Object;

    const/4 p2, 0x4

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v4, :cond_9

    return-object v4

    :cond_9
    move-object v8, v6

    move-object v6, v4

    goto/16 :goto_1

    .line 1701
    :goto_6
    invoke-interface {v4, p0, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-lez v7, :cond_a

    goto :goto_7

    :cond_a
    move-object p2, p0

    :goto_7
    move-object p0, p1

    move-object p1, v1

    move-object v1, v6

    goto :goto_4

    .line 3269
    :cond_b
    invoke-interface {v2, v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object p0

    :catchall_3
    move-exception p1

    move-object v3, v2

    goto :goto_9

    :catchall_4
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    move-object v3, p2

    goto :goto_a

    :catch_2
    move-exception p1

    move-object v3, p1

    .line 3272
    :goto_8
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :catchall_5
    move-exception p1

    :goto_9
    move-object v2, p0

    move-object p0, p1

    .line 3269
    :goto_a
    invoke-interface {v2, v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    throw p0

    .line 1694
    :cond_c
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final b(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "-TK;-TV;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TM;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+",
            "Lkotlin/Pair<",
            "+TK;+TV;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TM;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 983
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 2666
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 983
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_2

    :cond_1
    move-object v9, v2

    move-object v2, p0

    move-object p0, v9

    goto/16 :goto_3

    :cond_2
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object p2, p0

    move-object p0, v2

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p3, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    const/4 p3, 0x0

    .line 2650
    check-cast p3, Ljava/lang/Throwable;

    .line 2653
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, p0

    move-object v7, v4

    move-object v6, p1

    move-object v5, p2

    move-object p2, p3

    move-object p1, v7

    :goto_1
    :try_start_3
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$6:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$7:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v9, v2

    move-object v2, p0

    move-object p0, v9

    .line 983
    :goto_2
    :try_start_4
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_5

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$7:Ljava/lang/Object;

    const/4 p3, 0x2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p3, v1, :cond_1

    return-object v1

    .line 985
    :goto_3
    :try_start_5
    invoke-interface {v5, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/Pair;

    invoke-virtual {p3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v6, v8, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 2654
    :cond_5
    :try_start_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2656
    invoke-interface {v2, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v6

    :catchall_1
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    move-object p2, p3

    goto :goto_5

    :catch_1
    move-exception p1

    move-object p2, p1

    .line 2659
    :goto_4
    :try_start_7
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    :goto_5
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2656
    invoke-interface {v2, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 983
    :cond_6
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final b(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "-TK;",
            "Ljava/util/List<",
            "TV;>;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TM;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+TK;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+TV;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TM;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v2

    .line 1179
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 2867
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1179
    :pswitch_0
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/util/Map;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v13, v0, Lkotlin/Result$Failure;

    if-nez v13, :cond_1

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :cond_1
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/util/Map;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v13, v0, Lkotlin/Result$Failure;

    if-nez v13, :cond_2

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto :goto_2

    :cond_2
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v7

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v2, v7

    goto/16 :goto_5

    :pswitch_2
    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_7

    const/4 v0, 0x0

    .line 2837
    move-object v6, v0

    check-cast v6, Ljava/lang/Throwable;

    .line 2840
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v5, p0

    move-object v8, v5

    move-object v12, v8

    move-object/from16 v11, p1

    move-object/from16 v10, p2

    move-object/from16 v9, p3

    move-object v3, v2

    move-object v2, v12

    :goto_1
    :try_start_3
    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$5:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$6:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$7:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$8:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->label:I

    invoke-interface {v0, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v3, :cond_3

    return-object v3

    :cond_3
    move-object v15, v3

    move-object v3, v0

    move-object v0, v7

    move-object v7, v15

    .line 1179
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$5:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$6:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$7:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$8:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_4

    return-object v7

    .line 1181
    :cond_4
    :goto_3
    invoke-interface {v10, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 2841
    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_5

    .line 1182
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2844
    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    :cond_5
    check-cast v14, Ljava/util/List;

    .line 1183
    invoke-interface {v9, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v3

    move-object v3, v7

    goto :goto_1

    .line 2848
    :cond_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2850
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v11

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_4
    move-object v6, v0

    .line 2853
    :goto_5
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :goto_6
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2850
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw v0

    .line 1179
    :cond_7
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final b(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 291
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 2113
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 291
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$3:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_1

    move-object v4, p0

    move-object p0, v1

    goto/16 :goto_2

    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    move-object v4, p0

    move-object p0, v1

    goto/16 :goto_4

    :catch_0
    move-exception p0

    goto/16 :goto_3

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v7, p1, Lkotlin/Result$Failure;

    if-nez v7, :cond_2

    move-object v8, v2

    move-object v2, p0

    move-object p0, v5

    move-object v5, v8

    goto :goto_1

    :cond_2
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    move-object p0, v5

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v1, v5

    goto :goto_3

    :pswitch_2
    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    .line 2105
    move-object p1, v3

    check-cast p1, Ljava/lang/Throwable;

    .line 293
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2

    .line 294
    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$4:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-ne v4, v1, :cond_3

    return-object v1

    :cond_3
    move-object v5, p0

    move-object v6, v5

    move-object v8, v4

    move-object v4, p1

    move-object p1, v8

    .line 291
    :goto_1
    :try_start_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-nez p1, :cond_4

    .line 2113
    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object v3

    .line 296
    :cond_4
    :try_start_4
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$4:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne p1, v1, :cond_5

    return-object v1

    .line 2113
    :cond_5
    :goto_2
    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object p1

    :catchall_2
    move-exception p1

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v4, p1

    move-object p1, v0

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    .line 2116
    :goto_3
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2113
    :goto_4
    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    throw p1

    .line 291
    :cond_6
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final b(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/collections/IndexedValue<",
            "+TE;>;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v2

    .line 154
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 1947
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :pswitch_0
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$7:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$6:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$5:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v12, v0, Lkotlin/Result$Failure;

    if-nez v12, :cond_1

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :cond_1
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$7:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$6:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$5:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v12, v0, Lkotlin/Result$Failure;

    if-nez v12, :cond_2

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto :goto_2

    :cond_2
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v7

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v2, v7

    goto/16 :goto_5

    :pswitch_2
    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_6

    .line 155
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, 0x0

    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v3, 0x0

    .line 1931
    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    .line 1934
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v5, p0

    move-object v8, v5

    move-object v11, v8

    move-object/from16 v10, p1

    move-object v7, v2

    move-object v2, v11

    :goto_1
    :try_start_3
    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$0:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$1:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$2:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$3:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$4:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$5:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$6:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$7:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v7, :cond_3

    return-object v7

    :cond_3
    move-object v15, v9

    move-object v9, v0

    move-object v0, v15

    .line 154
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$0:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$1:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$2:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$3:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$4:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$5:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$6:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$7:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_4

    return-object v7

    .line 157
    :cond_4
    :goto_3
    new-instance v12, Lkotlin/collections/IndexedValue;

    iget v13, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {v12, v13, v0}, Lkotlin/collections/IndexedValue;-><init>(ILjava/lang/Object;)V

    invoke-interface {v10, v12}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v9

    goto :goto_1

    .line 1935
    :cond_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 1937
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    .line 159
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object v0

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_4
    move-object v6, v0

    .line 1940
    :goto_5
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :goto_6
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 1937
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw v0

    .line 154
    :cond_6
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final b(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+TK;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+TV;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "TK;+",
            "Ljava/util/List<",
            "+TV;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v2

    .line 1140
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 2794
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1140
    :pswitch_0
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$8:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$6:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$4:Ljava/lang/Object;

    check-cast v9, Ljava/util/Map;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function1;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v14, v0, Lkotlin/Result$Failure;

    if-nez v14, :cond_1

    move-object/from16 v16, v7

    move-object v7, v2

    move-object/from16 v2, v16

    goto/16 :goto_3

    :cond_1
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$8:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$6:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$4:Ljava/lang/Object;

    check-cast v9, Ljava/util/Map;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function1;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v14, v0, Lkotlin/Result$Failure;

    if-nez v14, :cond_2

    move-object/from16 v16, v7

    move-object v7, v2

    move-object/from16 v2, v16

    goto :goto_2

    :cond_2
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v7

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v2, v7

    goto/16 :goto_5

    :pswitch_2
    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_7

    .line 1141
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const/4 v3, 0x0

    .line 2754
    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    .line 2757
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v5, p0

    move-object v8, v5

    move-object v10, v8

    move-object v13, v10

    move-object/from16 v12, p1

    move-object/from16 v11, p2

    move-object v7, v2

    move-object v2, v13

    :goto_1
    :try_start_3
    iput-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$3:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$4:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$5:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$6:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$7:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$8:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$9:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v7, :cond_3

    return-object v7

    :cond_3
    move-object/from16 v16, v9

    move-object v9, v0

    move-object/from16 v0, v16

    .line 1140
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$4:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$5:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$6:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$7:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$8:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$9:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_4

    return-object v7

    .line 2758
    :cond_4
    :goto_3
    invoke-interface {v12, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 2760
    invoke-interface {v9, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_5

    .line 2759
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 2763
    invoke-interface {v9, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2759
    :cond_5
    check-cast v15, Ljava/util/List;

    .line 2767
    invoke-interface {v11, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    goto :goto_1

    .line 2769
    :cond_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2771
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v9

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_4
    move-object v6, v0

    .line 2774
    :goto_5
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :goto_6
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2771
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw v0

    .line 1140
    :cond_7
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final b(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "C::",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-TE;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TC;",
            "Lkotlin/coroutines/Continuation<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1001
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->label:I

    packed-switch v2, :pswitch_data_0

    .line 1005
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1001
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$8:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$7:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v7, p2, Lkotlin/Result$Failure;

    if-nez v7, :cond_1

    move-object p2, v5

    move-object v5, v1

    move-object v1, v4

    move-object v4, p1

    move-object p1, v6

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto/16 :goto_2

    :cond_1
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v7, p2, Lkotlin/Result$Failure;

    if-nez v7, :cond_2

    move-object v8, v1

    move-object v1, p0

    move-object p0, v3

    :goto_1
    move-object v3, v8

    goto/16 :goto_4

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :pswitch_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_2
    instance-of v7, p2, Lkotlin/Result$Failure;

    if-nez v7, :cond_3

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_3

    :cond_3
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto/16 :goto_6

    :catch_0
    move-exception p0

    move-object v2, p0

    move-object p0, v3

    goto/16 :goto_5

    :pswitch_3
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_8

    const/4 p2, 0x0

    .line 2672
    move-object v2, p2

    check-cast v2, Ljava/lang/Throwable;

    .line 2675
    :try_start_3
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v4, p0

    move-object v5, v1

    move-object v3, v2

    move-object v1, v4

    move-object v2, v1

    move-object p0, p2

    move-object p2, p1

    move-object p1, v2

    :goto_2
    :try_start_4
    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$1:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$3:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$4:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$5:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$6:Ljava/lang/Object;

    const/4 v6, 0x1

    iput v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v5, :cond_4

    return-object v5

    :cond_4
    move-object v8, v6

    move-object v6, p1

    move-object p1, v4

    move-object v4, v1

    move-object v1, v5

    move-object v5, p2

    move-object p2, v8

    .line 1001
    :goto_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$3:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$5:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$6:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne p2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v8, v1

    move-object v1, p0

    move-object p0, v2

    move-object v2, v3

    goto/16 :goto_1

    .line 1003
    :goto_4
    :try_start_5
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$5:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$6:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$7:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$8:Ljava/lang/Object;

    const/4 v7, 0x3

    iput v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->label:I

    invoke-interface {v5, p2, v0}, Lkotlinx/coroutines/channels/SendChannel;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ne p2, v3, :cond_6

    return-object v3

    :cond_6
    move-object p2, v5

    move-object v5, v3

    move-object v3, v2

    move-object v2, p0

    move-object p0, v1

    move-object v1, v4

    move-object v4, p1

    move-object p1, v6

    goto :goto_2

    .line 2676
    :cond_7
    :try_start_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2678
    invoke-interface {v2, v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object v5

    :catchall_1
    move-exception p0

    goto :goto_6

    :catch_1
    move-exception p0

    move-object v8, v2

    move-object v2, p0

    move-object p0, v8

    goto :goto_5

    :catchall_2
    move-exception p1

    move-object v3, v2

    move-object v2, p0

    move-object p0, p1

    goto :goto_6

    :catch_2
    move-exception p1

    move-object v2, p1

    .line 2681
    :goto_5
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2678
    :goto_6
    invoke-interface {v2, v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    throw p0

    .line 1001
    :cond_8
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final b(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "C::",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-TE;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TC;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 826
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 2510
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 826
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$9:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$8:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_1

    move-object v9, v1

    move-object v1, p1

    move-object p1, v2

    move-object v2, v9

    goto/16 :goto_5

    :cond_1
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_2

    move-object v9, v1

    move-object v1, p1

    move-object p1, v2

    move-object v2, v9

    goto/16 :goto_4

    :cond_2
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :pswitch_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_2
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_3

    move-object v9, v1

    move-object v1, p1

    move-object p1, v2

    :goto_1
    move-object v2, v9

    goto :goto_3

    :cond_3
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    move-object p1, v2

    goto/16 :goto_8

    :catch_0
    move-exception p0

    move-object p2, p0

    move-object p0, v2

    goto/16 :goto_7

    :pswitch_3
    instance-of v2, p3, Lkotlin/Result$Failure;

    if-nez v2, :cond_8

    const/4 p3, 0x0

    .line 2494
    check-cast p3, Ljava/lang/Throwable;

    .line 2497
    :try_start_3
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v4, p0

    move-object v7, v4

    move-object v6, p1

    move-object v5, p2

    move-object p2, p3

    move-object p1, v7

    move-object p3, p1

    move-object p0, v2

    :goto_2
    :try_start_4
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$5:Ljava/lang/Object;

    iput-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$7:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v9, v1

    move-object v1, p3

    move-object p3, v2

    goto :goto_1

    .line 826
    :goto_3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_7

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$5:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$7:Ljava/lang/Object;

    const/4 p3, 0x2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v2, :cond_5

    return-object v2

    .line 828
    :cond_5
    :goto_4
    invoke-interface {v5, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$5:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$7:Ljava/lang/Object;

    iput-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$8:Ljava/lang/Object;

    iput-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$9:Ljava/lang/Object;

    const/4 v8, 0x3

    iput v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->label:I

    invoke-interface {v6, p3, v0}, Lkotlinx/coroutines/channels/SendChannel;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v2, :cond_6

    return-object v2

    :cond_6
    :goto_5
    move-object p3, v1

    move-object v1, v2

    goto :goto_2

    .line 2498
    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2500
    invoke-interface {p1, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v6

    :catchall_1
    move-exception p0

    goto :goto_8

    :catch_1
    move-exception p0

    move-object p2, p0

    move-object p0, p1

    goto :goto_7

    :catchall_2
    move-exception p1

    move-object p2, p3

    :goto_6
    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    goto :goto_8

    :catch_2
    move-exception p1

    move-object p2, p1

    .line 2503
    :goto_7
    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    goto :goto_6

    :goto_8
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2500
    invoke-interface {p1, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 826
    :cond_8
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final b(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C::",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-TR;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TC;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TE;+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v2

    .line 1275
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 2930
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1275
    :pswitch_0
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$14:Ljava/lang/Object;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$13:Ljava/lang/Object;

    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->I$0:I

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$12:Ljava/lang/Object;

    check-cast v3, Lkotlin/collections/IndexedValue;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$11:Ljava/lang/Object;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$10:Ljava/lang/Object;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$8:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$6:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v14, v0, Lkotlin/Result$Failure;

    if-nez v14, :cond_1

    move-object/from16 v17, v7

    move-object v7, v2

    move-object/from16 v2, v17

    goto/16 :goto_5

    :cond_1
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$8:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$6:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v14, v0, Lkotlin/Result$Failure;

    if-nez v14, :cond_2

    move-object/from16 v17, v7

    move-object v7, v2

    move-object/from16 v2, v17

    goto/16 :goto_4

    :cond_2
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :pswitch_2
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$8:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$6:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function2;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_2
    instance-of v14, v0, Lkotlin/Result$Failure;

    if-nez v14, :cond_3

    move-object/from16 v17, v7

    move-object v7, v2

    move-object/from16 v2, v17

    goto :goto_3

    :cond_3
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v7

    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v2, v7

    goto/16 :goto_8

    :pswitch_3
    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_9

    .line 2904
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, 0x0

    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v3, 0x0

    .line 2907
    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    .line 2910
    :try_start_3
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v5, p0

    move-object v8, v5

    move-object v10, v8

    move-object v13, v10

    move-object/from16 v12, p1

    move-object/from16 v11, p2

    move-object v9, v0

    move-object v0, v2

    move-object v2, v13

    :goto_2
    :try_start_4
    iput-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$4:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$5:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$6:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$7:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$8:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$9:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_4

    return-object v0

    :cond_4
    move-object/from16 v17, v7

    move-object v7, v0

    move-object/from16 v0, v17

    .line 1275
    :goto_3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    iput-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$4:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$5:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$6:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$7:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$8:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$9:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_5

    return-object v7

    .line 2911
    :cond_5
    :goto_4
    new-instance v14, Lkotlin/collections/IndexedValue;

    iget v15, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v4, v15, 0x1

    iput v4, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {v14, v15, v0}, Lkotlin/collections/IndexedValue;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14}, Lkotlin/collections/IndexedValue;->c()I

    move-result v4

    invoke-virtual {v14}, Lkotlin/collections/IndexedValue;->d()Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v16, v7

    .line 1277
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v11, v7, v15}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_7

    iput-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$2:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$4:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$5:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$6:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$7:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$8:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$9:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$10:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$11:Ljava/lang/Object;

    iput-object v14, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$12:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->I$0:I

    iput-object v15, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$13:Ljava/lang/Object;

    iput-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$14:Ljava/lang/Object;

    const/4 v0, 0x3

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->label:I

    invoke-interface {v12, v7, v1}, Lkotlinx/coroutines/channels/SendChannel;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v7, v16

    if-ne v0, v7, :cond_6

    return-object v7

    :cond_6
    :goto_5
    move-object v0, v7

    goto :goto_6

    :cond_7
    move-object/from16 v7, v16

    goto :goto_5

    :goto_6
    const/4 v4, 0x1

    goto/16 :goto_2

    .line 2913
    :cond_8
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2915
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v12

    :catch_1
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_7
    move-object v6, v0

    .line 2918
    :goto_8
    :try_start_5
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    goto/16 :goto_1

    :goto_9
    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2915
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v1}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw v0

    .line 1275
    :cond_9
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final c(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "-TR;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TC;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1350
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 2997
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1350
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_2

    :cond_1
    move-object v9, v2

    move-object v2, p0

    move-object p0, v9

    goto/16 :goto_3

    :cond_2
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object p2, p0

    move-object p0, v2

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p3, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    const/4 p3, 0x0

    .line 2981
    check-cast p3, Ljava/lang/Throwable;

    .line 2984
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, p0

    move-object v7, v4

    move-object v6, p1

    move-object v5, p2

    move-object p2, p3

    move-object p1, v7

    :cond_4
    :goto_1
    :try_start_3
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$6:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$7:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    move-object v9, v2

    move-object v2, p0

    move-object p0, v9

    .line 1350
    :goto_2
    :try_start_4
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$7:Ljava/lang/Object;

    const/4 p3, 0x2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p3, v1, :cond_1

    return-object v1

    .line 1352
    :goto_3
    :try_start_5
    invoke-interface {v5, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-interface {v6, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p3

    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 2985
    :cond_6
    :try_start_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2987
    invoke-interface {v2, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v6

    :catchall_1
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    move-object p2, p3

    goto :goto_5

    :catch_1
    move-exception p1

    move-object p2, p1

    .line 2990
    :goto_4
    :try_start_7
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    :goto_5
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2987
    invoke-interface {v2, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 1350
    :cond_7
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final c(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Collection;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "-TR;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TC;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TE;+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v2

    .line 1295
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 2953
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1295
    :pswitch_0
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function2;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/util/Collection;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v13, v0, Lkotlin/Result$Failure;

    if-nez v13, :cond_1

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :cond_1
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function2;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/util/Collection;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v13, v0, Lkotlin/Result$Failure;

    if-nez v13, :cond_2

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto :goto_2

    :cond_2
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v7

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v2, v7

    goto/16 :goto_5

    :pswitch_2
    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_6

    .line 1296
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, 0x0

    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v3, 0x0

    .line 2937
    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    .line 2940
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v5, p0

    move-object v8, v5

    move-object v12, v8

    move-object/from16 v11, p1

    move-object/from16 v10, p2

    move-object v7, v2

    move-object v2, v12

    :goto_1
    :try_start_3
    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$2:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$5:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$6:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$7:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$8:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v7, :cond_3

    return-object v7

    :cond_3
    move-object v15, v9

    move-object v9, v0

    move-object v0, v15

    .line 1295
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$5:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$6:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$7:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$8:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_4

    return-object v7

    .line 1298
    :cond_4
    :goto_3
    iget v13, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v13, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    goto :goto_1

    .line 2941
    :cond_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2943
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v11

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_4
    move-object v6, v0

    .line 2946
    :goto_5
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :goto_6
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2943
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw v0

    .line 1295
    :cond_6
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final c(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "-TK;",
            "Ljava/util/List<",
            "TE;>;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TM;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+TK;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TM;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1156
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 2831
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1156
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_2

    :cond_1
    move-object v10, v2

    move-object v2, p0

    move-object p0, v10

    goto/16 :goto_3

    :cond_2
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object p2, p0

    move-object p0, v2

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p3, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    const/4 p3, 0x0

    .line 2801
    check-cast p3, Ljava/lang/Throwable;

    .line 2804
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, p0

    move-object v7, v4

    move-object v6, p1

    move-object v5, p2

    move-object p2, p3

    move-object p1, v7

    :goto_1
    :try_start_3
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$6:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$7:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v10, v2

    move-object v2, p0

    move-object p0, v10

    .line 1156
    :goto_2
    :try_start_4
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$7:Ljava/lang/Object;

    const/4 p3, 0x2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p3, v1, :cond_1

    return-object v1

    .line 1158
    :goto_3
    :try_start_5
    invoke-interface {v5, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 2805
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_5

    .line 1159
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2808
    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    :cond_5
    check-cast v9, Ljava/util/List;

    .line 1160
    invoke-interface {v9, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 2812
    :cond_6
    :try_start_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2814
    invoke-interface {v2, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v6

    :catchall_1
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    move-object p2, p3

    goto :goto_5

    :catch_1
    move-exception p1

    move-object p2, p1

    .line 2817
    :goto_4
    :try_start_7
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    :goto_5
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2814
    invoke-interface {v2, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 1156
    :cond_7
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final c(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 388
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->label:I

    packed-switch v2, :pswitch_data_0

    .line 2202
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 388
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$5:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v6, p1, Lkotlin/Result$Failure;

    if-nez v6, :cond_1

    goto/16 :goto_3

    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$5:Ljava/lang/Object;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v7, p1, Lkotlin/Result$Failure;

    if-nez v7, :cond_2

    move-object v8, v1

    move-object v1, p0

    move-object p0, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    :goto_1
    move-object v6, v8

    goto/16 :goto_4

    :cond_2
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_6

    :catch_0
    move-exception p0

    move-object v3, p0

    move-object p0, v5

    goto/16 :goto_5

    :pswitch_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_2
    instance-of v6, p1, Lkotlin/Result$Failure;

    if-nez v6, :cond_3

    goto/16 :goto_3

    :cond_3
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :pswitch_3
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_3
    instance-of v6, p1, Lkotlin/Result$Failure;

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    goto/16 :goto_6

    :catch_1
    move-exception p0

    move-object v3, p0

    move-object p0, v4

    goto/16 :goto_5

    :pswitch_4
    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_b

    const/4 p1, 0x0

    .line 2194
    move-object v3, p1

    check-cast v3, Ljava/lang/Throwable;

    .line 390
    :try_start_4
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p1

    .line 391
    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$4:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v2, v1, :cond_5

    return-object v1

    :cond_5
    move-object v4, p0

    move-object v5, v4

    move-object p0, p1

    move-object p1, v2

    move-object v2, v5

    .line 388
    :goto_2
    :try_start_5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 393
    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$4:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_6

    return-object v1

    .line 394
    :cond_6
    :goto_3
    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$5:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_7

    return-object v1

    :cond_7
    move-object v8, v1

    move-object v1, p1

    move-object p1, v6

    goto/16 :goto_1

    .line 388
    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 395
    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$4:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$5:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-ne p1, v6, :cond_8

    return-object v6

    :cond_8
    move-object v1, v6

    goto :goto_3

    .line 2202
    :cond_9
    invoke-interface {v4, v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object v1

    .line 392
    :cond_a
    :try_start_6
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "ReceiveChannel is empty."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_2
    move-exception p1

    move-object v4, p0

    move-object p0, p1

    goto :goto_6

    :catch_2
    move-exception p1

    move-object v3, p1

    .line 2205
    :goto_5
    :try_start_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2202
    :goto_6
    invoke-interface {v4, v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    throw p0

    .line 388
    :cond_b
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

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

.method public static final c(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 228
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    .line 2027
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 228
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    iget-object v10, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v11, p2, Lkotlin/Result$Failure;

    if-nez v11, :cond_2

    :cond_1
    move-object v12, p1

    move-object p1, p0

    move-object p0, v6

    move-object v6, v1

    move-object v1, v12

    goto/16 :goto_3

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$2:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    iget-object v10, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$0:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v11, p2, Lkotlin/Result$Failure;

    if-nez v11, :cond_3

    goto :goto_2

    :cond_3
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :catch_0
    move-exception p0

    move-object v2, p0

    move-object p0, v6

    goto/16 :goto_5

    :pswitch_2
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    .line 2007
    move-object v2, v3

    check-cast v2, Ljava/lang/Throwable;

    .line 2010
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p2

    move-object v7, p0

    move-object v8, v7

    move-object v10, v8

    move-object v9, p1

    move-object p1, v10

    :goto_1
    iput-object v10, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$1:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$6:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$7:Ljava/lang/Object;

    iput v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->label:I

    invoke-interface {p2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v6, v1, :cond_4

    return-object v1

    :cond_4
    move-object v12, v6

    move-object v6, p0

    move-object p0, p2

    move-object p2, v12

    .line 228
    :goto_2
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    iput-object v10, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$0:Ljava/lang/Object;

    iput-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$1:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$2:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$3:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$7:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v1, :cond_1

    return-object v1

    .line 2011
    :goto_3
    :try_start_4
    invoke-interface {v9, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v11, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2013
    invoke-interface {p0, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    goto :goto_4

    :cond_5
    move-object p2, p1

    move-object p1, v1

    move-object v1, v6

    goto :goto_1

    .line 2015
    :cond_6
    :try_start_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2013
    invoke-interface {v6, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    move-object p2, v3

    :goto_4
    return-object p2

    :catchall_1
    move-exception p1

    move-object v6, p0

    move-object p0, p1

    goto :goto_6

    :catch_1
    move-exception p1

    move-object v2, p1

    .line 2018
    :goto_5
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_6
    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2013
    invoke-interface {v6, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 228
    :cond_7
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final c(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C::",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-TR;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TC;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1368
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 3019
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1368
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$10:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$9:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$8:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_1

    move-object v9, v1

    move-object v1, p1

    move-object p1, v2

    move-object v2, v9

    goto/16 :goto_5

    :cond_1
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_2

    move-object v9, v1

    move-object v1, p1

    move-object p1, v2

    move-object v2, v9

    goto/16 :goto_4

    :cond_2
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :pswitch_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_2
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_3

    move-object v9, v1

    move-object v1, p1

    move-object p1, v2

    :goto_1
    move-object v2, v9

    goto :goto_3

    :cond_3
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    move-object p1, v2

    goto/16 :goto_8

    :catch_0
    move-exception p0

    move-object p2, p0

    move-object p0, v2

    goto/16 :goto_7

    :pswitch_3
    instance-of v2, p3, Lkotlin/Result$Failure;

    if-nez v2, :cond_8

    const/4 p3, 0x0

    .line 3003
    check-cast p3, Ljava/lang/Throwable;

    .line 3006
    :try_start_3
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v4, p0

    move-object v7, v4

    move-object v6, p1

    move-object v5, p2

    move-object p2, p3

    move-object p1, v7

    move-object p3, p1

    move-object p0, v2

    :goto_2
    :try_start_4
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$5:Ljava/lang/Object;

    iput-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$7:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v9, v1

    move-object v1, p3

    move-object p3, v2

    goto :goto_1

    .line 1368
    :goto_3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_7

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$5:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$7:Ljava/lang/Object;

    const/4 p3, 0x2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v2, :cond_5

    return-object v2

    .line 1370
    :cond_5
    :goto_4
    invoke-interface {v5, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_6

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$5:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$7:Ljava/lang/Object;

    iput-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$8:Ljava/lang/Object;

    iput-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$9:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$10:Ljava/lang/Object;

    const/4 p3, 0x3

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->label:I

    invoke-interface {v6, v8, v0}, Lkotlinx/coroutines/channels/SendChannel;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v2, :cond_6

    return-object v2

    :cond_6
    :goto_5
    move-object p3, v1

    move-object v1, v2

    goto :goto_2

    .line 3007
    :cond_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3009
    invoke-interface {p1, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v6

    :catchall_1
    move-exception p0

    goto :goto_8

    :catch_1
    move-exception p0

    move-object p2, p0

    move-object p0, p1

    goto :goto_7

    :catchall_2
    move-exception p1

    move-object p2, p3

    :goto_6
    move-object v9, p1

    move-object p1, p0

    move-object p0, v9

    goto :goto_8

    :catch_2
    move-exception p1

    move-object p2, p1

    .line 3012
    :goto_7
    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    goto :goto_6

    :goto_8
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3009
    invoke-interface {p1, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 1368
    :cond_8
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final c(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C::",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-TR;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TC;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-TE;+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v2

    .line 1316
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 2975
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1316
    :pswitch_0
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$10:Ljava/lang/Object;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$9:Ljava/lang/Object;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function2;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v13, v0, Lkotlin/Result$Failure;

    if-nez v13, :cond_2

    move-object v0, v12

    :cond_1
    move-object v15, v11

    move-object v11, v2

    move-object v2, v15

    move-object/from16 v16, v10

    move-object v10, v5

    move-object/from16 v5, v16

    move-object/from16 v17, v8

    move-object v8, v6

    move-object/from16 v6, v17

    goto/16 :goto_2

    :cond_2
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function2;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v13, v0, Lkotlin/Result$Failure;

    if-nez v13, :cond_3

    move-object v15, v12

    move-object v12, v0

    move-object v0, v15

    goto/16 :goto_4

    :cond_3
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :pswitch_2
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function2;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_2
    instance-of v13, v0, Lkotlin/Result$Failure;

    if-nez v13, :cond_4

    move-object v15, v12

    move-object v12, v0

    move-object v0, v15

    goto :goto_3

    :cond_4
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    :goto_1
    move-object v6, v0

    goto/16 :goto_5

    :pswitch_3
    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_8

    .line 1317
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, 0x0

    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v3, 0x0

    .line 2959
    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    .line 2962
    :try_start_3
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object/from16 v7, p0

    move-object v10, v7

    move-object/from16 v5, p2

    move-object v9, v0

    move-object v11, v2

    move-object v8, v6

    move-object v0, v10

    move-object v6, v0

    move-object/from16 v2, p1

    :goto_2
    :try_start_4
    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$0:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$1:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$3:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$4:Ljava/lang/Object;

    iput-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$5:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$6:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$7:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$8:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v12, v11, :cond_5

    return-object v11

    :cond_5
    move-object v15, v11

    move-object v11, v2

    move-object v2, v15

    move-object/from16 v16, v10

    move-object v10, v5

    move-object/from16 v5, v16

    move-object/from16 v17, v8

    move-object v8, v6

    move-object/from16 v6, v17

    .line 1316
    :goto_3
    :try_start_5
    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_7

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$4:Ljava/lang/Object;

    iput-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$5:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$6:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$7:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$8:Ljava/lang/Object;

    const/4 v12, 0x2

    iput v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v2, :cond_6

    return-object v2

    .line 1319
    :cond_6
    :goto_4
    iget v13, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v10, v13, v12}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$4:Ljava/lang/Object;

    iput-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$5:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$6:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$7:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$8:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$9:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$10:Ljava/lang/Object;

    const/4 v12, 0x3

    iput v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->label:I

    invoke-interface {v11, v13, v1}, Lkotlinx/coroutines/channels/SendChannel;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v2, :cond_1

    return-object v2

    .line 2963
    :cond_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2965
    invoke-interface {v7, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v11

    :catchall_1
    move-exception v0

    move-object v6, v8

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object/from16 v7, p0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v7, p0

    goto/16 :goto_1

    .line 2968
    :goto_5
    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_6
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2965
    invoke-interface {v7, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw v0

    .line 1316
    :cond_8
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final d(Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/util/Collection;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "-TR;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TC;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1386
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 3041
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1386
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_2

    :cond_1
    move-object v9, v2

    move-object v2, p0

    move-object p0, v9

    goto/16 :goto_3

    :cond_2
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_3

    goto :goto_2

    :cond_3
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object p2, p0

    move-object p0, v2

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p3, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    const/4 p3, 0x0

    .line 3025
    check-cast p3, Ljava/lang/Throwable;

    .line 3028
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v4, p0

    move-object v7, v4

    move-object v6, p1

    move-object v5, p2

    move-object p2, p3

    move-object p1, v7

    :goto_1
    :try_start_3
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$6:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$7:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v9, v2

    move-object v2, p0

    move-object p0, v9

    .line 1386
    :goto_2
    :try_start_4
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_5

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$7:Ljava/lang/Object;

    const/4 p3, 0x2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-ne p3, v1, :cond_1

    return-object v1

    .line 1388
    :goto_3
    :try_start_5
    invoke-interface {v5, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v6, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    .line 3029
    :cond_5
    :try_start_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3031
    invoke-interface {v2, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v6

    :catchall_1
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    move-object p2, p3

    goto :goto_5

    :catch_1
    move-exception p1

    move-object p2, p1

    .line 3034
    :goto_4
    :try_start_7
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    :goto_5
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3031
    invoke-interface {v2, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 1386
    :cond_6
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final d(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 455
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 2247
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 455
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$5:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v6, p1, Lkotlin/Result$Failure;

    if-nez v6, :cond_1

    goto/16 :goto_3

    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$5:Ljava/lang/Object;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v7, p1, Lkotlin/Result$Failure;

    if-nez v7, :cond_2

    move-object v8, v1

    move-object v1, p0

    move-object p0, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    :goto_1
    move-object v6, v8

    goto/16 :goto_4

    :cond_2
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :pswitch_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_2
    instance-of v6, p1, Lkotlin/Result$Failure;

    if-nez v6, :cond_3

    goto/16 :goto_3

    :cond_3
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catch_0
    move-exception p0

    move-object v3, p0

    move-object p0, v4

    goto/16 :goto_5

    :pswitch_3
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_3
    instance-of v7, p1, Lkotlin/Result$Failure;

    if-nez v7, :cond_4

    move-object v8, v2

    move-object v2, p0

    move-object p0, v5

    move-object v5, v6

    move-object v6, v8

    goto :goto_2

    :cond_4
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    move-object v3, v4

    move-object v4, v5

    goto/16 :goto_7

    :catch_1
    move-exception p0

    move-object v3, p0

    move-object p0, v5

    goto/16 :goto_5

    :pswitch_4
    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_b

    .line 2239
    move-object p1, v3

    check-cast p1, Ljava/lang/Throwable;

    .line 457
    :try_start_4
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2

    .line 458
    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$4:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-ne v4, v1, :cond_5

    return-object v1

    :cond_5
    move-object v5, p0

    move-object v6, v5

    move-object v8, v4

    move-object v4, p1

    move-object p1, v8

    .line 455
    :goto_2
    :try_start_5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez p1, :cond_6

    .line 2247
    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object v3

    .line 460
    :cond_6
    :try_start_6
    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$4:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v3, v4

    move-object v4, p0

    move-object p0, v2

    move-object v2, v6

    .line 461
    :goto_3
    :try_start_7
    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$5:Ljava/lang/Object;

    const/4 v6, 0x3

    iput v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_8

    return-object v1

    :cond_8
    move-object v8, v1

    move-object v1, p1

    move-object p1, v6

    goto/16 :goto_1

    .line 455
    :goto_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 462
    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$4:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$5:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-ne p1, v6, :cond_9

    return-object v6

    :cond_9
    move-object v1, v6

    goto :goto_3

    .line 2247
    :cond_a
    invoke-interface {v4, v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object v1

    :catchall_2
    move-exception p1

    move-object v3, v4

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v4, p0

    move-object v3, p1

    move-object p0, v0

    goto :goto_7

    :catch_2
    move-exception p1

    move-object v3, p1

    .line 2250
    :goto_5
    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    :goto_6
    move-object v4, p0

    move-object p0, p1

    .line 2247
    :goto_7
    invoke-interface {v4, v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    throw p0

    .line 455
    :cond_b
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

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

.method public static final d(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 241
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 2065
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 241
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$8:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$7:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$6:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v10, p2, Lkotlin/Result$Failure;

    if-nez v10, :cond_2

    :cond_1
    move-object v11, v4

    move-object v4, p0

    move-object p0, v11

    goto/16 :goto_3

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$8:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$7:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$6:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v10, p2, Lkotlin/Result$Failure;

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v2, p0

    move-object p0, v4

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    .line 2035
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2038
    check-cast v2, Ljava/lang/Throwable;

    .line 2041
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4

    move-object v5, p0

    move-object v7, v5

    move-object v9, v7

    move-object v8, p1

    move-object p1, v9

    :goto_1
    iput-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$2:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$3:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$4:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$5:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$6:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$7:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$8:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->label:I

    invoke-interface {v4, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v6, v1, :cond_4

    return-object v1

    :cond_4
    move-object v11, v4

    move-object v4, p0

    move-object p0, v11

    move-object v12, v6

    move-object v6, p2

    move-object p2, v12

    .line 241
    :goto_2
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    iput-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$3:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$4:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$5:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$6:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$7:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$8:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v1, :cond_1

    return-object v1

    .line 2042
    :goto_3
    :try_start_4
    invoke-interface {v8, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2043
    iput-object p2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    move-object p2, v6

    goto :goto_1

    .line 2046
    :cond_6
    :try_start_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2048
    invoke-interface {v4, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    .line 2052
    iget-object p0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p0

    :catchall_1
    move-exception p1

    move-object v4, p0

    move-object p0, p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v2, p1

    .line 2051
    :goto_4
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2048
    invoke-interface {v4, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 241
    :cond_7
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final d(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlinx/coroutines/channels/SendChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C::",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-TR;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;TC;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->label:I

    sub-int/2addr p3, v2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1404
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 3063
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1404
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$9:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$8:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_1

    move-object p3, v5

    move-object v5, p1

    move-object p1, v7

    move-object v9, v4

    move-object v4, p2

    move-object p2, v6

    move-object v6, v1

    move-object v1, v9

    goto/16 :goto_1

    :cond_1
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_3

    :cond_2
    move-object v9, v1

    move-object v1, p0

    move-object p0, v2

    move-object v2, v9

    goto/16 :goto_3

    :cond_3
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :pswitch_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/functions/Function1;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/SendChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_2
    instance-of v8, p3, Lkotlin/Result$Failure;

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object p2, p0

    move-object p0, v2

    goto/16 :goto_4

    :pswitch_3
    instance-of v2, p3, Lkotlin/Result$Failure;

    if-nez v2, :cond_8

    const/4 p3, 0x0

    .line 3047
    check-cast p3, Ljava/lang/Throwable;

    .line 3050
    :try_start_3
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v5, p0

    move-object v4, p3

    move-object v6, v1

    move-object v1, v5

    move-object p3, p2

    move-object p0, v2

    move-object v2, v1

    move-object p2, p1

    move-object p1, v2

    :goto_1
    :try_start_4
    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$2:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$4:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$5:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$7:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v7, v6, :cond_5

    return-object v6

    :cond_5
    move-object v9, v7

    move-object v7, p1

    move-object p1, v5

    move-object v5, p3

    move-object p3, v9

    move-object v10, v6

    move-object v6, p2

    move-object p2, v4

    move-object v4, v1

    move-object v1, v10

    .line 1404
    :goto_2
    :try_start_5
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_7

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$7:Ljava/lang/Object;

    const/4 p3, 0x2

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-ne p3, v1, :cond_2

    return-object v1

    .line 1406
    :goto_3
    :try_start_6
    invoke-interface {v5, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$6:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$7:Ljava/lang/Object;

    iput-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$8:Ljava/lang/Object;

    iput-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$9:Ljava/lang/Object;

    const/4 p3, 0x3

    iput p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->label:I

    invoke-interface {v6, v8, v0}, Lkotlinx/coroutines/channels/SendChannel;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-ne p3, v2, :cond_6

    return-object v2

    :cond_6
    move-object p3, v5

    move-object v5, p1

    move-object p1, v7

    move-object v9, v2

    move-object v2, p0

    move-object p0, v1

    move-object v1, v4

    move-object v4, p2

    move-object p2, v6

    move-object v6, v9

    goto :goto_1

    .line 3051
    :cond_7
    :try_start_7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3053
    invoke-interface {v2, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v6

    :catchall_1
    move-exception p0

    move-object p2, v4

    goto :goto_5

    :catchall_2
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    move-object p2, p3

    goto :goto_5

    :catch_1
    move-exception p1

    move-object p2, p1

    .line 3056
    :goto_4
    :try_start_8
    throw p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    :goto_5
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3053
    invoke-interface {v2, p2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 1404
    :cond_8
    check-cast p3, Lkotlin/Result$Failure;

    iget-object p0, p3, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final e(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 496
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->label:I

    packed-switch v2, :pswitch_data_0

    .line 2281
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 496
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$5:Ljava/lang/Object;

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$4:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    move-object v3, v1

    move-object v4, v2

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v1, p0

    move-object p0, v2

    goto/16 :goto_4

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v6, p1, Lkotlin/Result$Failure;

    if-nez v6, :cond_3

    :cond_2
    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    goto/16 :goto_2

    :cond_3
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :pswitch_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$1:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_2
    instance-of v6, p1, Lkotlin/Result$Failure;

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    goto/16 :goto_5

    :catch_1
    move-exception p0

    move-object v1, p0

    move-object p0, v4

    goto/16 :goto_4

    :pswitch_3
    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_9

    const/4 p1, 0x0

    .line 2273
    check-cast p1, Ljava/lang/Throwable;

    .line 498
    :try_start_3
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2

    .line 499
    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$4:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-ne v3, v1, :cond_5

    return-object v1

    :cond_5
    move-object v4, p0

    move-object v5, v4

    move-object p0, v2

    move-object v2, v5

    move-object v7, v3

    move-object v3, p1

    move-object p1, v7

    .line 496
    :goto_1
    :try_start_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 501
    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$4:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_2

    return-object v1

    .line 502
    :goto_2
    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$0:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$4:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$5:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v1, v3

    move-object v2, v4

    .line 496
    :goto_3
    :try_start_5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez p1, :cond_7

    .line 2281
    invoke-interface {v2, v1}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object p0

    .line 503
    :cond_7
    :try_start_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ReceiveChannel has more than one element."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 500
    :cond_8
    :try_start_7
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "ReceiveChannel is empty."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_2
    move-exception v0

    move-object v4, p0

    move-object v3, p1

    move-object p0, v0

    goto :goto_5

    :catch_2
    move-exception p1

    move-object v1, p1

    .line 2284
    :goto_4
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception p1

    move-object v4, p0

    move-object p0, p1

    move-object v3, v1

    .line 2281
    :goto_5
    invoke-interface {v4, v3}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    throw p0

    .line 496
    :cond_9
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final e(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 274
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 2100
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 274
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v9, p2, Lkotlin/Result$Failure;

    if-nez v9, :cond_2

    :cond_1
    move-object v10, p1

    move-object p1, p0

    move-object p0, v5

    move-object v5, v1

    move-object v1, v10

    goto/16 :goto_3

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v9, p2, Lkotlin/Result$Failure;

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v2, p0

    move-object p0, v5

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    const/4 p2, 0x0

    .line 2084
    move-object v2, p2

    check-cast v2, Ljava/lang/Throwable;

    .line 2087
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p2

    move-object v6, p0

    move-object v8, v6

    move-object v7, p1

    move-object p1, v8

    :goto_1
    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$5:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$6:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->label:I

    invoke-interface {p2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v5, v1, :cond_4

    return-object v1

    :cond_4
    move-object v10, v5

    move-object v5, p0

    move-object p0, p2

    move-object p2, v10

    .line 274
    :goto_2
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$5:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$6:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v1, :cond_1

    return-object v1

    .line 276
    :goto_3
    :try_start_4
    invoke-interface {v7, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v9, :cond_5

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2090
    invoke-interface {p0, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object p2

    :cond_5
    move-object p2, p1

    move-object p1, v1

    move-object v1, v5

    goto :goto_1

    .line 2088
    :cond_6
    :try_start_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2090
    invoke-interface {v5, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    .line 278
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "ReceiveChannel contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    :catchall_1
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v2, p1

    .line 2093
    :goto_4
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2090
    invoke-interface {v5, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 274
    :cond_7
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final f(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 542
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->label:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 2315
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 542
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$5:Ljava/lang/Object;

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$4:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_1

    move-object v0, p0

    move-object p0, v2

    goto/16 :goto_4

    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p0

    move-object v4, v1

    move-object v5, v2

    goto/16 :goto_6

    :catch_0
    move-exception p0

    move-object v1, p0

    move-object p0, v2

    goto/16 :goto_5

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v7, p1, Lkotlin/Result$Failure;

    if-nez v7, :cond_2

    move-object v8, v2

    move-object v2, p0

    :goto_1
    move-object p0, p1

    move-object p1, v8

    goto/16 :goto_3

    :cond_2
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :pswitch_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_2
    instance-of v7, p1, Lkotlin/Result$Failure;

    if-nez v7, :cond_3

    move-object v8, v2

    move-object v2, p0

    move-object p0, v5

    move-object v5, v8

    goto :goto_2

    :cond_3
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    goto/16 :goto_6

    :catch_1
    move-exception p0

    move-object v1, p0

    move-object p0, v5

    goto/16 :goto_5

    :pswitch_3
    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_9

    .line 2307
    move-object p1, v3

    check-cast p1, Ljava/lang/Throwable;

    .line 544
    :try_start_3
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2

    .line 545
    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$4:Ljava/lang/Object;

    const/4 v4, 0x1

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-ne v4, v1, :cond_4

    return-object v1

    :cond_4
    move-object v5, p0

    move-object v6, v5

    move-object v8, v4

    move-object v4, p1

    move-object p1, v8

    .line 542
    :goto_2
    :try_start_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez p1, :cond_5

    .line 2315
    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object v3

    .line 547
    :cond_5
    :try_start_5
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$4:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-ne p1, v1, :cond_6

    return-object v1

    :cond_6
    move-object v8, v5

    move-object v5, p0

    goto :goto_1

    .line 548
    :goto_3
    :try_start_6
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$2:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$4:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$5:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-ne p1, v1, :cond_7

    return-object v1

    :cond_7
    move-object v0, p0

    move-object v1, v4

    move-object p0, v5

    .line 542
    :goto_4
    :try_start_7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz p1, :cond_8

    .line 2315
    invoke-interface {p0, v1}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object v3

    :cond_8
    invoke-interface {p0, v1}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object v0

    :catchall_2
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v5, p0

    move-object v4, p1

    move-object p0, v0

    goto :goto_6

    :catch_2
    move-exception p1

    move-object v1, p1

    .line 2318
    :goto_5
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    move-object v4, v1

    .line 2315
    :goto_6
    invoke-interface {v5, v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    throw p0

    .line 542
    :cond_9
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final f(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 309
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    .line 2134
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 309
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$3:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v10, p2, Lkotlin/Result$Failure;

    if-nez v10, :cond_2

    :cond_1
    move-object v11, p1

    move-object p1, p0

    move-object p0, v6

    move-object v6, v1

    move-object v1, v11

    goto/16 :goto_3

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$3:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v10, p2, Lkotlin/Result$Failure;

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v2, p0

    move-object p0, v6

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    .line 2118
    move-object v2, v3

    check-cast v2, Ljava/lang/Throwable;

    .line 2121
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p2

    move-object v7, p0

    move-object v9, v7

    move-object v8, p1

    move-object p1, v9

    :goto_1
    iput-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$5:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$6:Ljava/lang/Object;

    iput v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->label:I

    invoke-interface {p2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v6, v1, :cond_4

    return-object v1

    :cond_4
    move-object v11, v6

    move-object v6, p0

    move-object p0, p2

    move-object p2, v11

    .line 309
    :goto_2
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    iput-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$5:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$6:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v1, :cond_1

    return-object v1

    .line 311
    :goto_3
    :try_start_4
    invoke-interface {v8, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v10, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2124
    invoke-interface {p0, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object p2

    :cond_5
    move-object p2, p1

    move-object p1, v1

    move-object v1, v6

    goto :goto_1

    .line 2122
    :cond_6
    :try_start_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2124
    invoke-interface {v6, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v3

    :catchall_1
    move-exception p1

    move-object v6, p0

    move-object p0, p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v2, p1

    .line 2127
    :goto_4
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2124
    invoke-interface {v6, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v5}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 309
    :cond_7
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final g(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1512
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->label:I

    packed-switch v2, :pswitch_data_0

    .line 3098
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1512
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->L$3:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_1

    move-object v0, p0

    move-object p0, v1

    goto :goto_1

    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    move-object v0, p1

    move-object p1, p0

    move-object p0, v1

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :pswitch_1
    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_3

    const/4 p1, 0x0

    .line 3090
    check-cast p1, Ljava/lang/Throwable;

    .line 1514
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->L$3:Ljava/lang/Object;

    const/4 v3, 0x1

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v1, :cond_2

    return-object v1

    :cond_2
    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    .line 3098
    :goto_1
    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object p1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    .line 3101
    :goto_2
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3098
    :goto_3
    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    throw v0

    .line 1512
    :cond_3
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final g(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 346
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 2167
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 346
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v10, p2, Lkotlin/Result$Failure;

    if-nez v10, :cond_2

    :cond_1
    move-object v11, v5

    move-object v5, p0

    move-object p0, v11

    goto/16 :goto_3

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v10, p2, Lkotlin/Result$Failure;

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v2, p0

    move-object p0, v5

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    .line 347
    new-instance p2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v2, 0x0

    iput v2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v2, 0x0

    .line 2151
    check-cast v2, Ljava/lang/Throwable;

    .line 2154
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v5

    move-object v6, p0

    move-object v9, v6

    move-object v8, p1

    move-object p1, v9

    :goto_1
    iput-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$6:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$7:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->label:I

    invoke-interface {v5, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v7, v1, :cond_4

    return-object v1

    :cond_4
    move-object v11, v5

    move-object v5, p0

    move-object p0, v11

    move-object v12, v7

    move-object v7, p2

    move-object p2, v12

    .line 346
    :goto_2
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    iput-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$3:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$7:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v1, :cond_1

    return-object v1

    .line 349
    :goto_3
    :try_start_4
    invoke-interface {v8, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 350
    iget p1, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2157
    invoke-interface {p0, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object p1

    .line 351
    :cond_5
    :try_start_5
    iget p2, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p2, v4

    iput p2, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object p2, v7

    goto :goto_1

    .line 2155
    :cond_6
    :try_start_6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2157
    invoke-interface {v5, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    const/4 p0, -0x1

    .line 353
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v2, p1

    .line 2160
    :goto_4
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_5
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2157
    invoke-interface {v5, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 346
    :cond_7
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final h(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1544
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 1547
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1544
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$5:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v9, p1, Lkotlin/Result$Failure;

    if-nez v9, :cond_1

    move-object p1, v7

    move-object v10, v2

    move-object v2, p0

    move-object p0, v5

    move-object v5, v1

    move-object v1, v10

    goto/16 :goto_3

    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$5:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v9, p1, Lkotlin/Result$Failure;

    if-nez v9, :cond_2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_2

    :cond_2
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v4, p0

    move-object p0, v5

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    .line 1545
    new-instance p1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v2, 0x0

    iput v2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v2, 0x0

    .line 3125
    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    .line 3128
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2

    move-object v6, p0

    move-object v8, v6

    move-object v5, v1

    move-object v1, v8

    :goto_1
    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$4:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$5:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$6:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v7, v5, :cond_3

    return-object v5

    :cond_3
    move-object v10, v5

    move-object v5, p0

    move-object p0, v2

    move-object v2, v10

    move-object v11, v7

    move-object v7, p1

    move-object p1, v11

    .line 1544
    :goto_2
    :try_start_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$4:Ljava/lang/Object;

    iput-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$5:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$6:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p1, v2, :cond_4

    return-object v2

    :cond_4
    move-object p1, v7

    move-object v10, v2

    move-object v2, p0

    move-object p0, v5

    move-object v5, v10

    .line 1546
    :goto_3
    :try_start_4
    iget v7, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v7, v3

    iput v7, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 3129
    :cond_5
    :try_start_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3131
    invoke-interface {v5, v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    .line 1547
    iget p0, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v4, p1

    .line 3134
    :goto_4
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 3131
    :goto_5
    invoke-interface {v5, v4}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    throw p0

    .line 1544
    :cond_6
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final h(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v2

    .line 366
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 2189
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 366
    :pswitch_0
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v13, v0, Lkotlin/Result$Failure;

    if-nez v13, :cond_1

    move-object v14, v9

    move-object v9, v2

    move-object v2, v7

    move-object v7, v5

    move-object v5, v3

    move-object v3, v14

    goto/16 :goto_3

    :cond_1
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v13, v0, Lkotlin/Result$Failure;

    if-nez v13, :cond_2

    move-object v14, v7

    move-object v7, v2

    move-object v2, v14

    goto :goto_2

    :cond_2
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v7

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v2, v7

    goto/16 :goto_5

    :pswitch_2
    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_7

    .line 367
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, -0x1

    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 368
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v5, 0x0

    iput v5, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v5, 0x0

    .line 2173
    move-object v6, v5

    check-cast v6, Ljava/lang/Throwable;

    .line 2176
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v7, p0

    move-object v8, v7

    move-object v12, v8

    move-object/from16 v11, p1

    move-object v9, v2

    move-object v2, v12

    :goto_1
    :try_start_3
    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$1:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$2:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$5:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$6:Ljava/lang/Object;

    iput-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$7:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$8:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->label:I

    invoke-interface {v5, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v9, :cond_3

    return-object v9

    :cond_3
    move-object v14, v10

    move-object v10, v0

    move-object v0, v14

    move-object v15, v9

    move-object v9, v3

    move-object v3, v5

    move-object v5, v7

    move-object v7, v15

    .line 366
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$5:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$6:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$7:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$8:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_4

    return-object v7

    :cond_4
    move-object v14, v5

    move-object v5, v3

    move-object v3, v9

    move-object v9, v7

    move-object v7, v14

    .line 370
    :goto_3
    invoke-interface {v11, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 371
    iget v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iput v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 372
    :cond_5
    iget v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v0, v4

    iput v0, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object v0, v10

    goto :goto_1

    .line 2177
    :cond_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2179
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    .line 374
    iget v0, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_4
    move-object v6, v0

    .line 2182
    :goto_5
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :goto_6
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2179
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw v0

    .line 366
    :cond_7
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final i(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->label:I

    sub-int/2addr p1, v2

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1716
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 3281
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1716
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->L$3:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v0, p1, Lkotlin/Result$Failure;

    if-nez v0, :cond_1

    move-object v0, p0

    move-object p0, v1

    goto :goto_1

    :cond_1
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p1, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    move-object v0, p0

    move-object p0, v1

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :pswitch_1
    instance-of v2, p1, Lkotlin/Result$Failure;

    if-nez v2, :cond_3

    const/4 p1, 0x0

    .line 3273
    check-cast p1, Ljava/lang/Throwable;

    .line 1718
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v0, v1, :cond_2

    return-object v1

    :cond_2
    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    .line 1716
    :goto_1
    :try_start_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    xor-int/2addr p1, v3

    .line 3280
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3281
    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    .line 3284
    :goto_2
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3281
    :goto_3
    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    throw p1

    .line 1716
    :cond_3
    check-cast p1, Lkotlin/Result$Failure;

    iget-object p0, p1, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final i(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v2

    .line 410
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 420
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :pswitch_0
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v13, v0, Lkotlin/Result$Failure;

    if-nez v13, :cond_1

    move-object v14, v9

    move-object v9, v2

    move-object v2, v7

    move-object v7, v5

    move-object v5, v14

    goto/16 :goto_3

    :cond_1
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v13, v0, Lkotlin/Result$Failure;

    if-nez v13, :cond_2

    move-object v14, v7

    move-object v7, v2

    move-object v2, v14

    goto :goto_2

    :cond_2
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v7

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v2, v7

    goto/16 :goto_5

    :pswitch_2
    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_8

    .line 411
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 412
    new-instance v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v6, 0x0

    iput-boolean v6, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2207
    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    .line 2210
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v7, p0

    move-object v8, v7

    move-object v12, v8

    move-object/from16 v11, p1

    move-object v9, v2

    move-object v2, v12

    :goto_1
    :try_start_3
    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$1:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$2:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$5:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$6:Ljava/lang/Object;

    iput-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$7:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$8:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v9, :cond_3

    return-object v9

    :cond_3
    move-object v14, v10

    move-object v10, v0

    move-object v0, v14

    move-object v15, v9

    move-object v9, v5

    move-object v5, v7

    move-object v7, v15

    .line 410
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$5:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$6:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$7:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$8:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_4

    return-object v7

    :cond_4
    move-object v14, v7

    move-object v7, v5

    move-object v5, v9

    move-object v9, v14

    .line 414
    :goto_3
    invoke-interface {v11, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 415
    iput-object v0, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 416
    iput-boolean v4, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_5
    move-object v0, v10

    goto :goto_1

    .line 2211
    :cond_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2213
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    .line 419
    iget-boolean v0, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_7

    .line 421
    iget-object v0, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v0

    .line 419
    :cond_7
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "ReceiveChannel contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_4
    move-object v6, v0

    .line 2216
    :goto_5
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :goto_6
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2213
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw v0

    .line 410
    :cond_8
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final j(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 476
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 2268
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 476
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v9, p2, Lkotlin/Result$Failure;

    if-nez v9, :cond_2

    :cond_1
    move-object v10, v4

    move-object v4, p0

    move-object p0, v10

    goto/16 :goto_3

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v9, p2, Lkotlin/Result$Failure;

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v2, p0

    move-object p0, v4

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    .line 477
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v2, 0x0

    iput-object v2, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 2252
    check-cast v2, Ljava/lang/Throwable;

    .line 2255
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4

    move-object v5, p0

    move-object v8, v5

    move-object v7, p1

    move-object p1, v8

    :goto_1
    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$6:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$7:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->label:I

    invoke-interface {v4, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v6, v1, :cond_4

    return-object v1

    :cond_4
    move-object v10, v4

    move-object v4, p0

    move-object p0, v10

    move-object v11, v6

    move-object v6, p2

    move-object p2, v11

    .line 476
    :goto_2
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$7:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v1, :cond_1

    return-object v1

    .line 479
    :goto_3
    :try_start_4
    invoke-interface {v7, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 480
    iput-object p2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    move-object p2, v6

    goto :goto_1

    .line 2256
    :cond_6
    :try_start_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2258
    invoke-interface {v4, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    .line 483
    iget-object p0, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p0

    :catchall_1
    move-exception p1

    move-object v4, p0

    move-object p0, p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v2, p1

    .line 2261
    :goto_4
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2258
    invoke-interface {v4, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 476
    :cond_7
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final k(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v2

    .line 517
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 528
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :pswitch_0
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v13, v0, Lkotlin/Result$Failure;

    if-nez v13, :cond_1

    move-object v14, v9

    move-object v9, v2

    move-object v2, v7

    move-object v7, v5

    move-object v5, v14

    goto/16 :goto_3

    :cond_1
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v13, v0, Lkotlin/Result$Failure;

    if-nez v13, :cond_2

    move-object v14, v7

    move-object v7, v2

    move-object v2, v14

    goto :goto_2

    :cond_2
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v7

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v2, v7

    goto/16 :goto_6

    :pswitch_2
    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_9

    .line 518
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v3, 0x0

    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 519
    new-instance v5, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v6, 0x0

    iput-boolean v6, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2286
    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    .line 2289
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v7, p0

    move-object v8, v7

    move-object v12, v8

    move-object/from16 v11, p1

    move-object v9, v2

    move-object v2, v12

    :goto_1
    :try_start_3
    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$1:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$2:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$5:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$6:Ljava/lang/Object;

    iput-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$7:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$8:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v9, :cond_3

    return-object v9

    :cond_3
    move-object v14, v10

    move-object v10, v0

    move-object v0, v14

    move-object v15, v9

    move-object v9, v5

    move-object v5, v7

    move-object v7, v15

    .line 517
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$5:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$6:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$7:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$8:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_4

    return-object v7

    :cond_4
    move-object v14, v7

    move-object v7, v5

    move-object v5, v9

    move-object v9, v14

    .line 521
    :goto_3
    invoke-interface {v11, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 522
    iget-boolean v13, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v13, :cond_5

    .line 523
    iput-object v0, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 524
    iput-boolean v4, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_4

    .line 522
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ReceiveChannel contains more than one matching element."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_6
    :goto_4
    move-object v0, v10

    goto :goto_1

    .line 2290
    :cond_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2292
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    .line 527
    iget-boolean v0, v9, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_8

    .line 529
    iget-object v0, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v0

    .line 527
    :cond_8
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "ReceiveChannel contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :catch_1
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_5
    move-object v6, v0

    .line 2295
    :goto_6
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :goto_7
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2292
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw v0

    .line 517
    :cond_9
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final l(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v2

    .line 563
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->label:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v3, :pswitch_data_0

    .line 2336
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :pswitch_0
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$7:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$6:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Throwable;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$5:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$4:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$3:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$2:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$1:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/functions/Function1;

    iget-object v14, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$0:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v15, v0, Lkotlin/Result$Failure;

    if-nez v15, :cond_1

    move-object/from16 v16, v11

    move-object v11, v2

    move-object v2, v9

    move-object v9, v7

    move-object v7, v3

    move-object/from16 v3, v16

    goto/16 :goto_3

    :cond_1
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$7:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$6:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Throwable;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$5:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$4:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$3:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$2:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$1:Ljava/lang/Object;

    check-cast v13, Lkotlin/jvm/functions/Function1;

    iget-object v14, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$0:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v15, v0, Lkotlin/Result$Failure;

    if-nez v15, :cond_2

    move-object/from16 v16, v9

    move-object v9, v2

    move-object/from16 v2, v16

    goto :goto_2

    :cond_2
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v9

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v2, v9

    goto/16 :goto_5

    :pswitch_2
    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_9

    .line 564
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v5, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 565
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v7, 0x0

    iput-boolean v7, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 2320
    move-object v8, v5

    check-cast v8, Ljava/lang/Throwable;

    .line 2323
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v9, p0

    move-object v10, v9

    move-object v14, v10

    move-object/from16 v13, p1

    move-object v11, v2

    move-object v2, v14

    :goto_1
    :try_start_3
    iput-object v14, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$0:Ljava/lang/Object;

    iput-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$1:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$2:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$3:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$5:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$6:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$7:Ljava/lang/Object;

    iput-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$8:Ljava/lang/Object;

    iput v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->label:I

    invoke-interface {v7, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v11, :cond_3

    return-object v11

    :cond_3
    move-object/from16 v16, v12

    move-object v12, v0

    move-object/from16 v0, v16

    move-object/from16 v17, v11

    move-object v11, v3

    move-object v3, v7

    move-object v7, v9

    move-object/from16 v9, v17

    .line 563
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    iput-object v14, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$0:Ljava/lang/Object;

    iput-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$1:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$2:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$3:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$5:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$6:Ljava/lang/Object;

    iput-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$7:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$8:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v9, :cond_4

    return-object v9

    :cond_4
    move-object/from16 v16, v7

    move-object v7, v3

    move-object v3, v11

    move-object v11, v9

    move-object/from16 v9, v16

    .line 567
    :goto_3
    invoke-interface {v13, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 568
    iget-boolean v15, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v15, :cond_5

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2326
    invoke-interface {v2, v8}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v5

    .line 569
    :cond_5
    :try_start_4
    iput-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 570
    iput-boolean v6, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_6
    move-object v0, v12

    goto :goto_1

    .line 2324
    :cond_7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2326
    invoke-interface {v2, v8}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    .line 573
    iget-boolean v0, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_8

    return-object v5

    .line 574
    :cond_8
    iget-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v0

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_4
    move-object v8, v0

    .line 2329
    :goto_5
    :try_start_5
    throw v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    :goto_6
    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2326
    invoke-interface {v2, v8}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw v0

    .line 563
    :cond_9
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final m(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+",
            "Lkotlin/Pair<",
            "+TK;+TV;>;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "TK;+TV;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 890
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 2539
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 890
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$8:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$7:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$6:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v10, p2, Lkotlin/Result$Failure;

    if-nez v10, :cond_2

    :cond_1
    move-object v11, v4

    move-object v4, p0

    move-object p0, v11

    goto/16 :goto_3

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$8:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$7:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$6:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v10, p2, Lkotlin/Result$Failure;

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v2, p0

    move-object p0, v4

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    .line 891
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    const/4 v2, 0x0

    .line 2517
    check-cast v2, Ljava/lang/Throwable;

    .line 2520
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4

    move-object v5, p0

    move-object v7, v5

    move-object v9, v7

    move-object v8, p1

    move-object p1, v9

    :goto_1
    iput-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$2:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$3:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$4:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$5:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$6:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$7:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$8:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->label:I

    invoke-interface {v4, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v6, v1, :cond_4

    return-object v1

    :cond_4
    move-object v11, v4

    move-object v4, p0

    move-object p0, v11

    move-object v12, v6

    move-object v6, p2

    move-object p2, v12

    .line 890
    :goto_2
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    iput-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$3:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$4:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$5:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$6:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$7:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$8:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v1, :cond_1

    return-object v1

    .line 2521
    :goto_3
    :try_start_4
    invoke-interface {v8, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/Pair;

    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v6, v10, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object p2, v6

    goto :goto_1

    .line 2523
    :cond_5
    :try_start_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2525
    invoke-interface {v4, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v6

    :catchall_1
    move-exception p1

    move-object v4, p0

    move-object p0, p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v2, p1

    .line 2528
    :goto_4
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2525
    invoke-interface {v4, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 890
    :cond_6
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final n(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+TK;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "TK;+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 908
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 2569
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 908
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$8:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$7:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$6:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v10, p2, Lkotlin/Result$Failure;

    if-nez v10, :cond_2

    :cond_1
    move-object v11, v4

    move-object v4, p0

    move-object p0, v11

    goto/16 :goto_3

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$8:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$7:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$6:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/functions/Function1;

    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v10, p2, Lkotlin/Result$Failure;

    if-nez v10, :cond_3

    goto :goto_2

    :cond_3
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v2, p0

    move-object p0, v4

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    .line 909
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast p2, Ljava/util/Map;

    const/4 v2, 0x0

    .line 2547
    check-cast v2, Ljava/lang/Throwable;

    .line 2550
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4

    move-object v5, p0

    move-object v7, v5

    move-object v9, v7

    move-object v8, p1

    move-object p1, v9

    :goto_1
    iput-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$2:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$3:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$4:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$5:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$6:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$7:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$8:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->label:I

    invoke-interface {v4, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v6, v1, :cond_4

    return-object v1

    :cond_4
    move-object v11, v4

    move-object v4, p0

    move-object p0, v11

    move-object v12, v6

    move-object v6, p2

    move-object p2, v12

    .line 908
    :goto_2
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    iput-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$3:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$4:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$5:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$6:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$7:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$8:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v1, :cond_1

    return-object v1

    .line 2551
    :goto_3
    :try_start_4
    invoke-interface {v8, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v10, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object p2, v6

    goto :goto_1

    .line 2553
    :cond_5
    :try_start_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2555
    invoke-interface {v4, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v6

    :catchall_1
    move-exception p1

    move-object v4, p0

    move-object p0, p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v2, p1

    .line 2558
    :goto_4
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2555
    invoke-interface {v4, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 908
    :cond_6
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final o(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+TK;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/util/Map<",
            "TK;+",
            "Ljava/util/List<",
            "+TE;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v2

    .line 1123
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 2746
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1123
    :pswitch_0
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/util/Map;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v13, v0, Lkotlin/Result$Failure;

    if-nez v13, :cond_1

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :cond_1
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/util/Map;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v13, v0, Lkotlin/Result$Failure;

    if-nez v13, :cond_2

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto :goto_2

    :cond_2
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v7

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v2, v7

    goto/16 :goto_5

    :pswitch_2
    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_7

    .line 1124
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const/4 v3, 0x0

    .line 2706
    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    .line 2709
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v5, p0

    move-object v8, v5

    move-object v10, v8

    move-object v12, v10

    move-object/from16 v11, p1

    move-object v7, v2

    move-object v2, v12

    :goto_1
    :try_start_3
    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$2:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$5:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$6:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$7:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$8:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v7, :cond_3

    return-object v7

    :cond_3
    move-object v15, v9

    move-object v9, v0

    move-object v0, v15

    .line 1123
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$5:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$6:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$7:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$8:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_4

    return-object v7

    .line 2710
    :cond_4
    :goto_3
    invoke-interface {v11, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 2712
    invoke-interface {v9, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_5

    .line 2711
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2715
    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2711
    :cond_5
    check-cast v14, Ljava/util/List;

    .line 2719
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v9

    goto :goto_1

    .line 2721
    :cond_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2723
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v9

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_4
    move-object v6, v0

    .line 2726
    :goto_5
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :goto_6
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 2723
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw v0

    .line 1123
    :cond_7
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final p(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1495
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 3085
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1495
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v9, p2, Lkotlin/Result$Failure;

    if-nez v9, :cond_2

    :cond_1
    move-object v10, p1

    move-object p1, p0

    move-object p0, v5

    move-object v5, v1

    move-object v1, v10

    goto/16 :goto_3

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v9, p2, Lkotlin/Result$Failure;

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v2, p0

    move-object p0, v5

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    const/4 p2, 0x0

    .line 3069
    move-object v2, p2

    check-cast v2, Ljava/lang/Throwable;

    .line 3072
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p2

    move-object v6, p0

    move-object v8, v6

    move-object v7, p1

    move-object p1, v8

    :goto_1
    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$5:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$6:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->label:I

    invoke-interface {p2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v5, v1, :cond_4

    return-object v1

    :cond_4
    move-object v10, v5

    move-object v5, p0

    move-object p0, p2

    move-object p2, v10

    .line 1495
    :goto_2
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$5:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$6:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v1, :cond_1

    return-object v1

    .line 1497
    :goto_3
    :try_start_4
    invoke-interface {v7, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3075
    invoke-interface {p0, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object p1

    :cond_5
    move-object p2, p1

    move-object p1, v1

    move-object v1, v5

    goto :goto_1

    .line 3073
    :cond_6
    :try_start_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3075
    invoke-interface {v5, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    .line 1499
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v2, p1

    .line 3078
    :goto_4
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3075
    invoke-interface {v5, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 1495
    :cond_7
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final q(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1527
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 3119
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1527
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v9, p2, Lkotlin/Result$Failure;

    if-nez v9, :cond_2

    :cond_1
    move-object v10, p1

    move-object p1, p0

    move-object p0, v5

    move-object v5, v1

    move-object v1, v10

    goto/16 :goto_3

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v9, p2, Lkotlin/Result$Failure;

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v2, p0

    move-object p0, v5

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    const/4 p2, 0x0

    .line 3103
    move-object v2, p2

    check-cast v2, Ljava/lang/Throwable;

    .line 3106
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p2

    move-object v6, p0

    move-object v8, v6

    move-object v7, p1

    move-object p1, v8

    :goto_1
    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$5:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$6:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->label:I

    invoke-interface {p2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v5, v1, :cond_4

    return-object v1

    :cond_4
    move-object v10, v5

    move-object v5, p0

    move-object p0, p2

    move-object p2, v10

    .line 1527
    :goto_2
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$5:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$6:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v1, :cond_1

    return-object v1

    .line 1529
    :goto_3
    :try_start_4
    invoke-interface {v7, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3109
    invoke-interface {p0, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object p1

    :cond_5
    move-object p2, p1

    move-object p1, v1

    move-object v1, v5

    goto :goto_1

    .line 3107
    :cond_6
    :try_start_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3109
    invoke-interface {v5, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    const/4 p0, 0x0

    .line 1531
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v2, p1

    .line 3112
    :goto_4
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3109
    invoke-interface {v5, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 1527
    :cond_7
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final r(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1560
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 3152
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1560
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v9, p2, Lkotlin/Result$Failure;

    if-nez v9, :cond_2

    :cond_1
    move-object v10, v4

    move-object v4, p0

    move-object p0, v10

    goto/16 :goto_3

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v9, p2, Lkotlin/Result$Failure;

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v2, p0

    move-object p0, v4

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    .line 1561
    new-instance p2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v2, 0x0

    iput v2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v2, 0x0

    .line 3136
    check-cast v2, Ljava/lang/Throwable;

    .line 3139
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4

    move-object v5, p0

    move-object v8, v5

    move-object v7, p1

    move-object p1, v8

    :goto_1
    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$6:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$7:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->label:I

    invoke-interface {v4, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v6, v1, :cond_4

    return-object v1

    :cond_4
    move-object v10, v4

    move-object v4, p0

    move-object p0, v10

    move-object v11, v6

    move-object v6, p2

    move-object p2, v11

    .line 1560
    :goto_2
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$7:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v1, :cond_1

    return-object v1

    .line 1563
    :goto_3
    :try_start_4
    invoke-interface {v7, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p2, v3

    iput p2, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    move-object p2, v6

    goto :goto_1

    .line 3140
    :cond_6
    :try_start_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3142
    invoke-interface {v4, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    .line 1565
    iget p0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p1

    move-object v4, p0

    move-object p0, p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v2, p1

    .line 3145
    :goto_4
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3142
    invoke-interface {v4, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 1560
    :cond_7
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final s(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/lang/Comparable<",
            "-TR;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;

    iget v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;

    invoke-direct {v2, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v3

    .line 1618
    iget v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->label:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    packed-switch v4, :pswitch_data_0

    .line 3220
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1618
    :pswitch_0
    iget-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$7:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Comparable;

    iget-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$6:Ljava/lang/Object;

    iget-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$5:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Throwable;

    iget-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function1;

    iget-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v14, v0, Lkotlin/Result$Failure;

    if-nez v14, :cond_1

    move-object/from16 v16, v13

    move-object v13, v0

    move-object v0, v1

    move-object v1, v5

    move-object v5, v11

    move-object/from16 v11, v16

    :goto_1
    move-object/from16 v17, v12

    move-object v12, v3

    move-object v3, v4

    move-object v4, v9

    move-object/from16 v9, v17

    goto/16 :goto_6

    :cond_1
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$7:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Comparable;

    iget-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$6:Ljava/lang/Object;

    iget-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$5:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Throwable;

    iget-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function1;

    iget-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v14, v0, Lkotlin/Result$Failure;

    if-nez v14, :cond_2

    move-object/from16 v16, v13

    move-object v13, v0

    move-object v0, v1

    move-object v1, v11

    move-object/from16 v11, v16

    goto/16 :goto_5

    :cond_2
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v11

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v1, v11

    goto/16 :goto_8

    :pswitch_2
    iget-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$5:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$3:Ljava/lang/Object;

    move-object v10, v5

    check-cast v10, Ljava/lang/Throwable;

    iget-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    iget-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_2
    instance-of v12, v0, Lkotlin/Result$Failure;

    if-nez v12, :cond_3

    goto/16 :goto_3

    :cond_3
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v1, v5

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move-object v10, v0

    move-object v1, v5

    goto/16 :goto_8

    :pswitch_3
    iget-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$5:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$3:Ljava/lang/Object;

    move-object v10, v9

    check-cast v10, Ljava/lang/Throwable;

    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iget-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_3
    instance-of v13, v0, Lkotlin/Result$Failure;

    if-nez v13, :cond_4

    move-object/from16 v16, v4

    move-object v4, v1

    move-object v1, v9

    move-object v9, v11

    move-object v11, v12

    move-object/from16 v12, v16

    goto :goto_2

    :cond_4
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v9

    goto/16 :goto_9

    :catch_2
    move-exception v0

    move-object v10, v0

    move-object v1, v9

    goto/16 :goto_8

    :pswitch_4
    instance-of v4, v0, Lkotlin/Result$Failure;

    if-nez v4, :cond_c

    .line 3201
    move-object v10, v5

    check-cast v10, Ljava/lang/Throwable;

    .line 1620
    :try_start_4
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v0

    .line 1621
    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$0:Ljava/lang/Object;

    move-object/from16 v4, p1

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$1:Ljava/lang/Object;

    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$2:Ljava/lang/Object;

    iput-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$3:Ljava/lang/Object;

    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$4:Ljava/lang/Object;

    iput-object v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$5:Ljava/lang/Object;

    iput v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->label:I

    invoke-interface {v0, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_5

    return-object v3

    :cond_5
    move-object v11, v1

    move-object v12, v11

    move-object/from16 v16, v4

    move-object v4, v0

    move-object v0, v9

    move-object/from16 v9, v16

    .line 1618
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v0, :cond_6

    .line 3208
    invoke-static {v7}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3209
    invoke-interface {v1, v10}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v7}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v5

    .line 1622
    :cond_6
    :try_start_5
    iput-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$1:Ljava/lang/Object;

    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$2:Ljava/lang/Object;

    iput-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$3:Ljava/lang/Object;

    iput-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$4:Ljava/lang/Object;

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$5:Ljava/lang/Object;

    iput v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->label:I

    invoke-interface {v4, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-ne v0, v3, :cond_7

    return-object v3

    :cond_7
    move-object v5, v1

    move-object v1, v4

    move-object v4, v12

    .line 1623
    :goto_3
    :try_start_6
    invoke-interface {v9, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Comparable;

    .line 1624
    :goto_4
    iput-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$2:Ljava/lang/Object;

    iput-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$3:Ljava/lang/Object;

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$4:Ljava/lang/Object;

    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$5:Ljava/lang/Object;

    iput-object v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$6:Ljava/lang/Object;

    iput-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$7:Ljava/lang/Object;

    iput v7, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->label:I

    invoke-interface {v1, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-ne v13, v3, :cond_8

    return-object v3

    :cond_8
    move-object/from16 v16, v4

    move-object v4, v0

    move-object v0, v12

    move-object v12, v9

    move-object/from16 v9, v16

    move-object/from16 v17, v5

    move-object v5, v1

    move-object/from16 v1, v17

    .line 1618
    :goto_5
    :try_start_7
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1625
    iput-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$0:Ljava/lang/Object;

    iput-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$1:Ljava/lang/Object;

    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$2:Ljava/lang/Object;

    iput-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$3:Ljava/lang/Object;

    iput-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$4:Ljava/lang/Object;

    iput-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$5:Ljava/lang/Object;

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$6:Ljava/lang/Object;

    iput-object v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$7:Ljava/lang/Object;

    const/4 v13, 0x4

    iput v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->label:I

    invoke-interface {v5, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-ne v13, v3, :cond_9

    return-object v3

    :cond_9
    move-object/from16 v16, v5

    move-object v5, v1

    move-object/from16 v1, v16

    goto/16 :goto_1

    .line 1626
    :goto_6
    :try_start_8
    invoke-interface {v9, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Comparable;

    .line 1627
    invoke-interface {v0, v14}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v15
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-gez v15, :cond_a

    move-object v0, v13

    goto :goto_7

    :cond_a
    move-object v14, v0

    move-object v0, v3

    :goto_7
    move-object v3, v12

    move-object v12, v14

    goto :goto_4

    .line 1632
    :cond_b
    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3209
    invoke-interface {v1, v10}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v4

    :catchall_3
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v10, v0

    .line 3212
    :goto_8
    :try_start_9
    throw v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_9
    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3209
    invoke-interface {v1, v10}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw v0

    .line 1618
    :cond_c
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

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

.method public static final t(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/lang/Comparable<",
            "-TR;>;>(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+TR;>;",
            "Lkotlin/coroutines/Continuation<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;

    iget v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->label:I

    const/high16 v4, -0x80000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    iget v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->label:I

    sub-int/2addr v0, v4

    iput v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;

    invoke-direct {v2, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v3

    .line 1667
    iget v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->label:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    packed-switch v4, :pswitch_data_0

    .line 3256
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1667
    :pswitch_0
    iget-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$7:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Comparable;

    iget-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$6:Ljava/lang/Object;

    iget-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$5:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Throwable;

    iget-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function1;

    iget-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v14, v0, Lkotlin/Result$Failure;

    if-nez v14, :cond_1

    move-object/from16 v16, v13

    move-object v13, v0

    move-object v0, v1

    move-object v1, v5

    move-object v5, v11

    move-object/from16 v11, v16

    :goto_1
    move-object/from16 v17, v12

    move-object v12, v3

    move-object v3, v4

    move-object v4, v9

    move-object/from16 v9, v17

    goto/16 :goto_6

    :cond_1
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$7:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Comparable;

    iget-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$6:Ljava/lang/Object;

    iget-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$5:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Throwable;

    iget-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/functions/Function1;

    iget-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v14, v0, Lkotlin/Result$Failure;

    if-nez v14, :cond_2

    move-object/from16 v16, v13

    move-object v13, v0

    move-object v0, v1

    move-object v1, v11

    move-object/from16 v11, v16

    goto/16 :goto_5

    :cond_2
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v11

    goto/16 :goto_9

    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v1, v11

    goto/16 :goto_8

    :pswitch_2
    iget-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$5:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$3:Ljava/lang/Object;

    move-object v10, v5

    check-cast v10, Ljava/lang/Throwable;

    iget-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$1:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/functions/Function1;

    iget-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_2
    instance-of v12, v0, Lkotlin/Result$Failure;

    if-nez v12, :cond_3

    goto/16 :goto_3

    :cond_3
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object v1, v5

    goto/16 :goto_9

    :catch_1
    move-exception v0

    move-object v10, v0

    move-object v1, v5

    goto/16 :goto_8

    :pswitch_3
    iget-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$5:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$3:Ljava/lang/Object;

    move-object v10, v9

    check-cast v10, Ljava/lang/Throwable;

    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iget-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_3
    instance-of v13, v0, Lkotlin/Result$Failure;

    if-nez v13, :cond_4

    move-object/from16 v16, v4

    move-object v4, v1

    move-object v1, v9

    move-object v9, v11

    move-object v11, v12

    move-object/from16 v12, v16

    goto :goto_2

    :cond_4
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v9

    goto/16 :goto_9

    :catch_2
    move-exception v0

    move-object v10, v0

    move-object v1, v9

    goto/16 :goto_8

    :pswitch_4
    instance-of v4, v0, Lkotlin/Result$Failure;

    if-nez v4, :cond_c

    .line 3237
    move-object v10, v5

    check-cast v10, Ljava/lang/Throwable;

    .line 1669
    :try_start_4
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v0

    .line 1670
    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$0:Ljava/lang/Object;

    move-object/from16 v4, p1

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$1:Ljava/lang/Object;

    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$2:Ljava/lang/Object;

    iput-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$3:Ljava/lang/Object;

    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$4:Ljava/lang/Object;

    iput-object v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$5:Ljava/lang/Object;

    iput v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->label:I

    invoke-interface {v0, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v3, :cond_5

    return-object v3

    :cond_5
    move-object v11, v1

    move-object v12, v11

    move-object/from16 v16, v4

    move-object v4, v0

    move-object v0, v9

    move-object/from16 v9, v16

    .line 1667
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v0, :cond_6

    .line 3244
    invoke-static {v7}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3245
    invoke-interface {v1, v10}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v7}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v5

    .line 1671
    :cond_6
    :try_start_5
    iput-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$1:Ljava/lang/Object;

    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$2:Ljava/lang/Object;

    iput-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$3:Ljava/lang/Object;

    iput-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$4:Ljava/lang/Object;

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$5:Ljava/lang/Object;

    iput v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->label:I

    invoke-interface {v4, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-ne v0, v3, :cond_7

    return-object v3

    :cond_7
    move-object v5, v1

    move-object v1, v4

    move-object v4, v12

    .line 1672
    :goto_3
    :try_start_6
    invoke-interface {v9, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Comparable;

    .line 1673
    :goto_4
    iput-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$0:Ljava/lang/Object;

    iput-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$1:Ljava/lang/Object;

    iput-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$2:Ljava/lang/Object;

    iput-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$3:Ljava/lang/Object;

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$4:Ljava/lang/Object;

    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$5:Ljava/lang/Object;

    iput-object v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$6:Ljava/lang/Object;

    iput-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$7:Ljava/lang/Object;

    iput v7, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->label:I

    invoke-interface {v1, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-ne v13, v3, :cond_8

    return-object v3

    :cond_8
    move-object/from16 v16, v4

    move-object v4, v0

    move-object v0, v12

    move-object v12, v9

    move-object/from16 v9, v16

    move-object/from16 v17, v5

    move-object v5, v1

    move-object/from16 v1, v17

    .line 1667
    :goto_5
    :try_start_7
    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 1674
    iput-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$0:Ljava/lang/Object;

    iput-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$1:Ljava/lang/Object;

    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$2:Ljava/lang/Object;

    iput-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$3:Ljava/lang/Object;

    iput-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$4:Ljava/lang/Object;

    iput-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$5:Ljava/lang/Object;

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$6:Ljava/lang/Object;

    iput-object v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$7:Ljava/lang/Object;

    const/4 v13, 0x4

    iput v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->label:I

    invoke-interface {v5, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v13
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-ne v13, v3, :cond_9

    return-object v3

    :cond_9
    move-object/from16 v16, v5

    move-object v5, v1

    move-object/from16 v1, v16

    goto/16 :goto_1

    .line 1675
    :goto_6
    :try_start_8
    invoke-interface {v9, v13}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Comparable;

    .line 1676
    invoke-interface {v0, v14}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v15
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-lez v15, :cond_a

    move-object v0, v13

    goto :goto_7

    :cond_a
    move-object v14, v0

    move-object v0, v3

    :goto_7
    move-object v3, v12

    move-object v12, v14

    goto :goto_4

    .line 1681
    :cond_b
    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3245
    invoke-interface {v1, v10}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v6}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object v4

    :catchall_3
    move-exception v0

    goto :goto_9

    :catch_3
    move-exception v0

    move-object v10, v0

    .line 3248
    :goto_8
    :try_start_9
    throw v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :goto_9
    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3245
    invoke-interface {v1, v10}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v8}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw v0

    .line 1667
    :cond_c
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

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

.method public static final u(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1731
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    .line 3302
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1731
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v9, p2, Lkotlin/Result$Failure;

    if-nez v9, :cond_2

    :cond_1
    move-object v10, p1

    move-object p1, p0

    move-object p0, v5

    move-object v5, v1

    move-object v1, v10

    goto/16 :goto_3

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v9, p2, Lkotlin/Result$Failure;

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v2, p0

    move-object p0, v5

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    const/4 p2, 0x0

    .line 3286
    move-object v2, p2

    check-cast v2, Ljava/lang/Throwable;

    .line 3289
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p2

    move-object v6, p0

    move-object v8, v6

    move-object v7, p1

    move-object p1, v8

    :goto_1
    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$5:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$6:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->label:I

    invoke-interface {p2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v5, v1, :cond_4

    return-object v1

    :cond_4
    move-object v10, v5

    move-object v5, p0

    move-object p0, p2

    move-object p2, v10

    .line 1731
    :goto_2
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$5:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$6:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v1, :cond_1

    return-object v1

    .line 1733
    :goto_3
    :try_start_4
    invoke-interface {v7, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3292
    invoke-interface {p0, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    return-object p1

    :cond_5
    move-object p2, p1

    move-object p1, v1

    move-object v1, v5

    goto :goto_1

    .line 3290
    :cond_6
    :try_start_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3292
    invoke-interface {v5, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    .line 1735
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/Boxing;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v2, p1

    .line 3295
    :goto_4
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3292
    invoke-interface {v5, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 1731
    :cond_7
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final v(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->label:I

    sub-int/2addr p2, v2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 1795
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->label:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 3372
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1795
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v9, p2, Lkotlin/Result$Failure;

    if-nez v9, :cond_2

    :cond_1
    move-object v10, v4

    move-object v4, p0

    move-object p0, v10

    goto/16 :goto_3

    :cond_2
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function1;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v9, p2, Lkotlin/Result$Failure;

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    move-object v2, p0

    move-object p0, v4

    goto/16 :goto_4

    :pswitch_2
    instance-of v2, p2, Lkotlin/Result$Failure;

    if-nez v2, :cond_6

    .line 1796
    new-instance p2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v2, 0x0

    iput v2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v2, 0x0

    .line 3356
    check-cast v2, Ljava/lang/Throwable;

    .line 3359
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4

    move-object v5, p0

    move-object v8, v5

    move-object v7, p1

    move-object p1, v8

    :goto_1
    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$6:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$7:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->label:I

    invoke-interface {v4, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v6, v1, :cond_4

    return-object v1

    :cond_4
    move-object v10, v4

    move-object v4, p0

    move-object p0, v10

    move-object v11, v6

    move-object v6, p2

    move-object p2, v11

    .line 1795
    :goto_2
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$3:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$7:Ljava/lang/Object;

    const/4 p2, 0x2

    iput p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne p2, v1, :cond_1

    return-object v1

    .line 1798
    :goto_3
    :try_start_4
    iget v9, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v7, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    add-int/2addr v9, p2

    iput v9, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object p2, v6

    goto :goto_1

    .line 3360
    :cond_5
    :try_start_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3362
    invoke-interface {v4, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    .line 1800
    iget p0, v6, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/Boxing;->a(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p1

    move-object v4, p0

    move-object p0, p1

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v2, p1

    .line 3365
    :goto_4
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_5
    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3362
    invoke-interface {v4, v2}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v3}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw p0

    .line 1795
    :cond_6
    check-cast p2, Lkotlin/Result$Failure;

    iget-object p0, p2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final w(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Double;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v2

    .line 1813
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 3394
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1813
    :pswitch_0
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$7:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$6:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$5:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$DoubleRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v12, v0, Lkotlin/Result$Failure;

    if-nez v12, :cond_1

    move-object/from16 v16, v7

    move-object v7, v2

    move-object/from16 v2, v16

    goto/16 :goto_3

    :cond_1
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$7:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$6:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$5:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$DoubleRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/functions/Function1;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v12, v0, Lkotlin/Result$Failure;

    if-nez v12, :cond_2

    move-object/from16 v16, v7

    move-object v7, v2

    move-object/from16 v2, v16

    goto :goto_2

    :cond_2
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v7

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v2, v7

    goto/16 :goto_5

    :pswitch_2
    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_6

    .line 1814
    new-instance v0, Lkotlin/jvm/internal/Ref$DoubleRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$DoubleRef;-><init>()V

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    const/4 v3, 0x0

    .line 3378
    move-object v6, v3

    check-cast v6, Ljava/lang/Throwable;

    .line 3381
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v5, p0

    move-object v8, v5

    move-object v11, v8

    move-object/from16 v10, p1

    move-object v7, v2

    move-object v2, v11

    :goto_1
    :try_start_3
    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$0:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$1:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$2:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$3:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$4:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$5:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$6:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$7:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v7, :cond_3

    return-object v7

    :cond_3
    move-object/from16 v16, v9

    move-object v9, v0

    move-object/from16 v0, v16

    .line 1813
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$0:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$1:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$2:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$3:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$4:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$5:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$6:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$7:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_4

    return-object v7

    .line 1816
    :cond_4
    :goto_3
    iget-wide v12, v9, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    invoke-interface {v10, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    const/4 v0, 0x0

    add-double/2addr v12, v14

    iput-wide v12, v9, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    move-object v0, v9

    goto :goto_1

    .line 3382
    :cond_5
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3384
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    .line 1818
    iget-wide v0, v9, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/Boxing;->a(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_4
    move-object v6, v0

    .line 3387
    :goto_5
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :goto_6
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3384
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw v0

    .line 1813
    :cond_6
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final x(Lkotlinx/coroutines/channels/ReceiveChannel;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "+TE;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Pair<",
            "+",
            "Ljava/util/List<",
            "+TE;>;+",
            "Ljava/util/List<",
            "+TE;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->label:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    iget v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->label:I

    sub-int/2addr v0, v3

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v2

    .line 1846
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->label:I

    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    .line 3416
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1846
    :pswitch_0
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_0
    instance-of v13, v0, Lkotlin/Result$Failure;

    if-nez v13, :cond_1

    move-object v14, v9

    move-object v9, v2

    move-object v2, v7

    move-object v7, v5

    move-object v5, v3

    move-object v3, v14

    goto/16 :goto_3

    :cond_1
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/ReceiveChannel;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/util/ArrayList;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$2:Ljava/lang/Object;

    check-cast v10, Ljava/util/ArrayList;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/functions/Function1;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/ReceiveChannel;

    :try_start_1
    instance-of v13, v0, Lkotlin/Result$Failure;

    if-nez v13, :cond_2

    move-object v14, v7

    move-object v7, v2

    move-object v2, v14

    goto :goto_2

    :cond_2
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    move-object v2, v7

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v2, v7

    goto/16 :goto_6

    :pswitch_2
    instance-of v3, v0, Lkotlin/Result$Failure;

    if-nez v3, :cond_7

    .line 1847
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1848
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 3400
    move-object v6, v5

    check-cast v6, Ljava/lang/Throwable;

    .line 3403
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/ReceiveChannel;->a()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v7, p0

    move-object v8, v7

    move-object v12, v8

    move-object/from16 v11, p1

    move-object v9, v2

    move-object v2, v12

    :goto_1
    :try_start_3
    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$1:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$2:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$5:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$6:Ljava/lang/Object;

    iput-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$7:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$8:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->label:I

    invoke-interface {v5, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v9, :cond_3

    return-object v9

    :cond_3
    move-object v14, v10

    move-object v10, v0

    move-object v0, v14

    move-object v15, v9

    move-object v9, v3

    move-object v3, v5

    move-object v5, v7

    move-object v7, v15

    .line 1846
    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$0:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$1:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$2:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$3:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$5:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$6:Ljava/lang/Object;

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$7:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$8:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->label:I

    invoke-interface {v3, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->b(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v7, :cond_4

    return-object v7

    :cond_4
    move-object v14, v5

    move-object v5, v3

    move-object v3, v9

    move-object v9, v7

    move-object v7, v14

    .line 1850
    :goto_3
    invoke-interface {v11, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1851
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1853
    :cond_5
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_4
    move-object v0, v10

    goto :goto_1

    .line 3404
    :cond_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3406
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    .line 1856
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v10, v9}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :catch_1
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_5
    move-object v6, v0

    .line 3409
    :goto_6
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    :goto_7
    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->b(I)V

    .line 3406
    invoke-interface {v2, v6}, Lkotlinx/coroutines/channels/ReceiveChannel;->a(Ljava/lang/Throwable;)Z

    invoke-static {v4}, Lkotlin/jvm/internal/InlineMarker;->c(I)V

    throw v0

    .line 1846
    :cond_7
    check-cast v0, Lkotlin/Result$Failure;

    iget-object v0, v0, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
