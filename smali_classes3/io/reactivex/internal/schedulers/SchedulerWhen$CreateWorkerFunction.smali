.class final Lio/reactivex/internal/schedulers/SchedulerWhen$CreateWorkerFunction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/SchedulerWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CreateWorkerFunction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/schedulers/SchedulerWhen$CreateWorkerFunction$WorkerCompletable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;",
        "Lio/reactivex/Completable;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/Scheduler$Worker;


# direct methods
.method constructor <init>(Lio/reactivex/Scheduler$Worker;)V
    .locals 0

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lio/reactivex/internal/schedulers/SchedulerWhen$CreateWorkerFunction;->a:Lio/reactivex/Scheduler$Worker;

    return-void
.end method


# virtual methods
.method public a(Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;)Lio/reactivex/Completable;
    .locals 1

    .line 275
    new-instance v0, Lio/reactivex/internal/schedulers/SchedulerWhen$CreateWorkerFunction$WorkerCompletable;

    invoke-direct {v0, p0, p1}, Lio/reactivex/internal/schedulers/SchedulerWhen$CreateWorkerFunction$WorkerCompletable;-><init>(Lio/reactivex/internal/schedulers/SchedulerWhen$CreateWorkerFunction;Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;)V

    return-object v0
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 266
    check-cast p1, Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;

    invoke-virtual {p0, p1}, Lio/reactivex/internal/schedulers/SchedulerWhen$CreateWorkerFunction;->a(Lio/reactivex/internal/schedulers/SchedulerWhen$ScheduledAction;)Lio/reactivex/Completable;

    move-result-object p1

    return-object p1
.end method
