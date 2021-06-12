.class final enum Lio/reactivex/observers/TestObserver$EmptyObserver;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/observers/TestObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EmptyObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/observers/TestObserver$EmptyObserver;",
        ">;",
        "Lio/reactivex/Observer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/observers/TestObserver$EmptyObserver;

.field public static final enum INSTANCE:Lio/reactivex/observers/TestObserver$EmptyObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 355
    new-instance v0, Lio/reactivex/observers/TestObserver$EmptyObserver;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/observers/TestObserver$EmptyObserver;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/observers/TestObserver$EmptyObserver;->INSTANCE:Lio/reactivex/observers/TestObserver$EmptyObserver;

    const/4 v0, 0x1

    .line 354
    new-array v0, v0, [Lio/reactivex/observers/TestObserver$EmptyObserver;

    sget-object v1, Lio/reactivex/observers/TestObserver$EmptyObserver;->INSTANCE:Lio/reactivex/observers/TestObserver$EmptyObserver;

    aput-object v1, v0, v2

    sput-object v0, Lio/reactivex/observers/TestObserver$EmptyObserver;->$VALUES:[Lio/reactivex/observers/TestObserver$EmptyObserver;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 354
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/observers/TestObserver$EmptyObserver;
    .locals 1

    .line 354
    const-class v0, Lio/reactivex/observers/TestObserver$EmptyObserver;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/observers/TestObserver$EmptyObserver;

    return-object p0
.end method

.method public static values()[Lio/reactivex/observers/TestObserver$EmptyObserver;
    .locals 1

    .line 354
    sget-object v0, Lio/reactivex/observers/TestObserver$EmptyObserver;->$VALUES:[Lio/reactivex/observers/TestObserver$EmptyObserver;

    invoke-virtual {v0}, [Lio/reactivex/observers/TestObserver$EmptyObserver;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/observers/TestObserver$EmptyObserver;

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

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0

    return-void
.end method
