.class final Lretrofit2/adapter/rxjava2/CallExecuteObservable;
.super Lio/reactivex/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/adapter/rxjava2/CallExecuteObservable$CallDisposable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/Observable<",
        "Lretrofit2/Response<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lretrofit2/Call<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lretrofit2/Call;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lio/reactivex/Observable;-><init>()V

    .line 31
    iput-object p1, p0, Lretrofit2/adapter/rxjava2/CallExecuteObservable;->a:Lretrofit2/Call;

    return-void
.end method


# virtual methods
.method protected a(Lio/reactivex/Observer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Lretrofit2/Response<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lretrofit2/adapter/rxjava2/CallExecuteObservable;->a:Lretrofit2/Call;

    invoke-interface {v0}, Lretrofit2/Call;->d()Lretrofit2/Call;

    move-result-object v0

    .line 37
    new-instance v1, Lretrofit2/adapter/rxjava2/CallExecuteObservable$CallDisposable;

    invoke-direct {v1, v0}, Lretrofit2/adapter/rxjava2/CallExecuteObservable$CallDisposable;-><init>(Lretrofit2/Call;)V

    invoke-interface {p1, v1}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    :try_start_0
    invoke-interface {v0}, Lretrofit2/Call;->a()Lretrofit2/Response;

    move-result-object v3

    .line 42
    invoke-interface {v0}, Lretrofit2/Call;->c()Z

    move-result v4

    if-nez v4, :cond_0

    .line 43
    invoke-interface {p1, v3}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 45
    :cond_0
    invoke-interface {v0}, Lretrofit2/Call;->c()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_2

    .line 47
    :try_start_1
    invoke-interface {p1}, Lio/reactivex/Observer;->onComplete()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const/4 v4, 0x1

    goto :goto_0

    :catch_1
    move-exception v3

    const/4 v4, 0x0

    .line 50
    :goto_0
    invoke-static {v3}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    if-eqz v4, :cond_1

    .line 52
    invoke-static {v3}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 53
    :cond_1
    invoke-interface {v0}, Lretrofit2/Call;->c()Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    :try_start_2
    invoke-interface {p1, v3}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    .line 57
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 58
    new-instance v0, Lio/reactivex/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    aput-object v3, v4, v2

    aput-object p1, v4, v1

    invoke-direct {v0, v4}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method
