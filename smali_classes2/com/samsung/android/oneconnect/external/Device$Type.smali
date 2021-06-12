.class final enum Lcom/samsung/android/oneconnect/external/Device$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/oneconnect/external/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/oneconnect/external/Device$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum ACCESSORY:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum AIR_DRESSER:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum AIR_PURIFIER:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum AI_SPEAKER_LUX:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum AV:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum AV_AKG_VL:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum AV_SOUNDBAR:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum BD:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum CAMCORDER:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum CAMERA:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum COOKTOP:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum DISHWASHER:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum DRYER:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum E_BOARD:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum FLOOR_AC:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum HEADPHONE:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum HOOD:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum IOT:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum KIMCHI_REFRIGERATOR:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum MICROWAVE_OVEN:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum MONITOR:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum OVEN:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum PC:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum PHONE:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum PRINTER:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum RANGE:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum REFRIGERATOR:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum ROBOT_VACUUM:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum ROOM_AC:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum SIGNAGE:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum SMART_HOME:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum SPEAKER:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum SYSTEM_AC:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum TABLET:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum TAG_CONNECT_TAG:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum TV:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum WASHER:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum WATCH:Lcom/samsung/android/oneconnect/external/Device$Type;

.field public static final enum WIFIHUB:Lcom/samsung/android/oneconnect/external/Device$Type;


# instance fields
.field cloudType:Ljava/lang/String;

.field customType:Ljava/lang/String;

