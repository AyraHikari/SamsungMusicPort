.class public abstract Lio/reactivex/observers/BaseTestConsumer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Lio/reactivex/observers/BaseTestConsumer<",
        "TT;TU;>;>",
        "Ljava/lang/Object;",
        "Lio/reactivex/disposables/Disposable;"
    }
.end annotation


# instance fields
.field protected final a:Ljava/util/concurrent/CountDownLatch;

.field protected final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field protected d:J

.field protected e:Ljava/lang/Thread;

.field protected f:Z

.field protected g:I

.field protected h:I
