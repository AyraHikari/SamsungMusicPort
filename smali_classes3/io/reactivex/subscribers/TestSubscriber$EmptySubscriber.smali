.class final enum Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/FlowableSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/subscribers/TestSubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EmptySubscriber"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;",
        ">;",
        "Lio/reactivex/FlowableSubscriber<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;

.field public static final enum INSTANCE:Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 426
    new-instance v0, Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;->INSTANCE:Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;

    const/4 v0, 0x1

    .line 425
    new-array v0, v0, [Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;

    sget-object v1, Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;->INSTANCE:Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;

    aput-object v1, v0, v2

    sput-object v0, Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;->$VALUES:[Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 425
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;
    .locals 1

    .line 425
    const-class v0, Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;

    return-object p0
.end method

.method public static values()[Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;
    .locals 1

    .line 425
    sget-object v0, Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;->$VALUES:[Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;

    invoke-virtual {v0}, [Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/subscribers/TestSubscriber$EmptySubscriber;

    return-object v0
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .locals 0

    return-void
.end method
