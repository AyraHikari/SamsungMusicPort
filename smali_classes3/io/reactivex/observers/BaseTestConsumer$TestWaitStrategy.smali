.class public abstract enum Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/observers/BaseTestConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "TestWaitStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

.field public static final enum SLEEP_1000MS:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

.field public static final enum SLEEP_100MS:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

.field public static final enum SLEEP_10MS:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

.field public static final enum SLEEP_1MS:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

.field public static final enum SPIN:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

.field public static final enum YIELD:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 904
    new-instance v0, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$1;

    const-string v1, "SPIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->SPIN:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    .line 911
    new-instance v0, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$2;

    const-string v1, "YIELD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->YIELD:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    .line 918
    new-instance v0, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$3;

    const-string v1, "SLEEP_1MS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->SLEEP_1MS:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    .line 925
    new-instance v0, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$4;

    const-string v1, "SLEEP_10MS"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->SLEEP_10MS:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    .line 932
    new-instance v0, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$5;

    const-string v1, "SLEEP_100MS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->SLEEP_100MS:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    .line 939
    new-instance v0, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$6;

    const-string v1, "SLEEP_1000MS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->SLEEP_1000MS:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    const/4 v0, 0x6

    .line 902
    new-array v0, v0, [Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    sget-object v1, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->SPIN:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->YIELD:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->SLEEP_1MS:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    aput-object v1, v0, v4

    sget-object v1, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->SLEEP_10MS:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    aput-object v1, v0, v5

    sget-object v1, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->SLEEP_100MS:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    aput-object v1, v0, v6

    sget-object v1, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->SLEEP_1000MS:Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    aput-object v1, v0, v7

    sput-object v0, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->$VALUES:[Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 902
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILio/reactivex/observers/BaseTestConsumer$1;)V
    .locals 0

    .line 902
    invoke-direct {p0, p1, p2}, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static sleep(I)V
    .locals 2

    int-to-long v0, p0

    .line 952
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 954
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;
    .locals 1

    .line 902
    const-class v0, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    return-object p0
.end method

.method public static values()[Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;
    .locals 1

    .line 902
    sget-object v0, Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->$VALUES:[Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    invoke-virtual {v0}, [Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/observers/BaseTestConsumer$TestWaitStrategy;

    return-object v0
.end method


# virtual methods
.method public abstract run()V
.end method
