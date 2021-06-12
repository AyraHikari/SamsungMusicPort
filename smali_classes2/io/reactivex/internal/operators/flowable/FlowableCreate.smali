.class public final Lio/reactivex/internal/operators/flowable/FlowableCreate;
.super Lio/reactivex/Flowable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;,
        Lio/reactivex/internal/operators/flowable/FlowableCreate$BufferAsyncEmitter;,
        Lio/reactivex/internal/operators/flowable/FlowableCreate$ErrorAsyncEmitter;,
        Lio/reactivex/internal/operators/flowable/FlowableCreate$DropAsyncEmitter;,
        Lio/reactivex/internal/operators/flowable/FlowableCreate$NoOverflowBaseAsyncEmitter;,
        Lio/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter;,
        Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;,
        Lio/reactivex/internal/operators/flowable/FlowableCreate$SerializedEmitter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Flowable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final b:Lio/reactivex/FlowableOnSubscribe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/FlowableOnSubscribe<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/BackpressureStrategy;


# virtual methods
.method public a(Lorg/reactivestreams/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 46
    sget-object v0, Lio/reactivex/internal/operators/flowable/FlowableCreate$1;->a:[I

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate;->c:Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v1}, Lio/reactivex/BackpressureStrategy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 64
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCreate$BufferAsyncEmitter;

    invoke-static {}, Lio/reactivex/internal/operators/flowable/FlowableCreate;->a()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BufferAsyncEmitter;-><init>(Lorg/reactivestreams/Subscriber;I)V

    goto :goto_0

    .line 60
    :pswitch_0
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$LatestAsyncEmitter;-><init>(Lorg/reactivestreams/Subscriber;)V

    goto :goto_0

    .line 56
    :pswitch_1
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCreate$DropAsyncEmitter;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$DropAsyncEmitter;-><init>(Lorg/reactivestreams/Subscriber;)V

    goto :goto_0

    .line 52
    :pswitch_2
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCreate$ErrorAsyncEmitter;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$ErrorAsyncEmitter;-><init>(Lorg/reactivestreams/Subscriber;)V

    goto :goto_0

    .line 48
    :pswitch_3
    new-instance v0, Lio/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter;

    invoke-direct {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$MissingEmitter;-><init>(Lorg/reactivestreams/Subscriber;)V

    .line 69
    :goto_0
    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 71
    :try_start_0
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableCreate;->b:Lio/reactivex/FlowableOnSubscribe;

    invoke-interface {p1, v0}, Lio/reactivex/FlowableOnSubscribe;->a(Lio/reactivex/FlowableEmitter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 73
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 74
    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableCreate$BaseEmitter;->onError(Ljava/lang/Throwable;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
