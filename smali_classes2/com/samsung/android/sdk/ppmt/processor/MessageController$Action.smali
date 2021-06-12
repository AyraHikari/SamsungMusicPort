.class public final enum Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/ppmt/processor/MessageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

.field public static final enum DELETE_DB_DATA:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

.field public static final enum INITIALIZE:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

.field public static final enum SAVE_N_SEND_APPUSAGE:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

.field public static final enum SAVE_N_SEND_CUSTOM_DATA:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

.field public static final enum SAVE_N_SEND_DAU:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

.field public static final enum SAVE_N_SEND_MARKETING_AGREE:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

.field public static final enum SAVE_N_SEND_TRACKING_DATA:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

.field public static final enum SEND_TRACKING_DATA_IF_EXIST:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

.field public static final enum UPDATE_N_SEND_IMM_REG_DATA:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

.field public static final enum UPDATE_N_SEND_REG_DATA_FOR_INIT:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 30
    new-instance v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    const-string v1, "DELETE_DB_DATA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->DELETE_DB_DATA:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    .line 31
    new-instance v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    const-string v1, "SAVE_N_SEND_TRACKING_DATA"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->SAVE_N_SEND_TRACKING_DATA:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    .line 32
    new-instance v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    const-string v1, "SEND_TRACKING_DATA_IF_EXIST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->SEND_TRACKING_DATA_IF_EXIST:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    .line 33
    new-instance v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    const-string v1, "SAVE_N_SEND_APPUSAGE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->SAVE_N_SEND_APPUSAGE:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    .line 34
    new-instance v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    const-string v1, "SAVE_N_SEND_CUSTOM_DATA"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->SAVE_N_SEND_CUSTOM_DATA:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    .line 35
    new-instance v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    const-string v1, "SAVE_N_SEND_DAU"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->SAVE_N_SEND_DAU:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    .line 36
    new-instance v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    const-string v1, "SAVE_N_SEND_MARKETING_AGREE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->SAVE_N_SEND_MARKETING_AGREE:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    .line 37
    new-instance v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    const-string v1, "UPDATE_N_SEND_REG_DATA_FOR_INIT"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->UPDATE_N_SEND_REG_DATA_FOR_INIT:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    .line 38
    new-instance v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    const-string v1, "UPDATE_N_SEND_IMM_REG_DATA"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->UPDATE_N_SEND_IMM_REG_DATA:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    .line 39
    new-instance v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    const-string v1, "INITIALIZE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->INITIALIZE:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    const/16 v0, 0xa

    .line 29
    new-array v0, v0, [Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    sget-object v1, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->DELETE_DB_DATA:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->SAVE_N_SEND_TRACKING_DATA:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->SEND_TRACKING_DATA_IF_EXIST:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->SAVE_N_SEND_APPUSAGE:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->SAVE_N_SEND_CUSTOM_DATA:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->SAVE_N_SEND_DAU:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->SAVE_N_SEND_MARKETING_AGREE:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->UPDATE_N_SEND_REG_DATA_FOR_INIT:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->UPDATE_N_SEND_IMM_REG_DATA:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->INITIALIZE:Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    aput-object v1, v0, v11

    sput-object v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->$VALUES:[Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;
    .locals 1

    .line 29
    const-class v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;
    .locals 1

    .line 29
    sget-object v0, Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->$VALUES:[Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/ppmt/processor/MessageController$Action;

    return-object v0
.end method
