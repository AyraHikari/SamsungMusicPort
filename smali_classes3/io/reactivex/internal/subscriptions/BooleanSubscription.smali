.class public final Lio/reactivex/internal/subscriptions/BooleanSubscription;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lorg/reactivestreams/Subscription;


# static fields
.field private static final serialVersionUID:J = -0x70cb99b904892f56L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0}, Lio/reactivex/internal/subscriptions/BooleanSubscription;->lazySet(Z)V

    return-void
.end method

.method public isCancelled()Z
    .locals 1

    .line 42
    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/BooleanSubscription;->get()Z

    move-result v0

    return v0
.end method

.method public request(J)V
    .locals 0

    .line 29
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BooleanSubscription(cancelled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/reactivex/internal/subscriptions/BooleanSubscription;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
