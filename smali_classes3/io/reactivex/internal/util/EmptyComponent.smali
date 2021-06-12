.class public final enum Lio/reactivex/internal/util/EmptyComponent;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/CompletableObserver;
.implements Lio/reactivex/FlowableSubscriber;
.implements Lio/reactivex/MaybeObserver;
.implements Lio/reactivex/Observer;
.implements Lio/reactivex/SingleObserver;
.implements Lio/reactivex/disposables/Disposable;
.implements Lorg/reactivestreams/Subscription;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/util/EmptyComponent;",
        ">;",
        "Lio/reactivex/CompletableObserver;",
        "Lio/reactivex/FlowableSubscriber<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/MaybeObserver<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/SingleObserver<",
        "Ljava/lang/Object;",
        ">;",
        "Lio/reactivex/disposables/Disposable;",
        "Lorg/reactivestreams/Subscription;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/internal/util/EmptyComponent;

.field public static final enum INSTANCE:Lio/reactivex/internal/util/EmptyComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Lio/reactivex/internal/util/EmptyComponent;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/util/EmptyComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    const/4 v0, 0x1

    .line 25
    new-array v0, v0, [Lio/reactivex/internal/util/EmptyComponent;

    sget-object v1, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    aput-object v1, v0, v2

    sput-object v0, Lio/reactivex/internal/util/EmptyComponent;->$VALUES:[Lio/reactivex/internal/util/EmptyComponent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static asObserver()Lio/reactivex/Observer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lio/reactivex/Observer<",
            "TT;>;"
        }
    .end annotation

    .line 36
    sget-object v0, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    return-object v0
.end method

.method public static asSubscriber()Lorg/reactivestreams/Subscriber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/reactivestreams/Subscriber<",
            "TT;>;"
        }
    .end annotation

    .line 31
    sget-object v0, Lio/reactivex/internal/util/EmptyComponent;->INSTANCE:Lio/reactivex/internal/util/EmptyComponent;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/util/EmptyComponent;
    .locals 1

    .line 25
    const-class v0, Lio/reactivex/internal/util/EmptyComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/internal/util/EmptyComponent;

    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/util/EmptyComponent;
    .locals 1

    .line 25
    sget-object v0, Lio/reactivex/internal/util/EmptyComponent;->$VALUES:[Lio/reactivex/internal/util/EmptyComponent;

    invoke-virtual {v0}, [Lio/reactivex/internal/util/EmptyComponent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/util/EmptyComponent;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public isDisposed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 76
    invoke-static {p1}, Lio/reactivex/plugins/RxJavaPlugins;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    .line 61
    invoke-interface {p1}, Lio/reactivex/disposables/Disposable;->dispose()V

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 0

    .line 66
    invoke-interface {p1}, Lorg/reactivestreams/Subscription;->cancel()V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public request(J)V
    .locals 0

    return-void
.end method
