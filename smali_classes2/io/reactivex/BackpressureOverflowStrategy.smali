.class public final enum Lio/reactivex/BackpressureOverflowStrategy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/BackpressureOverflowStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/BackpressureOverflowStrategy;

.field public static final enum DROP_LATEST:Lio/reactivex/BackpressureOverflowStrategy;

.field public static final enum DROP_OLDEST:Lio/reactivex/BackpressureOverflowStrategy;

.field public static final enum ERROR:Lio/reactivex/BackpressureOverflowStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 23
    new-instance v0, Lio/reactivex/BackpressureOverflowStrategy;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/BackpressureOverflowStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/BackpressureOverflowStrategy;->ERROR:Lio/reactivex/BackpressureOverflowStrategy;

    .line 25
    new-instance v0, Lio/reactivex/BackpressureOverflowStrategy;

    const-string v1, "DROP_OLDEST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/reactivex/BackpressureOverflowStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/BackpressureOverflowStrategy;->DROP_OLDEST:Lio/reactivex/BackpressureOverflowStrategy;

    .line 27
    new-instance v0, Lio/reactivex/BackpressureOverflowStrategy;

    const-string v1, "DROP_LATEST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/reactivex/BackpressureOverflowStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/BackpressureOverflowStrategy;->DROP_LATEST:Lio/reactivex/BackpressureOverflowStrategy;

    const/4 v0, 0x3

    .line 21
    new-array v0, v0, [Lio/reactivex/BackpressureOverflowStrategy;

    sget-object v1, Lio/reactivex/BackpressureOverflowStrategy;->ERROR:Lio/reactivex/BackpressureOverflowStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lio/reactivex/BackpressureOverflowStrategy;->DROP_OLDEST:Lio/reactivex/BackpressureOverflowStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lio/reactivex/BackpressureOverflowStrategy;->DROP_LATEST:Lio/reactivex/BackpressureOverflowStrategy;

    aput-object v1, v0, v4

    sput-object v0, Lio/reactivex/BackpressureOverflowStrategy;->$VALUES:[Lio/reactivex/BackpressureOverflowStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/BackpressureOverflowStrategy;
    .locals 1

    .line 21
    const-class v0, Lio/reactivex/BackpressureOverflowStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/BackpressureOverflowStrategy;

    return-object p0
.end method

.method public static values()[Lio/reactivex/BackpressureOverflowStrategy;
    .locals 1

    .line 21
    sget-object v0, Lio/reactivex/BackpressureOverflowStrategy;->$VALUES:[Lio/reactivex/BackpressureOverflowStrategy;

    invoke-virtual {v0}, [Lio/reactivex/BackpressureOverflowStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/BackpressureOverflowStrategy;

    return-object v0
.end method
