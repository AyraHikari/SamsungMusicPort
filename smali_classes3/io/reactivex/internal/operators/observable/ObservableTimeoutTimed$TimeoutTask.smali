.class final Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TimeoutTask"
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;

.field final b:J


# direct methods
.method constructor <init>(JLio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-wide p1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTask;->b:J

    .line 160
    iput-object p3, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTask;->a:Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 165
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTask;->a:Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;

    iget-wide v1, p0, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTask;->b:J

    invoke-interface {v0, v1, v2}, Lio/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport;->onTimeout(J)V

    return-void
.end method
