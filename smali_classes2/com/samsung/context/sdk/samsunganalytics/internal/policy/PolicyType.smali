.class public final enum Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

.field public static final enum CUSTOM_TERMS:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

.field public static final enum DIAGNOSTIC_TERMS:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;


# instance fields
.field private enableUseDBQueue:Z

.field private needQuota:Z

.field private senderType:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 10
    new-instance v6, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    const-string v1, "DIAGNOSTIC_TERMS"

    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->DLC:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;-><init>(Ljava/lang/String;ILcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;ZZ)V

    sput-object v6, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->DIAGNOSTIC_TERMS:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    .line 11
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    const-string v8, "CUSTOM_TERMS"

    sget-object v10, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    const/4 v9, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;-><init>(Ljava/lang/String;ILcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;ZZ)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->CUSTOM_TERMS:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    const/4 v0, 0x2

    .line 9
    new-array v0, v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->DIAGNOSTIC_TERMS:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->CUSTOM_TERMS:Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;",
            "ZZ)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->senderType:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    .line 19
    iput-boolean p4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->needQuota:Z

    .line 20
    iput-boolean p5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->enableUseDBQueue:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;
    .locals 1

    .line 9
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;
    .locals 1

    .line 9
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    invoke-virtual {v0}, [Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;

    return-object v0
.end method


# virtual methods
.method public enableUseDBQueue()Z
    .locals 1

    .line 32
    sget-boolean v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->enableUseDBQueue:Z

    :goto_0
    return v0
.end method

.method public getSenderType()Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;
    .locals 1

    .line 28
    sget-boolean v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->DMA:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->senderType:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    :goto_0
    return-object v0
.end method

.method public isEnableProperty()Z
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->getSenderType()Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    move-result-object v0

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->DLC:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needQuota()Z
    .locals 1

    .line 24
    sget-boolean v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyType;->needQuota:Z

    :goto_0
    return v0
.end method
