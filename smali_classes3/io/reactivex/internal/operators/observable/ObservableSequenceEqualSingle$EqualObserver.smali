.class final Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "EqualObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/queue/SpscLinkedArrayQueue<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:I

.field volatile d:Z

.field e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator<",
            "TT;>;II)V"
        }
    .end annotation

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->a:Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;

    .line 232
    iput p2, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->c:I

    .line 233
    new-instance p1, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-direct {p1, p3}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->b:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->d:Z

    .line 257
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->a:Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->e:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 250
    iput-boolean p1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->d:Z

    .line 251
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->a:Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->drain()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->b:Lio/reactivex/internal/queue/SpscLinkedArrayQueue;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/queue/SpscLinkedArrayQueue;->offer(Ljava/lang/Object;)Z

    .line 244
    iget-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->a:Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->drain()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 2

    .line 238
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->a:Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;

    iget v1, p0, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualObserver;->c:I

    invoke-virtual {v0, p1, v1}, Lio/reactivex/internal/operators/observable/ObservableSequenceEqualSingle$EqualCoordinator;->setDisposable(Lio/reactivex/disposables/Disposable;I)Z

    return-void
.end method
