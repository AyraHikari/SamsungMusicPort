.class public abstract Lio/reactivex/internal/observers/BlockingBaseObserver;
.super Ljava/util/concurrent/CountDownLatch;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountDownLatch;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field b:Ljava/lang/Throwable;

.field c:Lio/reactivex/disposables/Disposable;

.field volatile d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 32
    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BlockingBaseObserver;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 70
    :try_start_0
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->a()V

    .line 71
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BlockingBaseObserver;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BlockingBaseObserver;->dispose()V

    .line 74
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 78
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/observers/BlockingBaseObserver;->b:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 82
    iget-object v0, p0, Lio/reactivex/internal/observers/BlockingBaseObserver;->a:Ljava/lang/Object;

    return-object v0

    .line 80
    :cond_1
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lio/reactivex/internal/observers/BlockingBaseObserver;->d:Z

    .line 51
    iget-object v0, p0, Lio/reactivex/internal/observers/BlockingBaseObserver;->c:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 59
    iget-boolean v0, p0, Lio/reactivex/internal/observers/BlockingBaseObserver;->d:Z

    return v0
.end method

.method public final onComplete()V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BlockingBaseObserver;->countDown()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 37
    iput-object p1, p0, Lio/reactivex/internal/observers/BlockingBaseObserver;->c:Lio/reactivex/disposables/Disposable;

    .line 38
    iget-boolean v0, p0, Lio/reactivex/internal/observers/BlockingBaseObserver;->d:Z

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method
