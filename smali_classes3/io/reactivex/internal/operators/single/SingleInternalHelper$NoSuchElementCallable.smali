.class final enum Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/single/SingleInternalHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "NoSuchElementCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;",
        ">;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/NoSuchElementException;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;

.field public static final enum INSTANCE:Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;->INSTANCE:Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;

    const/4 v0, 0x1

    .line 35
    new-array v0, v0, [Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;

    sget-object v1, Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;->INSTANCE:Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;

    aput-object v1, v0, v2

    sput-object v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;->$VALUES:[Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;
    .locals 1

    .line 35
    const-class v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;

    return-object p0
.end method

.method public static values()[Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;
    .locals 1

    .line 35
    sget-object v0, Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;->$VALUES:[Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;

    invoke-virtual {v0}, [Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lio/reactivex/internal/operators/single/SingleInternalHelper$NoSuchElementCallable;->call()Ljava/util/NoSuchElementException;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/NoSuchElementException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    return-object v0
.end method
