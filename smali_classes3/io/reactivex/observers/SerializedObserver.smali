.class public final Lio/reactivex/observers/SerializedObserver;
.super Ljava/lang/Object;
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

.field final b:Z

.field c:Lio/reactivex/disposables/Disposable;

.field d:Z

.field e:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/util/AppendOnlyLinkedArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile f:Z


# direct methods
.method public constructor <init>(Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lio/reactivex/observers/SerializedObserver;-><init>(Lio/reactivex/Observer;Z)V

    return-void
.end method

.method public constructor <init>(Lio/reactivex/Observer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;Z)V"
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lio/reactivex/observers/SerializedObserver;->a:Lio/reactivex/Observer;

    .line 63
    iput-boolean p2, p0, Lio/reactivex/observers/SerializedObserver;->b:Z

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 186
    :cond_0
    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->e:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->d:Z

    .line 190
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x0

    .line 192
    iput-object v1, p0, Lio/reactivex/observers/SerializedObserver;->e:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 193
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    iget-object v1, p0, Lio/reactivex/observers/SerializedObserver;->a:Lio/reactivex/Observer;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->a(Lio/reactivex/Observer;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :catchall_0
    move-exception v0

    .line 193
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dispose()V
    .locals 1

    .line 77
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->c:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->c:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 2

    .line 159
    iget-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 162
    :cond_0
    monitor-enter p0

    .line 163
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->f:Z

    if-eqz v0, :cond_1

    .line 164
    monitor-exit p0

    return-void

    .line 166
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->d:Z

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->e:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_2

    .line 169
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    .line 170
    iput-object v0, p0, Lio/reactivex/observers/SerializedObserver;->e:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 172
    :cond_2
    invoke-static {}, Lio/reactivex/internal/util/NotificationLite;->complete()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->a(Ljava/lang/Object;)V

    .line 173
    monitor-exit p0

    return-void

    :cond_3
    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->f:Z

    .line 176
    iput-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->d:Z

    .line 177
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->a:Lio/reactivex/Observer;

    invoke-interface {v0}, Lio/reactivex/Observer;->onComplete()V

    return-void

    :catchall_0
    move-exception v0

    .line 177
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 118
    iget-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->f:Z

    if-eqz v0, :cond_0

    .line 119
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    return-void

    .line 123
    :cond_0
    monitor-enter p0

    .line 124
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    goto :goto_1

    .line 127
    :cond_1
    iget-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->d:Z

    if-eqz v0, :cond_4

    .line 128
    iput-boolean v1, p0, Lio/reactivex/observers/SerializedObserver;->f:Z

    .line 129
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->e:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_2

    .line 131
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    .line 132
    iput-object v0, p0, Lio/reactivex/observers/SerializedObserver;->e:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 134
    :cond_2
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->error(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    .line 135
    iget-boolean v1, p0, Lio/reactivex/observers/SerializedObserver;->b:Z

    if-eqz v1, :cond_3

    .line 136
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 138
    :cond_3
    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->b(Ljava/lang/Object;)V

    .line 140
    :goto_0
    monitor-exit p0

    return-void

    .line 142
    :cond_4
    iput-boolean v1, p0, Lio/reactivex/observers/SerializedObserver;->f:Z

    .line 143
    iput-boolean v1, p0, Lio/reactivex/observers/SerializedObserver;->d:Z

    const/4 v1, 0x0

    .line 146
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    .line 149
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    return-void

    .line 153
    :cond_5
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->a:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onError(Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 146
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 87
    iget-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 91
    iget-object p1, p0, Lio/reactivex/observers/SerializedObserver;->c:Lio/reactivex/disposables/Disposable;

    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 92
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "onNext called with null. Null values are generally not allowed in 2.x operators and sources."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/reactivex/observers/SerializedObserver;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 95
    :cond_1
    monitor-enter p0

    .line 96
    :try_start_0
    iget-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->f:Z

    if-eqz v0, :cond_2

    .line 97
    monitor-exit p0

    return-void

    .line 99
    :cond_2
    iget-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->d:Z

    if-eqz v0, :cond_4

    .line 100
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->e:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    if-nez v0, :cond_3

    .line 102
    new-instance v0, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;-><init>(I)V

    .line 103
    iput-object v0, p0, Lio/reactivex/observers/SerializedObserver;->e:Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;

    .line 105
    :cond_3
    invoke-static {p1}, Lio/reactivex/internal/util/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/util/AppendOnlyLinkedArrayList;->a(Ljava/lang/Object;)V

    .line 106
    monitor-exit p0

    return-void

    :cond_4
    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lio/reactivex/observers/SerializedObserver;->d:Z

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->a:Lio/reactivex/Observer;

    invoke-interface {v0, p1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 113
    invoke-virtual {p0}, Lio/reactivex/observers/SerializedObserver;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 109
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lio/reactivex/observers/SerializedObserver;->c:Lio/reactivex/disposables/Disposable;

    invoke-static {v0, p1}, Lio/reactivex/internal/disposables/DisposableHelper;->validate(Lio/reactivex/disposables/Disposable;Lio/reactivex/disposables/Disposable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iput-object p1, p0, Lio/reactivex/observers/SerializedObserver;->c:Lio/reactivex/disposables/Disposable;

    .line 71
    iget-object p1, p0, Lio/reactivex/observers/SerializedObserver;->a:Lio/reactivex/Observer;

    invoke-interface {p1, p0}, Lio/reactivex/Observer;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    :cond_0
    return-void
.end method
