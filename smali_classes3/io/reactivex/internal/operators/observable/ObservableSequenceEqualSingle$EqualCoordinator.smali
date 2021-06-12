.class final Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle;
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

.field final downstream:Lio/reactivex/SingleObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/SingleObserver<",
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

.field final observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver<",
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
.method constructor <init>(Lio/reactivex/SingleObserver;ILio/reactivex/ObservableSource;Lio/reactivex/ObservableSource;Lio/reactivex/functions/BiPredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/SingleObserver<",
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

    .line 71
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 72
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->downstream:Lio/reactivex/SingleObserver;

    .line 73
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/ObservableSource;

    .line 74
    iput-object p4, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/ObservableSource;

    .line 75
    iput-object p5, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->comparer:Lio/reactivex/functions/BiPredicate;

    const/4 p1, 0x2

    .line 77
    new-array p3, p1, [Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;

    .line 78
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;

    .line 79
    new-instance p4, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5, p2}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;II)V

    aput-object p4, p3, p5

    .line 80
    new-instance p4, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;

    const/4 p5, 0x1

    invoke-direct {p4, p0, p5, p2}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;-><init>(Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;II)V

    aput-object p4, p3, p5

    .line 81
    new-instance p2, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-direct {p2, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;-><init>(I)V

    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->resources:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

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

    .line 114
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->cancelled:Z

    .line 115
    invoke-virtual {p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 116
    invoke-virtual {p2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    return-void
.end method

.method public dispose()V
    .locals 3

    .line 96
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->cancelled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->cancelled:Z

    .line 98
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->resources:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->dispose()V

    .line 100
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_0

    .line 101
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;

    const/4 v2, 0x0

    .line 102
    aget-object v2, v1, v2

    iget-object v2, v2, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->b:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v2}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 103
    aget-object v0, v1, v0

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->b:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    :cond_0
    return-void
.end method

.method drain()V
    .locals 12

    .line 120
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;

    const/4 v1, 0x0

    .line 127
    aget-object v2, v0, v1

    .line 128
    iget-object v3, v2, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->b:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    const/4 v4, 0x1

    .line 129
    aget-object v0, v0, v4

    .line 130
    iget-object v5, v0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->b:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    const/4 v6, 0x1

    .line 135
    :cond_1
    iget-boolean v7, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->cancelled:Z

    if-eqz v7, :cond_2

    .line 136
    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    .line 137
    invoke-virtual {v5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->clear()V

    return-void

    .line 141
    :cond_2
    iget-boolean v7, v2, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->d:Z

    if-eqz v7, :cond_3

    .line 144
    iget-object v8, v2, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->e:Ljava/lang/Throwable;

    if-eqz v8, :cond_3

    .line 146
    invoke-virtual {p0, v3, v5}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 148
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v0, v8}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 153
    :cond_3
    iget-boolean v8, v0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->d:Z

    if-eqz v8, :cond_4

    .line 155
    iget-object v9, v0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->e:Ljava/lang/Throwable;

    if-eqz v9, :cond_4

    .line 157
    invoke-virtual {p0, v3, v5}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 159
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v0, v9}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 164
    :cond_4
    iget-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->v1:Ljava/lang/Object;

    if-nez v9, :cond_5

    .line 165
    invoke-virtual {v3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->v1:Ljava/lang/Object;

    .line 167
    :cond_5
    iget-object v9, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->v1:Ljava/lang/Object;

    if-nez v9, :cond_6

    const/4 v9, 0x1

    goto :goto_0

    :cond_6
    const/4 v9, 0x0

    .line 169
    :goto_0
    iget-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->v2:Ljava/lang/Object;

    if-nez v10, :cond_7

    .line 170
    invoke-virtual {v5}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->poll()Ljava/lang/Object;

    move-result-object v10

    iput-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->v2:Ljava/lang/Object;

    .line 172
    :cond_7
    iget-object v10, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->v2:Ljava/lang/Object;

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

    .line 175
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->downstream:Lio/reactivex/SingleObserver;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_9
    if-eqz v7, :cond_a

    if-eqz v8, :cond_a

    if-eq v9, v10, :cond_a

    .line 179
    invoke-virtual {p0, v3, v5}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 181
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->downstream:Lio/reactivex/SingleObserver;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_a
    if-nez v9, :cond_c

    if-nez v10, :cond_c

    .line 189
    :try_start_0
    iget-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->comparer:Lio/reactivex/functions/BiPredicate;

    iget-object v8, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->v1:Ljava/lang/Object;

    iget-object v11, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->v2:Ljava/lang/Object;

    invoke-interface {v7, v8, v11}, Lio/reactivex/functions/BiPredicate;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_b

    .line 199
    invoke-virtual {p0, v3, v5}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 201
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->downstream:Lio/reactivex/SingleObserver;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/reactivex/SingleObserver;->onSuccess(Ljava/lang/Object;)V

    return-void

    :cond_b
    const/4 v7, 0x0

    .line 205
    iput-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->v1:Ljava/lang/Object;

    .line 206
    iput-object v7, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->v2:Ljava/lang/Object;

    goto :goto_2

    :catch_0
    move-exception v0

    .line 191
    invoke-static {v0}, Lio/reactivex/exceptions/Exceptions;->b(Ljava/lang/Throwable;)V

    .line 192
    invoke-virtual {p0, v3, v5}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->cancel(Lio/reactivex/internal/queue/SpscLinkedArrayQueue;Lio/reactivex/internal/queue/SpscLinkedArrayQueue;)V

    .line 194
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->downstream:Lio/reactivex/SingleObserver;

    invoke-interface {v1, v0}, Lio/reactivex/SingleObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_c
    :goto_2
    if-nez v9, :cond_d

    if-eqz v10, :cond_1

    :cond_d
    neg-int v6, v6

    .line 214
    invoke-virtual {p0, v6}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->addAndGet(I)I

    move-result v6

    if-nez v6, :cond_1

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->cancelled:Z

    return v0
.end method

.method setDisposable(Lio/reactivex/disposables/Disposable;I)Z
    .locals 1

    .line 85
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->resources:Lio/reactivex/internal/disposables/ArrayCompositeDisposable;

    invoke-virtual {v0, p2, p1}, Lio/reactivex/internal/disposables/ArrayCompositeDisposable;->setResource(ILio/reactivex/disposables/Disposable;)Z

    move-result p1

    return p1
.end method

.method subscribe()V
    .locals 3

    .line 89
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->observers:[Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;

    .line 90
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->first:Lio/reactivex/ObservableSource;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-interface {v1, v2}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    .line 91
    iget-object v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->second:Lio/reactivex/ObservableSource;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-interface {v1, v0}, Lio/reactivex/ObservableSource;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
