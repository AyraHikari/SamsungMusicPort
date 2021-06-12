.class public final enum Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mz/common/network/request/RequestNTCommon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CONNECTION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CODE_ERROR:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

.field private static final synthetic ENUM$VALUES:[Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

.field public static final enum NETWORK_DATA_NULL:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

.field public static final enum NETWORK_FAIL:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

.field public static final enum NETWORK_SUCCESS:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

.field public static final enum SERVER_FAIL:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

.field public static final enum TIMEOUT:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 17
    new-instance v0, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    const-string v1, "NETWORK_SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    new-instance v0, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    const-string v1, "NETWORK_FAIL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_FAIL:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    new-instance v0, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    const-string v1, "SERVER_FAIL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->SERVER_FAIL:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    new-instance v0, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    const-string v1, "NETWORK_DATA_NULL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_DATA_NULL:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    new-instance v0, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    const-string v1, "CODE_ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->CODE_ERROR:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    new-instance v0, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    const-string v1, "TIMEOUT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->TIMEOUT:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    const/4 v0, 0x6

    .line 16
    new-array v0, v0, [Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    sget-object v1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_SUCCESS:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_FAIL:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->SERVER_FAIL:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->NETWORK_DATA_NULL:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->CODE_ERROR:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->TIMEOUT:Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    aput-object v1, v0, v7

    sput-object v0, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->ENUM$VALUES:[Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;
    .locals 1

    .line 1
    const-class v0, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    return-object p0
.end method

.method public static values()[Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;
    .locals 4

    .line 1
    sget-object v0, Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;->ENUM$VALUES:[Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    array-length v1, v0

    new-array v2, v1, [Lcom/mz/common/network/request/RequestNTCommon$CONNECTION;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
