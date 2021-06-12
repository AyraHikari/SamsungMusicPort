.class public final enum Lio/reactivex/internal/subscriptions/EmptySubscription;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/fuseable/QueueSubscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/subscriptions/EmptySubscription;",
        ">;",
        "Lio/reactivex/internal/fuseable/QueueSubscription<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/internal/subscriptions/EmptySubscription;

.field public static final enum INSTANCE:Lio/reactivex/internal/subscriptions/EmptySubscription;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Lio/reactivex/internal/subscriptions/EmptySubscription;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/subscriptions/EmptySubscription;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/internal/subscriptions/EmptySubscription;->INSTANCE:Lio/reactivex/internal/subscriptions/EmptySubscription;

    const/4 v0, 0x1

    .line 24
    new-array v0, v0, [Lio/reactivex/internal/subscriptions/EmptySubscription;

    sget-object v1, Lio/reactivex/internal/subscriptions/EmptySubscription;->INSTANCE:Lio/reactivex/internal/subscriptions/EmptySubscription;

    aput-object v1, v0, v2

    sput-object v0, Lio/reactivex/internal/subscriptions/EmptySubscription;->$VALUES:[Lio/reactivex/internal/subscriptions/EmptySubscription;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static complete(Lorg/reactivestreams/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reactivestreams/Subscriber<",
            "*>;)V"
        }
    .end annotation

    .line 68
    sget-object v0, Lio/reactivex/internal/subscriptions/EmptySubscription;->INSTANCE:Lio/reactivex/internal/subscriptions/EmptySubscription;

    invoke-interface {p0, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 69
    invoke-interface {p0}, Lorg/reactivestreams/Subscriber;->onComplete()V

    return-void
.end method

.method public static error(Ljava/lang/Throwable;Lorg/reactivestreams/Subscriber;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Lorg/reactivestreams/Subscriber<",
            "*>;)V"
        }
    .end annotation

    .line 54
    sget-object v0, Lio/reactivex/internal/subscriptions/EmptySubscription;->INSTANCE:Lio/reactivex/internal/subscriptions/EmptySubscription;

    invoke-interface {p1, v0}, Lorg/reactivestreams/Subscriber;->onSubscribe(Lorg/reactivestreams/Subscription;)V

    .line 55
    invoke-interface {p1, p0}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/subscriptions/EmptySubscription;
    .locals 1

    .line 24
    const-class v0, Lio/reactivex/internal/subscriptions/EmptySubscription;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/internal/subscriptions/EmptySubscription;

    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/subscriptions/EmptySubscription;
    .locals 1

    .line 24
    sget-object v0, Lio/reactivex/internal/subscriptions/EmptySubscription;->$VALUES:[Lio/reactivex/internal/subscriptions/EmptySubscription;

    invoke-virtual {v0}, [Lio/reactivex/internal/subscriptions/EmptySubscription;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/subscriptions/EmptySubscription;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1

    .line 95
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public offer(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 100
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Should not be called!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public poll()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public request(J)V
    .locals 0

    .line 30
    invoke-static {p1, p2}, Lio/reactivex/internal/subscriptions/SubscriptionHelper;->validate(J)Z

    return-void
.end method

.method public requestFusion(I)I
    .locals 0

    and-int/lit8 p1, p1, 0x2

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "EmptySubscription"

    return-object v0
.end method
