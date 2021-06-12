.class public final enum Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

.field public static final enum DATA_DELETE:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

.field public static final enum DEVICE_CONTROLLER_DIR:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

.field public static final enum DLS_DIR:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

.field public static final enum DLS_DIR_BAT:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;


# instance fields
.field directory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 5
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    const-string v1, "DEVICE_CONTROLLER_DIR"

    const-string v2, "/v1/quotas"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DEVICE_CONTROLLER_DIR:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    .line 6
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    const-string v1, "DATA_DELETE"

    const-string v2, "/app/delete"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DATA_DELETE:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    .line 7
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    const-string v1, "DLS_DIR"

    const-string v2, ""

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DLS_DIR:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    .line 8
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    const-string v1, "DLS_DIR_BAT"

    const-string v2, ""

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DLS_DIR_BAT:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    const/4 v0, 0x4

    .line 4
    new-array v0, v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DEVICE_CONTROLLER_DIR:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DATA_DELETE:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DLS_DIR:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DLS_DIR_BAT:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->directory:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;
    .locals 1

    .line 4
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    return-object p0
.end method

.method public static values()[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;
    .locals 1

    .line 4
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    invoke-virtual {v0}, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    return-object v0
.end method


# virtual methods
.method public getDirectory()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->directory:Ljava/lang/String;

    return-object v0
.end method

.method public setDirectory(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->directory:Ljava/lang/String;

    return-void
.end method
