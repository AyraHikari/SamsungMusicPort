.class public final enum Lcom/google/android/gms/internal/zziu$zza$zzb;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zziu$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/zziu$zza$zzb;",
        ">;"
    }
.end annotation


# static fields
.field private static enum zzbbl:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field public static final enum zzbbm:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field public static final enum zzbbn:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field public static final enum zzbbo:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field public static final enum zzbbp:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field public static final enum zzbbq:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field private static enum zzbbr:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field private static enum zzbbs:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field private static enum zzbbt:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field private static enum zzbbu:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field private static enum zzbbv:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field private static enum zzbbw:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field private static enum zzbbx:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field private static enum zzbby:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field private static enum zzbbz:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field private static enum zzbca:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field private static enum zzbcb:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field private static enum zzbcc:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field private static enum zzbcd:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field private static enum zzbce:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field private static enum zzbcf:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field private static enum zzbcg:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field private static enum zzbch:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field private static enum zzbci:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field private static enum zzbcj:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field private static enum zzbck:Lcom/google/android/gms/internal/zziu$zza$zzb;

.field private static final zzbcl:Lcom/google/android/gms/internal/zzfgb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzfgb<",
            "Lcom/google/android/gms/internal/zziu$zza$zzb;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic zzbcm:[Lcom/google/android/gms/internal/zziu$zza$zzb;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "UNKNOWN_EVENT_TYPE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbl:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "AD_REQUEST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbm:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "AD_LOADED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbn:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "AD_FAILED_TO_LOAD"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbo:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "AD_FAILED_TO_LOAD_NO_FILL"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbp:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "AD_IMPRESSION"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbq:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "AD_FIRST_CLICK"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbr:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "AD_SUBSEQUENT_CLICK"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbs:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "REQUEST_WILL_START"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbt:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "REQUEST_DID_END"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbu:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "REQUEST_WILL_UPDATE_SIGNALS"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbv:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "REQUEST_DID_UPDATE_SIGNALS"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbw:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "REQUEST_WILL_BUILD_URL"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14, v14}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbx:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "REQUEST_DID_BUILD_URL"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v15}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbby:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "REQUEST_WILL_MAKE_NETWORK_REQUEST"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v15}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbz:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "REQUEST_DID_RECEIVE_NETWORK_RESPONSE"

    const/16 v15, 0xf

    const/16 v14, 0xf

    invoke-direct {v0, v1, v15, v14}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbca:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "REQUEST_WILL_PROCESS_RESPONSE"

    const/16 v14, 0x10

    const/16 v15, 0x10

    invoke-direct {v0, v1, v14, v15}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbcb:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "REQUEST_DID_PROCESS_RESPONSE"

    const/16 v14, 0x11

    const/16 v15, 0x11

    invoke-direct {v0, v1, v14, v15}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbcc:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "REQUEST_WILL_RENDER"

    const/16 v14, 0x12

    const/16 v15, 0x12

    invoke-direct {v0, v1, v14, v15}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbcd:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "REQUEST_DID_RENDER"

    const/16 v14, 0x13

    const/16 v15, 0x13

    invoke-direct {v0, v1, v14, v15}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbce:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "REQUEST_WILL_UPDATE_GMS_SIGNALS"

    const/16 v14, 0x14

    const/16 v15, 0x3e8

    invoke-direct {v0, v1, v14, v15}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbcf:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "REQUEST_DID_UPDATE_GMS_SIGNALS"

    const/16 v14, 0x15

    const/16 v15, 0x3e9

    invoke-direct {v0, v1, v14, v15}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbcg:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "REQUEST_FAILED_TO_UPDATE_GMS_SIGNALS"

    const/16 v14, 0x16

    const/16 v15, 0x3ea

    invoke-direct {v0, v1, v14, v15}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbch:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "REQUEST_FAILED_TO_BUILD_URL"

    const/16 v14, 0x17

    const/16 v15, 0x3eb

    invoke-direct {v0, v1, v14, v15}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbci:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "REQUEST_FAILED_TO_MAKE_NETWORK_REQUEST"

    const/16 v14, 0x18

    const/16 v15, 0x3ec

    invoke-direct {v0, v1, v14, v15}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbcj:Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziu$zza$zzb;

    const-string v1, "REQUEST_FAILED_TO_PROCESS_RESPONSE"

    const/16 v14, 0x19

    const/16 v15, 0x3ed

    invoke-direct {v0, v1, v14, v15}, Lcom/google/android/gms/internal/zziu$zza$zzb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbck:Lcom/google/android/gms/internal/zziu$zza$zzb;

    const/16 v0, 0x1a

    new-array v0, v0, [Lcom/google/android/gms/internal/zziu$zza$zzb;

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbl:Lcom/google/android/gms/internal/zziu$zza$zzb;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbm:Lcom/google/android/gms/internal/zziu$zza$zzb;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbn:Lcom/google/android/gms/internal/zziu$zza$zzb;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbo:Lcom/google/android/gms/internal/zziu$zza$zzb;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbp:Lcom/google/android/gms/internal/zziu$zza$zzb;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbq:Lcom/google/android/gms/internal/zziu$zza$zzb;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbr:Lcom/google/android/gms/internal/zziu$zza$zzb;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbs:Lcom/google/android/gms/internal/zziu$zza$zzb;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbt:Lcom/google/android/gms/internal/zziu$zza$zzb;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbu:Lcom/google/android/gms/internal/zziu$zza$zzb;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbv:Lcom/google/android/gms/internal/zziu$zza$zzb;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbw:Lcom/google/android/gms/internal/zziu$zza$zzb;

    aput-object v1, v0, v13

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbx:Lcom/google/android/gms/internal/zziu$zza$zzb;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbby:Lcom/google/android/gms/internal/zziu$zza$zzb;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbbz:Lcom/google/android/gms/internal/zziu$zza$zzb;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbca:Lcom/google/android/gms/internal/zziu$zza$zzb;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbcb:Lcom/google/android/gms/internal/zziu$zza$zzb;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbcc:Lcom/google/android/gms/internal/zziu$zza$zzb;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbcd:Lcom/google/android/gms/internal/zziu$zza$zzb;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbce:Lcom/google/android/gms/internal/zziu$zza$zzb;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbcf:Lcom/google/android/gms/internal/zziu$zza$zzb;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbcg:Lcom/google/android/gms/internal/zziu$zza$zzb;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbch:Lcom/google/android/gms/internal/zziu$zza$zzb;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbci:Lcom/google/android/gms/internal/zziu$zza$zzb;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbcj:Lcom/google/android/gms/internal/zziu$zza$zzb;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbck:Lcom/google/android/gms/internal/zziu$zza$zzb;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbcm:[Lcom/google/android/gms/internal/zziu$zza$zzb;

    new-instance v0, Lcom/google/android/gms/internal/zziw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zziw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbcl:Lcom/google/android/gms/internal/zzfgb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/zziu$zza$zzb;->value:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/zziu$zza$zzb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zziu$zza$zzb;->zzbcm:[Lcom/google/android/gms/internal/zziu$zza$zzb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zziu$zza$zzb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zziu$zza$zzb;

    return-object v0
.end method


# virtual methods
.method public final zzhq()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zziu$zza$zzb;->value:I

    return v0
.end method
