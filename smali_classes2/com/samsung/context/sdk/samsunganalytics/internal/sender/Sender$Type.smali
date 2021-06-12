.class public final enum Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

.field public static final enum DLC:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

.field public static final enum DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

.field public static final enum DMA:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 17
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    const-string v1, "DLC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->DLC:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    .line 18
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    const-string v1, "DLS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    .line 19
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    const-string v1, "DMA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->DMA:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    const/4 v0, 0x3

    .line 16
    new-array v0, v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->DLC:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->DMA:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;
    .locals 1

    .line 16
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    return-object p0
.end method

.method public static values()[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;
    .locals 1

    .line 16
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    invoke-virtual {v0}, [Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/sender/Sender$Type;

    return-object v0
.end method
