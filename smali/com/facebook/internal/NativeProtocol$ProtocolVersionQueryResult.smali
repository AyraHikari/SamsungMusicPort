.class public Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/NativeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtocolVersionQueryResult"
.end annotation


# instance fields
.field private nativeAppInfo:Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

.field private protocolVersion:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1013
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;)Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .locals 0

    .line 992
    iget-object p0, p0, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->nativeAppInfo:Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    return-object p0
.end method

.method static synthetic access$800(Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;)I
    .locals 0

    .line 992
    iget p0, p0, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->protocolVersion:I

    return p0
.end method

.method public static create(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;I)Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;
    .locals 1

    .line 999
    new-instance v0, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;

    invoke-direct {v0}, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;-><init>()V

    .line 1000
    iput-object p0, v0, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->nativeAppInfo:Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 1001
    iput p1, v0, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->protocolVersion:I

    return-object v0
.end method

.method public static createEmpty()Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;
    .locals 2

    .line 1007
    new-instance v0, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;

    invoke-direct {v0}, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;-><init>()V

    const/4 v1, -0x1

    .line 1008
    iput v1, v0, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->protocolVersion:I

    return-object v0
.end method


# virtual methods
.method public getAppInfo()Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 1017
    iget-object v0, p0, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->nativeAppInfo:Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    return-object v0
.end method

.method public getProtocolVersion()I
    .locals 1

    .line 1021
    iget v0, p0, Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;->protocolVersion:I

    return v0
.end method
