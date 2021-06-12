.class public final enum Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Depth"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

.field public static final enum ONE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

.field public static final enum THREE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

.field public static final enum TWO_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;


# instance fields
.field private collDlm:Ljava/lang/String;

.field private keyvalueDlm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    const-string v1, "ONE_DEPTH"

    const-string v2, "\u0002"

    const-string v3, "\u0003"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->ONE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    .line 11
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    const-string v1, "TWO_DEPTH"

    const-string v2, "\u0004"

    const-string v3, "\u0005"

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->TWO_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    .line 12
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    const-string v1, "THREE_DEPTH"

    const-string v2, "\u0006"

    const-string v3, "\u0007"

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->THREE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    const/4 v0, 0x3

    .line 9
    new-array v0, v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->ONE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->TWO_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->THREE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->collDlm:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->keyvalueDlm:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;
    .locals 1

    .line 9
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    return-object p0
.end method

.method public static values()[Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;
    .locals 1

    .line 9
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    invoke-virtual {v0}, [Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    return-object v0
.end method


# virtual methods
.method public getCollectionDLM()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->collDlm:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyValueDLM()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->keyvalueDlm:Ljava/lang/String;

    return-object v0
.end method
