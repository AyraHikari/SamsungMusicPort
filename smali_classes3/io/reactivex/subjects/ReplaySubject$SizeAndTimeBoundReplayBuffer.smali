.class final Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/subjects/ReplaySubject$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/subjects/ReplaySubject;
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
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/subjects/ReplaySubject$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6fcd9699e42b76b5L


# instance fields
.field volatile done:Z

.field volatile head:Lio/reactivex/subjects/ReplaySubject$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject$TimedNode<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final maxAge:J

.field final maxSize:I

.field final scheduler:Lio/reactivex/Scheduler;

.field size:I

.field tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/ReplaySubject$TimedNode<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)V
    .locals 1

    .line 1053
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    const-string v0, "maxSize"

    .line 1054
    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->a(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxSize:I

    const-string p1, "maxAge"

    .line 1055
    invoke-static {p2, p3, p1}, Lio/reactivex/internal/functions/ObjectHelper;->a(JLjava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxAge:J

    const-string p1, "unit is null"

    .line 1056
    invoke-static {p4, p1}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/TimeUnit;

    iput-object p1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    const-string p1, "scheduler is null"

    .line 1057
    invoke-static {p5, p1}, Lio/reactivex/internal/functions/ObjectHelper;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/Scheduler;

    iput-object p1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    .line 1058
    new-instance p1, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    const/4 p2, 0x0

    const-wide/16 p3, 0x0

    invoke-direct {p1, p2, p3, p4}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 1059
    iput-object p1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1060
    iput-object p1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1125
    new-instance v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 1126
    iget-object p1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1128
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1129
    iget v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1130
    invoke-virtual {p1, v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->set(Ljava/lang/Object;)V

    .line 1132
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->trim()V

    return-void
.end method

.method public addFinal(Ljava/lang/Object;)V
    .locals 3

    .line 1137
    new-instance v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 1138
    iget-object p1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1140
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->tail:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1141
    iget v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1142
    invoke-virtual {p1, v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->lazySet(Ljava/lang/Object;)V

    .line 1143
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->trimFinal()V

    .line 1145
    iput-boolean v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->done:Z

    return-void
.end method

.method getHead()Lio/reactivex/subjects/ReplaySubject$TimedNode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/subjects/ReplaySubject$TimedNode<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1195
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1197
    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2}, Lio/reactivex/Scheduler;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    iget-wide v3, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v1, v3

    .line 1198
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    :goto_0
    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    if-eqz v0, :cond_1

    .line 1200
    iget-wide v4, v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;->time:J

    cmp-long v4, v4, v1

    if-lez v4, :cond_0

    goto :goto_1

    .line 1205
    :cond_0
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v3
.end method

.method public getValue()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1167
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    const/4 v1, 0x0

    move-object v2, v1

    .line 1170
    :goto_0
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    if-nez v3, :cond_4

    .line 1178
    iget-object v3, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v4, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4}, Lio/reactivex/Scheduler;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    iget-wide v5, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v3, v5

    .line 1179
    iget-wide v5, v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;->time:J

    cmp-long v3, v5, v3

    if-gez v3, :cond_0

    return-object v1

    .line 1183
    :cond_0
    iget-object v0, v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    if-nez v0, :cond_1

    return-object v1

    .line 1187
    :cond_1
    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    .line 1188
    :cond_3
    :goto_1
    iget-object v0, v2, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    return-object v0

    :cond_4
    move-object v2, v0

    move-object v0, v3

    goto :goto_0
.end method

.method public getValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .line 1213
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/subjects/ReplaySubject$TimedNode;

    move-result-object v0

    .line 1214
    invoke-virtual {p0, v0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size(Lio/reactivex/subjects/ReplaySubject$TimedNode;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 1217
    array-length v0, p1

    if-eqz v0, :cond_3

    .line 1218
    aput-object v2, p1, v3

    goto :goto_1

    .line 1221
    :cond_0
    array-length v4, p1

    if-ge v4, v1, :cond_1

    .line 1222
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_1
    :goto_0
    if-eq v3, v1, :cond_2

    .line 1227
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1228
    iget-object v4, v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    aput-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1232
    :cond_2
    array-length v0, p1

    if-le v0, v1, :cond_3

    .line 1233
    aput-object v2, p1, v1

    :cond_3
    :goto_1
    return-object p1
.end method

.method public replay(Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/ReplaySubject$ReplayDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 1243
    invoke-virtual {p1}, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1248
    :cond_0
    iget-object v0, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->downstream:Lio/reactivex/Observer;

    .line 1250
    iget-object v1, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    check-cast v1, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1252
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/subjects/ReplaySubject$TimedNode;

    move-result-object v1

    :cond_1
    const/4 v3, 0x1

    .line 1257
    :cond_2
    :goto_0
    iget-boolean v4, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 1258
    iput-object v5, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    return-void

    .line 1263
    :cond_3
    :goto_1
    iget-boolean v4, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    if-eqz v4, :cond_4

    .line 1264
    iput-object v5, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    return-void

    .line 1268
    :cond_4
    invoke-virtual {v1}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    if-nez v4, :cond_6

    .line 1295
    invoke-virtual {v1}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    goto :goto_0

    .line 1299
    :cond_5
    iput-object v1, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    neg-int v3, v3

    .line 1301
    invoke-virtual {p1, v3}, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_2

    return-void

    .line 1274
    :cond_6
    iget-object v1, v4, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    .line 1276
    iget-boolean v6, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->done:Z

    if-eqz v6, :cond_8

    .line 1277
    invoke-virtual {v4}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_8

    .line 1279
    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1280
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    goto :goto_2

    .line 1282
    :cond_7
    invoke-static {v1}, Lio/reactivex/internal/util/NotificationLite;->getError(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 1284
    :goto_2
    iput-object v5, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->index:Ljava/lang/Object;

    .line 1285
    iput-boolean v2, p1, Lio/reactivex/subjects/ReplaySubject$ReplayDisposable;->cancelled:Z

    return-void

    .line 1290
    :cond_8
    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    move-object v1, v4

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .line 1310
    invoke-virtual {p0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->getHead()Lio/reactivex/subjects/ReplaySubject$TimedNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size(Lio/reactivex/subjects/ReplaySubject$TimedNode;)I

    move-result v0

    return v0
.end method

.method size(Lio/reactivex/subjects/ReplaySubject$TimedNode;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/ReplaySubject$TimedNode<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const v1, 0x7fffffff

    if-eq v0, v1, :cond_2

    .line 1316
    invoke-virtual {p1}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    if-nez v1, :cond_1

    .line 1318
    iget-object p1, p1, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    .line 1319
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->isComplete(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->isError(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move-object p1, v1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method trim()V
    .locals 6

    .line 1064
    iget v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    iget v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxSize:I

    if-le v0, v1, :cond_0

    .line 1065
    iget v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1066
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1067
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1069
    :cond_0
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v0, v2

    .line 1071
    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1074
    :goto_0
    invoke-virtual {v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    if-nez v3, :cond_1

    .line 1076
    iput-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    goto :goto_1

    .line 1080
    :cond_1
    iget-wide v4, v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;->time:J

    cmp-long v4, v4, v0

    if-lez v4, :cond_2

    .line 1081
    iput-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    :goto_1
    return-void

    :cond_2
    move-object v2, v3

    goto :goto_0
.end method

.method trimFinal()V
    .locals 10

    .line 1091
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->scheduler:Lio/reactivex/Scheduler;

    iget-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->maxAge:J

    sub-long/2addr v0, v2

    .line 1093
    iget-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1096
    :goto_0
    invoke-virtual {v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1097
    invoke-virtual {v3}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-nez v4, :cond_1

    .line 1098
    iget-object v0, v2, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1099
    new-instance v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    invoke-direct {v0, v7, v5, v6}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 1100
    invoke-virtual {v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->lazySet(Ljava/lang/Object;)V

    .line 1101
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    goto :goto_1

    .line 1103
    :cond_0
    iput-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    goto :goto_1

    .line 1108
    :cond_1
    iget-wide v8, v3, Lio/reactivex/subjects/ReplaySubject$TimedNode;->time:J

    cmp-long v4, v8, v0

    if-lez v4, :cond_3

    .line 1109
    iget-object v0, v2, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1110
    new-instance v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    invoke-direct {v0, v7, v5, v6}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 1111
    invoke-virtual {v2}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->lazySet(Ljava/lang/Object;)V

    .line 1112
    iput-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    goto :goto_1

    .line 1114
    :cond_2
    iput-object v2, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    :goto_1
    return-void

    :cond_3
    move-object v2, v3

    goto :goto_0
.end method

.method public trimHead()V
    .locals 5

    .line 1154
    iget-object v0, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    .line 1155
    iget-object v1, v0, Lio/reactivex/subjects/ReplaySubject$TimedNode;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 1156
    new-instance v1, Lio/reactivex/subjects/ReplaySubject$TimedNode;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lio/reactivex/subjects/ReplaySubject$TimedNode;-><init>(Ljava/lang/Object;J)V

    .line 1157
    invoke-virtual {v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lio/reactivex/subjects/ReplaySubject$TimedNode;->lazySet(Ljava/lang/Object;)V

    .line 1158
    iput-object v1, p0, Lio/reactivex/subjects/ReplaySubject$SizeAndTimeBoundReplayBuffer;->head:Lio/reactivex/subjects/ReplaySubject$TimedNode;

    :cond_0
    return-void
.end method
