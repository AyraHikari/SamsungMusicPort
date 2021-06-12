.class final Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservablePublish;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PublishObserver"
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


# static fields
.field static final b:[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

.field static final c:[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[",
            "Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/disposables/Disposable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 127
    new-array v1, v0, [Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    sput-object v1, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->b:[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    .line 129
    new-array v0, v0, [Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    sput-object v0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->c:[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 143
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->b:[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->d:Ljava/util/concurrent/atomic/AtomicReference;

    .line 144
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 145
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method a(Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable<",
            "TT;>;)V"
        }
    .end annotation

    .line 239
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    .line 241
    array-length v1, v0

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    .line 249
    aget-object v5, v0, v4

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-gez v2, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x1

    if-ne v1, v4, :cond_5

    .line 263
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->b:[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    goto :goto_2

    :cond_5
    add-int/lit8 v5, v1, -0x1

    .line 266
    new-array v5, v5, [Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    .line 268
    invoke-static {v0, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, v4

    .line 270
    invoke-static {v0, v3, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v5

    .line 273
    :goto_2
    iget-object v2, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method public dispose()V
    .locals 2

    .line 151
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->c:[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    .line 152
    sget-object v1, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->c:[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    if-eq v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 155
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0}, Lio/reactivex/internal/disposables/DisposableHelper;->dispose(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 2

    .line 161
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->c:[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onComplete()V
    .locals 4

    .line 193
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->c:[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 195
    iget-object v3, v3, Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;->child:Lio/reactivex/Observer;

    invoke-interface {v3}, Lio/reactivex/Observer;->onComplete()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 4

    .line 179
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->d:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->c:[Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    .line 181
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 182
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 183
    iget-object v3, v3, Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;->child:Lio/reactivex/Observer;

    invoke-interface {v3, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    :cond_0
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 172
    iget-object v3, v3, Lio/reactivex/internal/operators/observable/ObservablePublish$InnerDisposable;->child:Lio/reactivex/Observer;

    invoke-interface {v3, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 166
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservablePublish$PublishObserver;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->setOnce(Ljava/util/concurrent/atomic/AtomicReference;Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
