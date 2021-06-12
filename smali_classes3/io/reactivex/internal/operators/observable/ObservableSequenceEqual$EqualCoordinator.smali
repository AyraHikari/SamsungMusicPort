.class final Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSequenceEqual;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EqualCoordinator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x55bcb3aaa8a061f8L


# instance fields
.field volatile cancelled:Z

.field final comparer:Lio/reactivex/functions/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/BiPredicate<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final downstream:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final first:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver<",
            "TT;>;"
        }
    .end annotation
.end field

.field final resources:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

.field final second:Lio/reactivex/ObservableSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation
.end field

.field v1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field v2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/Observer;ILio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiPredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-",
            "Ljava/lang/Boolean;",
            ">;I",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;",
            "Lio/reactivex/functions/BiPredicate<",
            "-TT;-TT;>;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 65
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->downstream:Lio/reactivex/Observer;

    .line 66
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->first:Lio/reactivex/ObservableSource;

    .line 67
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->second:Lio/reactivex/ObservableSource;

    .line 68
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->comparer:Lio/reactivex/functions/BiPredicate;

    const/4 p1, 0x2

    .line 70
    new-array p3, p1, [Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    .line 71
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    .line 72
    new-instance p4, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5, p2}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;II)V

    aput-object p4, p3, p5

    .line 73
    new-instance p4, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    const/4 p5, 0x1

    invoke-direct {p4, p0, p5, p2}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;II)V

    aput-object p4, p3, p5

    .line 74
    new-instance p2, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-direct {p2, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;-><init>(I)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->resources:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    return-void
.end method


# virtual methods
.method cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TT;>;",
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancelled:Z

    .line 108
    invoke-virtual {p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 109
    invoke-virtual {p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    return-void
.end method

.method public dispose()V
    .locals 3

    .line 89
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancelled:Z

    .line 91
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->resources:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    .line 93
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_0

    .line 94
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    const/4 v2, 0x0

    .line 95
    aget-object v2, v1, v2

    iget-object v2, v2, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->b:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 96
    aget-object v0, v1, v0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->b:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    :cond_0
    return-void
.end method

.method drain()V
    .locals 12

    .line 113
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    const/4 v1, 0x0

    .line 120
    aget-object v2, v0, v1

    .line 121
    iget-object v3, v2, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->b:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    const/4 v4, 0x1

    .line 122
    aget-object v0, v0, v4

    .line 123
    iget-object v5, v0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->b:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    const/4 v6, 0x1

    .line 128
    :cond_1
    iget-boolean v7, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancelled:Z

    if-eqz v7, :cond_2

    .line 129
    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 130
    invoke-virtual {v5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    return-void

    .line 134
    :cond_2
    iget-boolean v7, v2, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->d:Z

    if-eqz v7, :cond_3

    .line 137
    iget-object v8, v2, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->e:Ljava/lang/Throwable;

    if-eqz v8, :cond_3

    .line 139
    invoke-virtual {p0, v3, v5}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 141
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, v8}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 146
    :cond_3
    iget-boolean v8, v0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->d:Z

    if-eqz v8, :cond_4

    .line 148
    iget-object v9, v0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;->e:Ljava/lang/Throwable;

    if-eqz v9, :cond_4

    .line 150
    invoke-virtual {p0, v3, v5}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 152
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0, v9}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 157
    :cond_4
    iget-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v1:Ljava/lang/Object;

    if-nez v9, :cond_5

    .line 158
    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v1:Ljava/lang/Object;

    .line 160
    :cond_5
    iget-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v1:Ljava/lang/Object;

    if-nez v9, :cond_6

    const/4 v9, 0x1

    goto :goto_0

    :cond_6
    const/4 v9, 0x0

    .line 162
    :goto_0
    iget-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v2:Ljava/lang/Object;

    if-nez v10, :cond_7

    .line 163
    invoke-virtual {v5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v10

    iput-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v2:Ljava/lang/Object;

    .line 165
    :cond_7
    iget-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v2:Ljava/lang/Object;

    if-nez v10, :cond_8

    const/4 v10, 0x1

    goto :goto_1

    :cond_8
    const/4 v10, 0x0

    :goto_1
    if-eqz v7, :cond_9

    if-eqz v8, :cond_9

    if-eqz v9, :cond_9

    if-eqz v10, :cond_9

    .line 168
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->downstream:Lio/reactivex/Observer;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void

    :cond_9
    if-eqz v7, :cond_a

    if-eqz v8, :cond_a

    if-eq v9, v10, :cond_a

    .line 173
    invoke-virtual {p0, v3, v5}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 175
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->downstream:Lio/reactivex/Observer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 176
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void

    :cond_a
    if-nez v9, :cond_c

    if-nez v10, :cond_c

    .line 184
    :try_start_0
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->comparer:Lio/reactivex/functions/BiPredicate;

    iget-object v8, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v1:Ljava/lang/Object;

    iget-object v11, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v2:Ljava/lang/Object;

    invoke-interface {v7, v8, v11}, Lio/reactivex/functions/BiPredicate;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_b

    .line 194
    invoke-virtual {p0, v3, v5}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 196
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->downstream:Lio/reactivex/Observer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->downstream:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void

    :cond_b
    const/4 v7, 0x0

    .line 201
    iput-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v1:Ljava/lang/Object;

    .line 202
    iput-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->v2:Ljava/lang/Object;

    goto :goto_2

    :catch_0
    move-exception v0

    .line 186
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 187
    invoke-virtual {p0, v3, v5}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 189
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->downstream:Lio/reactivex/Observer;

    invoke-interface {v1, v0}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_c
    :goto_2
    if-nez v9, :cond_d

    if-eqz v10, :cond_1

    :cond_d
    neg-int v6, v6

    .line 210
    invoke-virtual {p0, v6}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->cancelled:Z

    return v0
.end method

.method setDisposable(Lio/reactivex/disposables/Disposable;I)Z
    .locals 1

    .line 78
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->resources:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v0, p2, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->setResource(ILio/reactivex/disposables/Disposable;)Z

    move-result p1

    return p1
.end method

.method subscribe()V
    .locals 3

    .line 82
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualObserver;

    .line 83
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->first:Lio/reactivex/ObservableSource;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 84
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqual$EqualCoordinator;->second:Lio/reactivex/ObservableSource;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