.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 163
    new-instance v6, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v1, "PHONE"

    const-string v4, "phone"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/samsung/android/oneconnect/external/Device$Type;->PHONE:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 164
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v8, "TABLET"

    const-string v11, "tablet"

    const/4 v9, 0x1

    const/4 v10, 0x2

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->TABLET:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 165
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v2, "PC"

    const-string v5, "pc"

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->PC:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 166
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v8, "ACCESSORY"

    const-string v11, "accessory"

    const/4 v9, 0x3

    const/4 v10, 0x4

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->ACCESSORY:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 167
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v2, "TV"

    const-string v5, "tv"

    const-string v6, "oic.d.tv"

    const/4 v3, 0x4

    const/4 v4, 0x5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->TV:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 168
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v8, "AV"

    const-string v12, "x.com.st.d.networkaudio"

    const/4 v9, 0x5

    const/4 v10, 0x6

    const/4 v11, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->AV:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 169
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v2, "AV_AKG_VL"

    const-string v5, "av"

    const/4 v3, 0x6

    const/4 v4, 0x7

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->AV_AKG_VL:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 170
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v8, "AV_SOUNDBAR"

    const-string v11, "soundbar"

    const-string v12, "oic.d.networkaudio"

    const/4 v9, 0x7

    const/16 v10, 0x8

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->AV_SOUNDBAR:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 172
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v2, "SIGNAGE"

    const-string v5, "signage"

    const/16 v3, 0x8

    const/16 v4, 0x9

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->SIGNAGE:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 173
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v8, "REFRIGERATOR"

    const-string v11, "refrigerator"

    const-string v12, "oic.d.refrigerator"

    const/16 v9, 0x9

    const/16 v10, 0xa

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->REFRIGERATOR:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 176
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v2, "WASHER"

    const-string v5, "washer"

    const-string v6, "oic.d.washer"

    const/16 v3, 0xa

    const/16 v4, 0xb

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->WASHER:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 177
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v8, "DRYER"

    const-string v11, "dryer"

    const-string v12, "oic.d.dryer"

    const/16 v9, 0xb

    const/16 v10, 0xc

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->DRYER:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 178
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v2, "FLOOR_AC"

    const-string v5, "floor_a_c"

    const-string v6, "oic.d.airconditioner"

    const/16 v3, 0xc

    const/16 v4, 0xd

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->FLOOR_AC:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 179
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v8, "ROOM_AC"

    const-string v11, "room_a_c"

    const/16 v9, 0xd

    const/16 v10, 0xe

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->ROOM_AC:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 180
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v2, "SYSTEM_AC"

    const-string v5, "system_a_c"

    const/16 v3, 0xe

    const/16 v4, 0xf

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->SYSTEM_AC:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 181
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v8, "AIR_PURIFIER"

    const-string v11, "air_purifier"

    const-string v12, "oic.d.airpurifier"

    const/16 v9, 0xf

    const/16 v10, 0x10

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->AIR_PURIFIER:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 184
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v2, "OVEN"

    const-string v5, "oven"

    const-string v6, "oic.d.oven"

    const/16 v3, 0x10

    const/16 v4, 0x11

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->OVEN:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 185
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v8, "RANGE"

    const-string v11, "range"

    const-string v12, "oic.d.range"

    const/16 v9, 0x11

    const/16 v10, 0x12

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->RANGE:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 186
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v2, "ROBOT_VACUUM"

    const-string v5, "robot_vacuum"

    const-string v6, "oic.d.robotcleaner"

    const/16 v3, 0x12

    const/16 v4, 0x13

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->ROBOT_VACUUM:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 189
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v8, "SMART_HOME"

    const-string v11, "smart_home"

    const/16 v9, 0x13

    const/16 v10, 0x14

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->SMART_HOME:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 190
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v2, "PRINTER"

    const-string v5, "printer"

    const/16 v3, 0x14

    const/16 v4, 0x15

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->PRINTER:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 191
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v8, "HEADPHONE"

    const-string v11, "headphone"

    const/16 v9, 0x15

    const/16 v10, 0x16

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->HEADPHONE:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 192
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v2, "SPEAKER"

    const-string v5, "speaker"

    const/16 v3, 0x16

    const/16 v4, 0x17

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->SPEAKER:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 193
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v8, "MONITOR"

    const-string v11, "monitor"

    const/16 v9, 0x17

    const/16 v10, 0x18

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->MONITOR:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 194
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v2, "E_BOARD"

    const-string v5, "e_board"

    const/16 v3, 0x18

    const/16 v4, 0x19

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->E_BOARD:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 195
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v8, "IOT"

    const-string v11, "iot"

    const/16 v9, 0x19

    const/16 v10, 0x1a

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->IOT:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 196
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v2, "CAMERA"

    const-string v5, "camera"

    const-string v6, "oic.d.camera"

    const/16 v3, 0x1a

    const/16 v4, 0x1b

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->CAMERA:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 197
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v8, "CAMCORDER"

    const-string v11, "camcorder"

    const/16 v9, 0x1b

    const/16 v10, 0x1c

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->CAMCORDER:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 198
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v2, "COOKTOP"

    const-string v5, "cooktop"

    const/16 v3, 0x1c

    const/16 v4, 0x1d

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->COOKTOP:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 199
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v8, "DISHWASHER"

    const-string v11, "dishwasher"

    const-string v12, "oic.d.dishwasher"

    const/16 v9, 0x1d

    const/16 v10, 0x1e

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->DISHWASHER:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 200
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v2, "MICROWAVE_OVEN"

    const-string v5, "microwave_oven"

    const-string v6, "oic.d.microoven"

    const/16 v3, 0x1e

    const/16 v4, 0x1f

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->MICROWAVE_OVEN:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 203
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v8, "HOOD"

    const-string v11, "hood"

    const/16 v9, 0x1f

    const/16 v10, 0x20

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->HOOD:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 204
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v2, "KIMCHI_REFRIGERATOR"

    const-string v5, "kimchi_refrigerator"

    const-string v6, "oic.d.krefrigerator"

    const/16 v3, 0x20

    const/16 v4, 0x21

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->KIMCHI_REFRIGERATOR:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 207
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v8, "WATCH"

    const-string v11, "wearable"

    const-string v12, "x.com.samsung.d.wearable.gear"

    const/16 v9, 0x21

    const/16 v10, 0x22

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->WATCH:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 208
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v2, "WIFIHUB"

    const-string v5, "wifihub"

    const-string v6, "oic.d.wirelessrouter"

    const/16 v3, 0x22

    const/16 v4, 0x23

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->WIFIHUB:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 209
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v8, "BD"

    const-string v11, "blueray"

    const-string v12, "x.com.samsung.bdplayer"

    const/16 v9, 0x23

    const/16 v10, 0x24

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->BD:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 210
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v2, "TAG_CONNECT_TAG"

    const-string v5, "dot_locator"

    const-string v6, "x.com.samsung.d.tracker"

    const/16 v3, 0x24

    const/16 v4, 0x25

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->TAG_CONNECT_TAG:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 212
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v8, "AIR_DRESSER"

    const-string v11, "steamcloset"

    const-string v12, "x.com.st.d.steamcloset"

    const/16 v9, 0x25

    const/16 v10, 0x26

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->AIR_DRESSER:Lcom/samsung/android/oneconnect/external/Device$Type;

    .line 215
    new-instance v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    const-string v2, "AI_SPEAKER_LUX"

    const-string v5, "lux"

    const-string v6, "oic.d.speaker"

    const/16 v3, 0x26

    const/16 v4, 0x27

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/oneconnect/external/Device$Type;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->AI_SPEAKER_LUX:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v0, 0x27

    .line 162
    new-array v0, v0, [Lcom/samsung/android/oneconnect/external/Device$Type;

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->PHONE:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->TABLET:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->PC:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->ACCESSORY:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->TV:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->AV:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->AV_AKG_VL:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->AV_SOUNDBAR:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->SIGNAGE:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->REFRIGERATOR:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->WASHER:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->DRYER:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->FLOOR_AC:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->ROOM_AC:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->SYSTEM_AC:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->AIR_PURIFIER:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->OVEN:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->RANGE:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->ROBOT_VACUUM:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->SMART_HOME:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->PRINTER:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->HEADPHONE:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->SPEAKER:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->MONITOR:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->E_BOARD:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->IOT:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->CAMERA:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->CAMCORDER:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->COOKTOP:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->DISHWASHER:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->MICROWAVE_OVEN:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->HOOD:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->KIMCHI_REFRIGERATOR:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->WATCH:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->WIFIHUB:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->BD:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->TAG_CONNECT_TAG:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->AIR_DRESSER:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/oneconnect/external/Device$Type;->AI_SPEAKER_LUX:Lcom/samsung/android/oneconnect/external/Device$Type;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->$VALUES:[Lcom/samsung/android/oneconnect/external/Device$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 221
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 222
    iput p3, p0, Lcom/samsung/android/oneconnect/external/Device$Type;->value:I

    .line 223
    iput-object p4, p0, Lcom/samsung/android/oneconnect/external/Device$Type;->customType:Ljava/lang/String;

    .line 224
    iput-object p5, p0, Lcom/samsung/android/oneconnect/external/Device$Type;->cloudType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/oneconnect/external/Device$Type;
    .locals 1

    .line 162
    const-class v0, Lcom/samsung/android/oneconnect/external/Device$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/oneconnect/external/Device$Type;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/oneconnect/external/Device$Type;
    .locals 1

    .line 162
    sget-object v0, Lcom/samsung/android/oneconnect/external/Device$Type;->$VALUES:[Lcom/samsung/android/oneconnect/external/Device$Type;

    invoke-virtual {v0}, [Lcom/samsung/android/oneconnect/external/Device$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/oneconnect/external/Device$Type;

    return-object v0
.end method
