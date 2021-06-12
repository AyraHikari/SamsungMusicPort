.class public final enum Lio/reactivex/BackpressureStrategy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/reactivex/BackpressureStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/reactivex/BackpressureStrategy;

.field public static final enum BUFFER:Lio/reactivex/BackpressureStrategy;

.field public static final enum DROP:Lio/reactivex/BackpressureStrategy;

.field public static final enum ERROR:Lio/reactivex/BackpressureStrategy;

.field public static final enum LATEST:Lio/reactivex/BackpressureStrategy;

.field public static final enum MISSING:Lio/reactivex/BackpressureStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 25
    new-instance v0, Lio/reactivex/BackpressureStrategy;

    const-string v1, "MISSING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/BackpressureStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/BackpressureStrategy;->MISSING:Lio/reactivex/BackpressureStrategy;

    .line 29
    new-instance v0, Lio/reactivex/BackpressureStrategy;

    const-string v1, "ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lio/reactivex/BackpressureStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/BackpressureStrategy;->ERROR:Lio/reactivex/BackpressureStrategy;

    .line 33
    new-instance v0, Lio/reactivex/BackpressureStrategy;

    const-string v1, "BUFFER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lio/reactivex/BackpressureStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/BackpressureStrategy;->BUFFER:Lio/reactivex/BackpressureStrategy;

    .line 37
    new-instance v0, Lio/reactivex/BackpressureStrategy;

    const-string v1, "DROP"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lio/reactivex/BackpressureStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    .line 42
    new-instance v0, Lio/reactivex/BackpressureStrategy;

    const-string v1, "LATEST"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lio/reactivex/BackpressureStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/reactivex/BackpressureStrategy;->LATEST:Lio/reactivex/BackpressureStrategy;

    const/4 v0, 0x5

    .line 19
    new-array v0, v0, [Lio/reactivex/BackpressureStrategy;

    sget-object v1, Lio/reactivex/BackpressureStrategy;->MISSING:Lio/reactivex/BackpressureStrategy;

    aput-object v1, v0, v2

    sget-object v1, Lio/reactivex/BackpressureStrategy;->ERROR:Lio/reactivex/BackpressureStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lio/reactivex/BackpressureStrategy;->BUFFER:Lio/reactivex/BackpressureStrategy;

    aput-object v1, v0, v4

    sget-object v1, Lio/reactivex/BackpressureStrategy;->DROP:Lio/reactivex/BackpressureStrategy;

    aput-object v1, v0, v5

    sget-object v1, Lio/reactivex/BackpressureStrategy;->LATEST:Lio/reactivex/BackpressureStrategy;

    aput-object v1, v0, v6

    sput-object v0, Lio/reactivex/BackpressureStrategy;->$VALUES:[Lio/reactivex/BackpressureStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/reactivex/BackpressureStrategy;
    .locals 1

    .line 19
    const-class v0, Lio/reactivex/BackpressureStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/reactivex/BackpressureStrategy;

    return-object p0
.end method

.method public static values()[Lio/reactivex/BackpressureStrategy;
    .locals 1

    .line 19
    sget-object v0, Lio/reactivex/BackpressureStrategy;->$VALUES:[Lio/reactivex/BackpressureStrategy;

    invoke-virtual {v0}, [Lio/reactivex/BackpressureStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/reactivex/BackpressureStrategy;

    return-object v0
.end method
