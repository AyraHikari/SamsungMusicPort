.class public final enum Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/SmpInitOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Option"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

.field public static final enum ENABLE_DEBUG_MODE:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

.field public static final enum ENABLE_USER_BASED_OPT_IN:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

.field public static final enum MULTI_PROCESS_MODE:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

.field public static final enum SPP_APPID:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    new-instance v0, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    const-string v1, "ENABLE_USER_BASED_OPT_IN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;->ENABLE_USER_BASED_OPT_IN:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    .line 30
    new-instance v0, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    const-string v1, "ENABLE_DEBUG_MODE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;->ENABLE_DEBUG_MODE:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    .line 37
    new-instance v0, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    const-string v1, "SPP_APPID"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;->SPP_APPID:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    .line 43
    new-instance v0, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    const-string v1, "MULTI_PROCESS_MODE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;->MULTI_PROCESS_MODE:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    const/4 v0, 0x4

    .line 18
    new-array v0, v0, [Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    sget-object v1, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;->ENABLE_USER_BASED_OPT_IN:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;->ENABLE_DEBUG_MODE:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;->SPP_APPID:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;->MULTI_PROCESS_MODE:Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;->$VALUES:[Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;
    .locals 1

    .line 18
    const-class v0, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;
    .locals 1

    .line 18
    sget-object v0, Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;->$VALUES:[Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/smp/SmpInitOptions$Option;

    return-object v0
.end method
