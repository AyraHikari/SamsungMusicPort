.class public final enum Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

.field public static final enum DATA_DELETE:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

.field public static final enum GET_POLICY:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

.field public static final enum SEND_BUFFERED_LOG:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

.field public static final enum SEND_LOG:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;


# instance fields
.field directory:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

.field domain:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

.field method:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 5
    new-instance v6, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    const-string v1, "DATA_DELETE"

    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->REGISTRATION:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    sget-object v4, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DATA_DELETE:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    sget-object v5, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->POST:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;-><init>(Ljava/lang/String;ILcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;)V

    sput-object v6, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->DATA_DELETE:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    .line 6
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    const-string v8, "GET_POLICY"

    sget-object v10, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->POLICY:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    sget-object v11, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DEVICE_CONTROLLER_DIR:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    sget-object v12, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->GET:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;-><init>(Ljava/lang/String;ILcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->GET_POLICY:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    .line 7
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    const-string v2, "SEND_LOG"

    sget-object v4, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    sget-object v5, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DLS_DIR:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    sget-object v6, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->POST:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;-><init>(Ljava/lang/String;ILcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->SEND_LOG:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    .line 8
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    const-string v8, "SEND_BUFFERED_LOG"

    sget-object v10, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    sget-object v11, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->DLS_DIR_BAT:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    sget-object v12, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->POST:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    const/4 v9, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;-><init>(Ljava/lang/String;ILcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->SEND_BUFFERED_LOG:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    const/4 v0, 0x4

    .line 4
    new-array v0, v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->DATA_DELETE:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->GET_POLICY:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->SEND_LOG:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->SEND_BUFFERED_LOG:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->domain:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    .line 14
    iput-object p4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->directory:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    .line 15
    iput-object p5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->method:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;
    .locals 1

    .line 4
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    return-object p0
.end method

.method public static values()[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;
    .locals 1

    .line 4
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    invoke-virtual {v0}, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;

    return-object v0
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->method:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->domain:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/API;->directory:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Directory;->getDirectory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
