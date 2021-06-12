.class final Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;
.super Lio/reactivex/subscribers/DisposableSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DebounceInnerSubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/subscribers/DisposableSubscriber<",
        "TU;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber<",
            "TT;TU;>;"
        }
    .end annotation
.end field

.field final b:J

.field final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field d:Z

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;JLjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber<",
            "TT;TU;>;JTT;)V"
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Lio/reactivex/subscribers/DisposableSubscriber;-><init>()V

    .line 161
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 164
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;->a:Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;

    .line 165
    iput-wide p2, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;->b:J

    .line 166
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .line 180
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;->a:Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;

    iget-wide v1, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;->b:J

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;->c:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->emit(JLjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 1

    .line 197
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 200
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;->d:Z

    .line 201
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;->a()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 187
    iget-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;->d:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;->d:Z

    .line 192
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;->a:Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    .line 171
    iget-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;->d:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 174
    iput-boolean p1, p0, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;->d:Z

    .line 175
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;->c()V

    .line 176
    invoke-virtual {p0}, Lio/reactivex/internal/operators/flowable/FlowableDebounce$DebounceSubscriber$DebounceInnerSubscriber;->a()V

    return-void
.end method
