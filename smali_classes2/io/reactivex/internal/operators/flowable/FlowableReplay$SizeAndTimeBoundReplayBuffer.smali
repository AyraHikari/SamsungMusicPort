.class final Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;
.super Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeAndTimeBoundReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2ffd21f3bea38aacL


# instance fields
.field final limit:I

.field final maxAge:J

.field final scheduler:Lio/reactivex/Scheduler;

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 0

    .line 987
    invoke-direct {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$BoundedReplayBuffer;-><init>()V

    .line 988
    iput-object p5, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    .line 989
    iput p1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->limit:I

    .line 990
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->maxAge:J

    .line 991
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method enterTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 996
    new-instance v0, Lio/reactivex/schedulers/Timed;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p1, v1, v2, v3}, Lio/reactivex/schedulers/Timed;-><init>(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method getHead()Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;
    .locals 7

    .line 1069
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v0, v2

    .line 1070
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    .line 1071
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    :goto_0
    move-object v6, v3

    move-object v3, v2

    move-object v2, v6

    if-nez v2, :cond_0

    goto :goto_1

    .line 1076
    :cond_0
    iget-object v4, v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->value:Ljava/lang/Object;

    check-cast v4, Lio/reactivex/schedulers/Timed;

    .line 1077
    invoke-virtual {v4}, Lio/reactivex/schedulers/Timed;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lio/reactivex/schedulers/Timed;->a()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 1080
    :cond_1
    invoke-virtual {v4}, Lio/reactivex/schedulers/Timed;->b()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gtz v4, :cond_2

    .line 1082
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    goto :goto_0

    :cond_2
    :goto_1
    return-object v3
.end method

.method leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1001
    check-cast p1, Lio/reactivex/schedulers/Timed;

    invoke-virtual {p1}, Lio/reactivex/schedulers/Timed;->a()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method truncate()V
    .locals 8

    .line 1006
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v0, v2

    .line 1008
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    .line 1009
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    const/4 v4, 0x0

    :goto_0
    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    if-eqz v2, :cond_1

    .line 1014
    iget v5, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    iget v6, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->limit:I

    if-le v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 1016
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1018
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    goto :goto_0

    .line 1020
    :cond_0
    iget-object v5, v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->value:Ljava/lang/Object;

    check-cast v5, Lio/reactivex/schedulers/Timed;

    .line 1021
    invoke-virtual {v5}, Lio/reactivex/schedulers/Timed;->b()J

    move-result-wide v5

    cmp-long v5, v5, v0

    if-gtz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 1023
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1025
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    .line 1035
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->setFirst(Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;)V

    :cond_2
    return-void
.end method

.method truncateFinal()V
    .locals 10

    .line 1041
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v0, v2

    .line 1043
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    .line 1044
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    const/4 v4, 0x0

    :goto_0
    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    if-eqz v2, :cond_0

    .line 1048
    iget v5, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 1049
    iget-object v5, v2, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->value:Ljava/lang/Object;

    check-cast v5, Lio/reactivex/schedulers/Timed;

    .line 1050
    invoke-virtual {v5}, Lio/reactivex/schedulers/Timed;->b()J

    move-result-wide v7

    cmp-long v5, v7, v0

    if-gtz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    .line 1052
    iget v3, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    sub-int/2addr v3, v6

    iput v3, p0, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1054
    invoke-virtual {v2}, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 1063
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/flowable/FlowableReplay$SizeAndTimeBoundReplayBuffer;->setFirst(Lio/reactivex/internal/operators/flowable/FlowableReplay$Node;)V

    :cond_1
    return-void
.end method
