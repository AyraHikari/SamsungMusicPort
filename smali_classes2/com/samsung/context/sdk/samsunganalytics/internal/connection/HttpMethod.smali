.class public final enum Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

.field public static final enum GET:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

.field public static final enum POST:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;


# instance fields
.field method:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    const-string v1, "GET"

    const-string v2, "GET"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->GET:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    const-string v1, "POST"

    const-string v2, "POST"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->POST:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->GET:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->POST:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

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

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->method:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;
    .locals 1

    .line 3
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    return-object p0
.end method

.method public static values()[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;
    .locals 1

    .line 3
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    invoke-virtual {v0}, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;

    return-object v0
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/HttpMethod;->method:Ljava/lang/String;

    return-object v0
.end method
