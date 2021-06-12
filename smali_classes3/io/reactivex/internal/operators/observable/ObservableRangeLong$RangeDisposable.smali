.class final Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;
.super Lio/reactivex/internal/observers/BasicIntQueueDisposable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableRangeLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeDisposable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/internal/observers/BasicIntQueueDisposable<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x580b77479f42190L


# instance fields
.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final end:J

.field fused:Z

.field index:J


# direct methods
.method constructor <init>(Lio/reactivex/Observer;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Lio/reactivex/internal/observers/BasicIntQueueDisposable;-><init>()V

    .line 49
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->downstream:Lio/reactivex/Observer;

    .line 50
    iput-wide p2, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->index:J

    .line 51
    iput-wide p4, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->end:J

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 88
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->end:J

    iput-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->index:J

    const/4 v0, 0x1

    .line 89
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->lazySet(I)V

    return-void
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 94
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->set(I)V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 99
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->get()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 4

    .line 83
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->index:J

    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->end:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public poll()Ljava/lang/Long;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    iget-wide v0, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->index:J

    .line 73
    iget-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->end:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 74
    iput-wide v2, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->index:J

    .line 75
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->lazySet(I)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->poll()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public requestFusion(I)I
    .locals 1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    .line 105
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->fused:Z

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method run()V
    .locals 7

    .line 55
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->fused:Z

    if-eqz v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->downstream:Lio/reactivex/Observer;

    .line 59
    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->end:J

    .line 60
    iget-wide v3, p0, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->index:J

    :goto_0
    cmp-long v5, v3, v1

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->get()I

    move-result v5

    if-nez v5, :cond_1

    .line 61
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v5}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->get()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 64
    invoke-virtual {p0, v1}, Lio/reactivex/internal/operators/observable/ObservableRangeLong$RangeDisposable;->lazySet(I)V

    .line 65
    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    :cond_2
    return-void
.end method
