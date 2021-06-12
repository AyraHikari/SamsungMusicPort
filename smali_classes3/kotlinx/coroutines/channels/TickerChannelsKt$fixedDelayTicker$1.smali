.class final Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/TickerChannelsKt;->b(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    b = "TickerChannels.kt"
    c = {
        0x6a,
        0x6c,
        0x6d
    }
    d = "fixedDelayTicker"
    e = "kotlinx.coroutines.channels.TickerChannelsKt"
.end annotation


# instance fields
.field J$0:J

.field J$1:J

.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lkotlin/coroutines/Continuation;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iput-object p1, p0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->result:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/channels/TickerChannelsKt;->b(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
