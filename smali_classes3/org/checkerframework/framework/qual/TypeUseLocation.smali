.class public final enum Lorg/checkerframework/framework/qual/TypeUseLocation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/framework/qual/TypeUseLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum ALL:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum EXCEPTION_PARAMETER:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum EXPLICIT_LOWER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum EXPLICIT_UPPER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum FIELD:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum IMPLICIT_LOWER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum IMPLICIT_UPPER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum LOCAL_VARIABLE:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum LOWER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum OTHERWISE:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum PARAMETER:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum RECEIVER:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum RESOURCE_VARIABLE:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum RETURN:Lorg/checkerframework/framework/qual/TypeUseLocation;

.field public static final enum UPPER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 15
    new-instance v0, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v1, "FIELD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeUseLocation;->FIELD:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 23
    new-instance v0, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v1, "LOCAL_VARIABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeUseLocation;->LOCAL_VARIABLE:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 26
    new-instance v0, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v1, "RESOURCE_VARIABLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeUseLocation;->RESOURCE_VARIABLE:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 29
    new-instance v0, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v1, "EXCEPTION_PARAMETER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeUseLocation;->EXCEPTION_PARAMETER:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 32
    new-instance v0, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v1, "RECEIVER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeUseLocation;->RECEIVER:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 35
    new-instance v0, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v1, "PARAMETER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeUseLocation;->PARAMETER:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 38
    new-instance v0, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v1, "RETURN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeUseLocation;->RETURN:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 45
    new-instance v0, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v1, "LOWER_BOUND"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeUseLocation;->LOWER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 50
    new-instance v0, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v1, "EXPLICIT_LOWER_BOUND"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeUseLocation;->EXPLICIT_LOWER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 55
    new-instance v0, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v1, "IMPLICIT_LOWER_BOUND"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeUseLocation;->IMPLICIT_LOWER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 67
    new-instance v0, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v1, "UPPER_BOUND"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeUseLocation;->UPPER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 75
    new-instance v0, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v1, "EXPLICIT_UPPER_BOUND"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeUseLocation;->EXPLICIT_UPPER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 82
    new-instance v0, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v1, "IMPLICIT_UPPER_BOUND"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeUseLocation;->IMPLICIT_UPPER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 85
    new-instance v0, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v1, "OTHERWISE"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeUseLocation;->OTHERWISE:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 91
    new-instance v0, Lorg/checkerframework/framework/qual/TypeUseLocation;

    const-string v1, "ALL"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lorg/checkerframework/framework/qual/TypeUseLocation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/checkerframework/framework/qual/TypeUseLocation;->ALL:Lorg/checkerframework/framework/qual/TypeUseLocation;

    const/16 v0, 0xf

    .line 12
    new-array v0, v0, [Lorg/checkerframework/framework/qual/TypeUseLocation;

    sget-object v1, Lorg/checkerframework/framework/qual/TypeUseLocation;->FIELD:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v1, v0, v2

    sget-object v1, Lorg/checkerframework/framework/qual/TypeUseLocation;->LOCAL_VARIABLE:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v1, v0, v3

    sget-object v1, Lorg/checkerframework/framework/qual/TypeUseLocation;->RESOURCE_VARIABLE:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v1, v0, v4

    sget-object v1, Lorg/checkerframework/framework/qual/TypeUseLocation;->EXCEPTION_PARAMETER:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v1, v0, v5

    sget-object v1, Lorg/checkerframework/framework/qual/TypeUseLocation;->RECEIVER:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v1, v0, v6

    sget-object v1, Lorg/checkerframework/framework/qual/TypeUseLocation;->PARAMETER:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v1, v0, v7

    sget-object v1, Lorg/checkerframework/framework/qual/TypeUseLocation;->RETURN:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v1, v0, v8

    sget-object v1, Lorg/checkerframework/framework/qual/TypeUseLocation;->LOWER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v1, v0, v9

    sget-object v1, Lorg/checkerframework/framework/qual/TypeUseLocation;->EXPLICIT_LOWER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v1, v0, v10

    sget-object v1, Lorg/checkerframework/framework/qual/TypeUseLocation;->IMPLICIT_LOWER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v1, v0, v11

    sget-object v1, Lorg/checkerframework/framework/qual/TypeUseLocation;->UPPER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v1, v0, v12

    sget-object v1, Lorg/checkerframework/framework/qual/TypeUseLocation;->EXPLICIT_UPPER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v1, v0, v13

    sget-object v1, Lorg/checkerframework/framework/qual/TypeUseLocation;->IMPLICIT_UPPER_BOUND:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v1, v0, v14

    sget-object v1, Lorg/checkerframework/framework/qual/TypeUseLocation;->OTHERWISE:Lorg/checkerframework/framework/qual/TypeUseLocation;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/checkerframework/framework/qual/TypeUseLocation;->ALL:Lorg/checkerframework/framework/qual/TypeUseLocation;

    aput-object v1, v0, v15

    sput-object v0, Lorg/checkerframework/framework/qual/TypeUseLocation;->$VALUES:[Lorg/checkerframework/framework/qual/TypeUseLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/framework/qual/TypeUseLocation;
    .locals 1

    .line 12
    const-class v0, Lorg/checkerframework/framework/qual/TypeUseLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/checkerframework/framework/qual/TypeUseLocation;

    return-object p0
.end method

.method public static values()[Lorg/checkerframework/framework/qual/TypeUseLocation;
    .locals 1

    .line 12
    sget-object v0, Lorg/checkerframework/framework/qual/TypeUseLocation;->$VALUES:[Lorg/checkerframework/framework/qual/TypeUseLocation;

    invoke-virtual {v0}, [Lorg/checkerframework/framework/qual/TypeUseLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/framework/qual/TypeUseLocation;

    return-object v0
.end method
