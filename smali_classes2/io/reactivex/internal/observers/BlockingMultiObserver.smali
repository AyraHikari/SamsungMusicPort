.class public final Lio/reactivex/internal/observers/BlockingMultiObserver;
.super Ljava/util/concurrent/CountDownLatch;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/CompletableObserver;
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/SingleObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/CountDownLatch;",
        "Lio/reactivex/CompletableObserver;",
        "Lio/reactivex/MaybeObserver<",
        "TT;>;",
        "Lio/reactivex/SingleObserver<",
        "TT;>;"
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

    .line 40
    invoke-direct {p0, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    .line 44
    iput-boolean v0, p0, Lio/reactivex/internal/observers/BlockingMultiObserver;->d:Z

    .line 45
    iget-object v0, p0, Lio/reactivex/internal/observers/BlockingMultiObserver;->c:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BlockingMultiObserver;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    invoke-static {}, Lio/reactivex/internal/util/BlockingHelper;->a()V

    .line 85
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BlockingMultiObserver;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 87
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BlockingMultiObserver;->a()V

    .line 88
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 91
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/observers/BlockingMultiObserver;->b:Ljava/lang/Throwable;

    if-nez v0, :cond_1

    .line 95
    iget-object v0, p0, Lio/reactivex/internal/observers/BlockingMultiObserver;->a:Ljava/lang/Object;

    return-object v0

    .line 93
    :cond_1
    invoke-static {v0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public onComplete()V
    .locals 0

    .line 73
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BlockingMultiObserver;->countDown()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lio/reactivex/internal/observers/BlockingMultiObserver;->b:Ljava/lang/Throwable;

    .line 68
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BlockingMultiObserver;->countDown()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 53
    iput-object p1, p0, Lio/reactivex/internal/observers/BlockingMultiObserver;->c:Lio/reactivex/disposables/Disposable;

    .line 54
    iget-boolean v0, p0, Lio/reactivex/internal/observers/BlockingMultiObserver;->d:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lio/reactivex/internal/observers/BlockingMultiObserver;->a:Ljava/lang/Object;

    .line 62
    invoke-virtual {p0}, Lio/reactivex/internal/observers/BlockingMultiObserver;->countDown()V

    return-void
.end method
