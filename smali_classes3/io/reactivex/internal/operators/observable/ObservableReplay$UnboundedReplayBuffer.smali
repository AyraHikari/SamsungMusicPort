.class final Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;
.super Ljava/util/ArrayList;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnboundedReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/internal/operators/observable/ObservableReplay$ReplayBuffer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x62057d556fa2a2d8L


# instance fields
.field volatile size:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 509
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method


# virtual methods
.method public complete()V
    .locals 1

    .line 526
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 527
    iget v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;->size:I

    return-void
.end method

.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 520
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 521
    iget p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;->size:I

    return-void
.end method

.method public next(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 514
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;->add(Ljava/lang/Object;)Z

    .line 515
    iget p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;->size:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;->size:I

    return-void
.end method

.method public replay(Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 532
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 536
    :cond_0
    iget-object v0, p1, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->child:Lio/reactivex/Observer;

    const/4 v1, 0x1

    .line 541
    :cond_1
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->isDisposed()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 544
    :cond_2
    iget v2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;->size:I

    .line 546
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->index()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    .line 547
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_6

    .line 550
    invoke-virtual {p0, v3}, Lio/reactivex/internal/operators/observable/ObservableReplay$UnboundedReplayBuffer;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 551
    invoke-static {v4, v0}, Lio/reactivex/internal/util/NotificationLite;->accept(Ljava/lang/Object;Lio/reactivex/Observer;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    .line 554
    :cond_4
    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->isDisposed()Z

    move-result v4

    if-eqz v4, :cond_5

    return-void

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 560
    :cond_6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p1, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->index:Ljava/lang/Object;

    neg-int v1, v1

    .line 561
    invoke-virtual {p1, v1}, Lio/reactivex/internal/operators/observable/ObservableReplay$InnerDisposable;->addAndGet(I)I

    move-result v1

    if-nez v1, :cond_1

    return-void
.end method
