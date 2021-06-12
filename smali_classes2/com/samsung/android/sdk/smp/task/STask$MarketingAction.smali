.class public final enum Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/smp/task/STask$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/smp/task/STask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MarketingAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;",
        ">;",
        "Lcom/samsung/android/sdk/smp/task/STask$Action;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

.field public static final enum API_CALL:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

.field public static final enum BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

.field public static final enum CUSTOM_FEEDBACK:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

.field public static final enum DISMISS:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 97
    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    const-string v1, "BASIC"

    const/4 v2, 0x0

    const v3, 0x895828

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    .line 98
    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    const-string v1, "DISMISS"

    const/4 v3, 0x1

    const v4, 0x895c10

    invoke-direct {v0, v1, v3, v4}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->DISMISS:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    .line 99
    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    const-string v1, "API_CALL"

    const/4 v4, 0x2

    const v5, 0x895ff8

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->API_CALL:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    .line 100
    new-instance v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    const-string v1, "CUSTOM_FEEDBACK"

    const/4 v5, 0x3

    const v6, 0x8963e0

    invoke-direct {v0, v1, v5, v6}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CUSTOM_FEEDBACK:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    const/4 v0, 0x4

    .line 96
    new-array v0, v0, [Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->DISMISS:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->API_CALL:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CUSTOM_FEEDBACK:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->$VALUES:[Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 105
    iput p3, p0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->id:I

    return-void
.end method

.method public static getAction(I)Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;
    .locals 3

    .line 114
    const-class v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    .line 115
    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->id()I

    move-result v2

    if-gt v2, p0, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->id()I

    move-result v2

    add-int/lit16 v2, v2, 0x3e8

    if-ge p0, v2, :cond_0

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;
    .locals 1

    .line 96
    const-class v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;
    .locals 1

    .line 96
    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->$VALUES:[Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    return-object v0
.end method


# virtual methods
.method public id()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->id:I

    return v0
.end method
