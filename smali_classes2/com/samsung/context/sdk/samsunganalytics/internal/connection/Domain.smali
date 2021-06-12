.class public final enum Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

.field public static final enum DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

.field public static final enum POLICY:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

.field public static final enum REGISTRATION:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;


# instance fields
.field domain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 6
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    const-string v1, "REGISTRATION"

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "https://stg-api.di.atlas.samsung.com"

    goto :goto_0

    :cond_0
    const-string v2, "https://regi.di.atlas.samsung.com"

    :goto_0
    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->REGISTRATION:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    .line 7
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    const-string v1, "POLICY"

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "https://stg-api.di.atlas.samsung.com"

    goto :goto_1

    :cond_1
    const-string v2, "https://dc.di.atlas.samsung.com"

    :goto_1
    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->POLICY:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    .line 8
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    const-string v1, "DLS"

    const-string v2, ""

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->REGISTRATION:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->POLICY:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->DLS:Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

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

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->domain:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;
    .locals 1

    .line 5
    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    return-object p0
.end method

.method public static values()[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;
    .locals 1

    .line 5
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->$VALUES:[Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    invoke-virtual {v0}, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;

    return-object v0
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/connection/Domain;->domain:Ljava/lang/String;

    return-void
.end method
