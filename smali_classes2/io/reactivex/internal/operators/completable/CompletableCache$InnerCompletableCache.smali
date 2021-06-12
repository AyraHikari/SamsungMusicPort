.class final Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/completable/CompletableCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InnerCompletableCache"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x7c1c7632007db36cL


# instance fields
.field final downstream:Lio/reactivex/CompletableObserver;

.field final synthetic this$0:Lio/reactivex/internal/operators/completable/CompletableCache;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/completable/CompletableCache;Lio/reactivex/CompletableObserver;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->this$0:Lio/reactivex/internal/operators/completable/CompletableCache;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 155
    iput-object p2, p0, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->downstream:Lio/reactivex/CompletableObserver;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 165
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->this$0:Lio/reactivex/internal/operators/completable/CompletableCache;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/completable/CompletableCache;->b(Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;)V

    :cond_0
    return-void
.end method

.method public isDisposed()Z
    .locals 1

    .line 160
    invoke-virtual {p0}, Lio/reactivex/internal/operators/completable/CompletableCache$InnerCompletableCache;->get()Z

    move-result v0

    return v0
.end method
