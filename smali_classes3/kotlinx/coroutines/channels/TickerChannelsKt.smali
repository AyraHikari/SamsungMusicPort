.class public final Lkotlinx/coroutines/channels/TickerChannelsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static final synthetic a(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-wide/from16 v0, p2

    move-object/from16 v2, p5

    instance-of v3, v2, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;

    iget v4, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    iget v2, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    sub-int/2addr v2, v5

    iput v2, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;

    invoke-direct {v3, v2}, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v2, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v4

    .line 78
    iget v5, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    packed-switch v5, :pswitch_data_0

    .line 86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :pswitch_0
    iget-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$5:J

    iget-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$4:J

    iget-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$3:J

    iget-wide v5, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    iget-object v7, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/SendChannel;

    iget-wide v8, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iget-wide v10, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    instance-of v12, v2, Lkotlin/Result$Failure;

    if-nez v12, :cond_1

    goto :goto_1

    :cond_1
    check-cast v2, Lkotlin/Result$Failure;

    iget-object v0, v2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    :pswitch_1
    iget-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$6:J

    iget-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$5:J

    iget-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$4:J

    iget-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$3:J

    iget-wide v5, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    iget-object v7, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/SendChannel;

    iget-wide v8, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iget-wide v10, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    instance-of v12, v2, Lkotlin/Result$Failure;

    if-nez v12, :cond_2

    :goto_1
    move-object v2, v7

    goto/16 :goto_5

    :cond_2
    check-cast v2, Lkotlin/Result$Failure;

    iget-object v0, v2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    :pswitch_2
    iget-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$3:J

    iget-wide v5, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    iget-object v7, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/SendChannel;

    iget-wide v8, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iget-wide v10, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    instance-of v12, v2, Lkotlin/Result$Failure;

    if-nez v12, :cond_3

    goto/16 :goto_4

    :cond_3
    check-cast v2, Lkotlin/Result$Failure;

    iget-object v0, v2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    :pswitch_3
    iget-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    iget-object v5, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/SendChannel;

    iget-wide v6, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iget-wide v8, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    instance-of v10, v2, Lkotlin/Result$Failure;

    if-nez v10, :cond_4

    move-object v2, v5

    move-wide/from16 v25, v0

    move-wide v0, v6

    move-wide/from16 v5, v25

    goto :goto_2

    :cond_4
    check-cast v2, Lkotlin/Result$Failure;

    iget-object v0, v2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw v0

    :pswitch_4
    instance-of v5, v2, Lkotlin/Result$Failure;

    if-nez v5, :cond_a

    .line 83
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/TimeSource;->a()J

    move-result-wide v5

    invoke-static/range {p2 .. p3}, Lkotlinx/coroutines/EventLoopKt;->a(J)J

    move-result-wide v7

    add-long/2addr v5, v7

    move-wide/from16 v8, p0

    .line 84
    iput-wide v8, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iput-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    move-object/from16 v2, p4

    iput-object v2, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    iput-wide v5, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    const/4 v7, 0x1

    iput v7, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    invoke-static {v0, v1, v3}, Lkotlinx/coroutines/DelayKt;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_5

    return-object v4

    .line 85
    :cond_5
    :goto_2
    invoke-static {v8, v9}, Lkotlinx/coroutines/EventLoopKt;->a(J)J

    move-result-wide v10

    :goto_3
    const/4 v7, 0x0

    add-long/2addr v5, v10

    .line 88
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    iput-wide v8, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iput-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iput-object v2, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    iput-wide v5, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    iput-wide v10, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$3:J

    const/4 v12, 0x2

    iput v12, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    invoke-interface {v2, v7, v3}, Lkotlinx/coroutines/channels/SendChannel;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_6

    return-object v4

    :cond_6
    move-object v7, v2

    move-wide/from16 v25, v0

    move-wide v0, v10

    move-wide v10, v8

    move-wide/from16 v8, v25

    .line 89
    :goto_4
    invoke-static {}, Lkotlinx/coroutines/TimeSourceKt;->a()Lkotlinx/coroutines/TimeSource;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/coroutines/TimeSource;->a()J

    move-result-wide v12

    sub-long v14, v5, v12

    move-object/from16 v18, v7

    move-wide/from16 v16, v8

    const-wide/16 v7, 0x0

    .line 90
    invoke-static {v14, v15, v7, v8}, Lkotlin/ranges/RangesKt;->a(JJ)J

    move-result-wide v14

    cmp-long v2, v14, v7

    if-nez v2, :cond_8

    cmp-long v2, v0, v7

    if-eqz v2, :cond_8

    sub-long v5, v12, v5

    .line 92
    rem-long/2addr v5, v0

    sub-long v5, v0, v5

    add-long v7, v12, v5

    move-wide/from16 v19, v14

    .line 94
    invoke-static {v5, v6}, Lkotlinx/coroutines/EventLoopKt;->b(J)J

    move-result-wide v14

    iput-wide v10, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    move-wide/from16 v21, v10

    move-wide/from16 v9, v16

    iput-wide v9, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    move-object/from16 v2, v18

    iput-object v2, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    iput-wide v7, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    iput-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$3:J

    iput-wide v12, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$4:J

    move-wide/from16 v11, v19

    iput-wide v11, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$5:J

    iput-wide v5, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$6:J

    const/4 v5, 0x3

    iput v5, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    invoke-static {v14, v15, v3}, Lkotlinx/coroutines/DelayKt;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_7

    return-object v4

    :cond_7
    move-wide v5, v7

    move-wide v8, v9

    move-wide/from16 v10, v21

    :goto_5
    move-wide/from16 v25, v8

    move-wide v8, v10

    move-wide v10, v0

    move-wide/from16 v0, v25

    goto :goto_3

    :cond_8
    move-wide/from16 v21, v10

    move-wide v7, v14

    move-wide/from16 v9, v16

    move-object/from16 v2, v18

    .line 96
    invoke-static {v7, v8}, Lkotlinx/coroutines/EventLoopKt;->b(J)J

    move-result-wide v14

    move-wide/from16 v23, v14

    move-wide/from16 v14, v21

    iput-wide v14, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iput-wide v9, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iput-object v2, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    iput-wide v5, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    iput-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$3:J

    iput-wide v12, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$4:J

    iput-wide v7, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$5:J

    const/4 v7, 0x4

    iput v7, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    move-wide/from16 v7, v23

    invoke-static {v7, v8, v3}, Lkotlinx/coroutines/DelayKt;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v4, :cond_9

    return-object v4

    :cond_9
    move-wide v8, v9

    move-wide v10, v14

    goto :goto_5

    .line 78
    :cond_a
    check-cast v2, Lkotlin/Result$Failure;

    iget-object v0, v2, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

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

.method static final synthetic b(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;

    iget v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget p5, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    sub-int/2addr p5, v2

    iput p5, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;

    invoke-direct {v0, p5}, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;-><init>(Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p5, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->a()Ljava/lang/Object;

    move-result-object v1

    .line 101
    iget v2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    packed-switch v2, :pswitch_data_0

    .line 107
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :pswitch_0
    iget-object p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/SendChannel;

    iget-wide p1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$1:J

    iget-wide p3, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    instance-of v2, p5, Lkotlin/Result$Failure;

    if-nez v2, :cond_2

    :cond_1
    move-wide v3, p3

    move-object p4, p0

    move-wide p2, p1

    move-wide p0, v3

    goto :goto_1

    :cond_2
    check-cast p5, Lkotlin/Result$Failure;

    iget-object p0, p5, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_1
    iget-object p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/SendChannel;

    iget-wide p1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$1:J

    iget-wide p3, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    instance-of v2, p5, Lkotlin/Result$Failure;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    check-cast p5, Lkotlin/Result$Failure;

    iget-object p0, p5, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    move-object p4, p0

    check-cast p4, Lkotlinx/coroutines/channels/SendChannel;

    iget-wide p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$1:J

    iget-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    instance-of v2, p5, Lkotlin/Result$Failure;

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    check-cast p5, Lkotlin/Result$Failure;

    iget-object p0, p5, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_3
    instance-of v2, p5, Lkotlin/Result$Failure;

    if-nez v2, :cond_7

    .line 106
    iput-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    iput-wide p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$1:J

    iput-object p4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    const/4 p5, 0x1

    iput p5, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    invoke-static {p2, p3, v0}, Lkotlinx/coroutines/DelayKt;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_5

    return-object v1

    .line 108
    :cond_5
    :goto_1
    sget-object p5, Lkotlin/Unit;->a:Lkotlin/Unit;

    iput-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    iput-wide p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$1:J

    iput-object p4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    invoke-interface {p4, p5, v0}, Lkotlinx/coroutines/channels/SendChannel;->a(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_6

    return-object v1

    :cond_6
    move-wide v3, p0

    move-object p0, p4

    move-wide p1, p2

    move-wide p3, v3

    .line 109
    :goto_2
    iput-wide p3, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    iput-wide p1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$1:J

    iput-object p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    const/4 p5, 0x3

    iput p5, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    invoke-static {p3, p4, v0}, Lkotlinx/coroutines/DelayKt;->a(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_1

    return-object v1

    .line 101
    :cond_7
    check-cast p5, Lkotlin/Result$Failure;

    iget-object p0, p5, Lkotlin/Result$Failure;->exception:Ljava/lang/Throwable;

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
