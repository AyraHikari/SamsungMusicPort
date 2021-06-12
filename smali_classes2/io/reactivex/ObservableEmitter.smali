.class public interface abstract Lio/reactivex/ObservableEmitter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Emitter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Emitter<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract isDisposed()Z
.end method

.method public abstract setCancellable(Lio/reactivex/functions/Cancellable;)V
.end method

.method public abstract setDisposable(Lio/reactivex/disposables/Disposable;)V
.end method
