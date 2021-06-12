.class public final enum Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/BixbyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfirmMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum APPLY:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum COMMON:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum DELETE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum DISCARD:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum EXECUTE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum FORWARD:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum INQUIRE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum MERGE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum REPLY:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum RESET:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum SAVE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum SEND:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum TURN_ON:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

.field public static final enum UPDATE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 179
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string v1, "SEND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->SEND:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 183
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string v1, "DELETE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->DELETE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 187
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string v1, "TURN_ON"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->TURN_ON:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 191
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string v1, "APPLY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->APPLY:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 195
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string v1, "FORWARD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->FORWARD:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 199
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string v1, "MERGE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->MERGE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 203
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string v1, "DISCARD"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->DISCARD:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 207
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string v1, "RESET"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->RESET:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 211
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string v1, "UPDATE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->UPDATE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 215
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string v1, "EXECUTE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->EXECUTE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 219
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string v1, "INQUIRE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->INQUIRE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 223
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string v1, "SAVE"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->SAVE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 227
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string v1, "REPLY"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->REPLY:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    .line 231
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const-string v1, "COMMON"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->COMMON:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    const/16 v0, 0xe

    .line 175
    new-array v0, v0, [Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->SEND:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->DELETE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->TURN_ON:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->APPLY:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->FORWARD:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->MERGE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->DISCARD:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->RESET:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->UPDATE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->EXECUTE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->INQUIRE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v1, v0, v12

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->SAVE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->REPLY:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v1, v0, v14

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->COMMON:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    aput-object v1, v0, v15

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->$VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 175
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;
    .locals 1

    .line 175
    const-class v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;
    .locals 1

    .line 175
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->$VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 238
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->b:[I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 270
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "\"confirmMode\":\"common\""

    return-object v0

    :pswitch_1
    const-string v0, "\"confirmMode\":\"reply\""

    return-object v0

    :pswitch_2
    const-string v0, "\"confirmMode\":\"save\""

    return-object v0

    :pswitch_3
    const-string v0, "\"confirmMode\":\"inquire\""

    return-object v0

    :pswitch_4
    const-string v0, "\"confirmMode\":\"execute\""

    return-object v0

    :pswitch_5
    const-string v0, "\"confirmMode\":\"update\""

    return-object v0

    :pswitch_6
    const-string v0, "\"confirmMode\":\"reset\""

    return-object v0

    :pswitch_7
    const-string v0, "\"confirmMode\":\"discard\""

    return-object v0

    :pswitch_8
    const-string v0, "\"confirmMode\":\"merge\""

    return-object v0

    :pswitch_9
    const-string v0, "\"confirmMode\":\"forward\""

    return-object v0

    :pswitch_a
    const-string v0, "\"confirmMode\":\"apply\""

    return-object v0

    :pswitch_b
    const-string v0, "\"confirmMode\":\"turnOn\""

    return-object v0

    :pswitch_c
    const-string v0, "\"confirmMode\":\"delete\""

    return-object v0

    :pswitch_d
    const-string v0, "\"confirmMode\":\"send\""

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
