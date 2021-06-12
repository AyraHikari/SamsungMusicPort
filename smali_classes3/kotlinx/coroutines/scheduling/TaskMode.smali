.class public final enum Lkotlinx/coroutines/scheduling/TaskMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lkotlinx/coroutines/scheduling/TaskMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lkotlinx/coroutines/scheduling/TaskMode;

.field public static final enum NON_BLOCKING:Lkotlinx/coroutines/scheduling/TaskMode;

.field public static final enum PROBABLY_BLOCKING:Lkotlinx/coroutines/scheduling/TaskMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlinx/coroutines/scheduling/TaskMode;

    new-instance v1, Lkotlinx/coroutines/scheduling/TaskMode;

    const-string v2, "NON_BLOCKING"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/scheduling/TaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/scheduling/TaskMode;->NON_BLOCKING:Lkotlinx/coroutines/scheduling/TaskMode;

    aput-object v1, v0, v3

    new-instance v1, Lkotlinx/coroutines/scheduling/TaskMode;

    const-string v2, "PROBABLY_BLOCKING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/scheduling/TaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lkotlinx/coroutines/scheduling/TaskMode;->PROBABLY_BLOCKING:Lkotlinx/coroutines/scheduling/TaskMode;

    aput-object v1, v0, v3

    sput-object v0, Lkotlinx/coroutines/scheduling/TaskMode;->$VALUES:[Lkotlinx/coroutines/scheduling/TaskMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lkotlinx/coroutines/scheduling/TaskMode;
    .locals 1

    const-class v0, Lkotlinx/coroutines/scheduling/TaskMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/scheduling/TaskMode;

    return-object p0
.end method

.method public static values()[Lkotlinx/coroutines/scheduling/TaskMode;
    .locals 1

    sget-object v0, Lkotlinx/coroutines/scheduling/TaskMode;->$VALUES:[Lkotlinx/coroutines/scheduling/TaskMode;

    invoke-virtual {v0}, [Lkotlinx/coroutines/scheduling/TaskMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lkotlinx/coroutines/scheduling/TaskMode;

    return-object v0
.end method
