.class final Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableDoOnEach;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoOnEachObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/functions/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/functions/Action;

.field final e:Lio/reactivex/functions/Action;

.field f:Lio/reactivex/disposables/Disposable;

.field g:Z


# direct methods
.method constructor <init>(Lio/reactivex/Observer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Action;Lio/reactivex/functions/Action;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-TT;>;",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Ljava/lang/Throwable;",
            ">;",
            "Lio/reactivex/functions/Action;",
            "Lio/reactivex/functions/Action;",
            ")V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->a:Lio/reactivex/Observer;

    .line 63
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->b:Lio/reactivex/functions/Consumer;

    .line 64
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->c:Lio/reactivex/functions/Consumer;

    .line 65
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->d:Lio/reactivex/functions/Action;

    .line 66
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->e:Lio/reactivex/functions/Action;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 79
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->f:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->f:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 1

    .line 129
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 133
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->d:Lio/reactivex/functions/Action;

    invoke-interface {v0}, Lio/reactivex/functions/Action;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->g:Z

    .line 141
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->a:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    .line 144
    :try_start_1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->e:Lio/reactivex/functions/Action;

    invoke-interface {v0}, Lio/reactivex/functions/Action;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 146
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 147
    invoke-static {v0}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catch_1
    move-exception v0

    .line 135
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 136
    invoke-virtual {p0, v0}, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 106
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->g:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->g:Z

    .line 112
    :try_start_0
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->c:Lio/reactivex/functions/Consumer;

    invoke-interface {v1, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 114
    invoke-static {v1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 115
    new-instance v2, Lio/reactivex/exceptions/CompositeException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    aput-object v1, v3, v0

    invoke-direct {v2, v3}, Lio/reactivex/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v2

    .line 117
    :goto_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->a:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    .line 120
    :try_start_1
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->e:Lio/reactivex/functions/Action;

    invoke-interface {p1}, Lio/reactivex/functions/Action;->a()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 122
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 123
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 89
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->b:Lio/reactivex/functions/Consumer;

    invoke-interface {v0, p1}, Lio/reactivex/functions/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->a:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p1

    .line 95
    invoke-static {p1}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 96
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->f:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 97
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->f:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->f:Lio/reactivex/disposables/Disposable;

    .line 73
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableDoOnEach$DoOnEachObserver;->a:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method
