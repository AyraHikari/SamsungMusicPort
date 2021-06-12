.class public final Lio/reactivex/internal/util/AtomicThrowable;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x36ce8ce03b5e1eabL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    return-void
.end method


# virtual methods
.method public addThrowable(Ljava/lang/Throwable;)Z
    .locals 0

    .line 34
    invoke-static {p0, p1}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public isTerminated()Z
    .locals 2

    .line 47
    invoke-virtual {p0}, Lio/reactivex/internal/util/AtomicThrowable;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lio/reactivex/internal/util/ExceptionHelper;->a:Ljava/lang/Throwable;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public terminate()Ljava/lang/Throwable;
    .locals 1

    .line 43
    invoke-static {p0}, Lio/reactivex/internal/util/ExceptionHelper;->a(Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Throwable;

    move-result-object v0

    return-object v0
.end method
