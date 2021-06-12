.class final enum Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/MilkDialogReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

.field public static final enum ACCOUNT_LOGIN_FAILED:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

.field public static final enum DOWNLOAD_DEVICE_OVERFLOW:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

.field public static final enum DRM_EXPIRED:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

.field public static final enum DRM_LICENSE_ACQUIRE_AGAIN:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

.field public static final enum DRM_NOT_AUTO_TIME:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

.field public static final enum EXPLICIT_INVALID:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

.field public static final enum LEGAL_INFORMATION:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

.field public static final enum NETWORK_TRANSPORT_INIT_FAILED:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

.field public static final enum ONLINE_PLAYLIST_SYNC:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

.field public static final enum SHOW_UPSELL:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 62
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    const-string v1, "ACCOUNT_LOGIN_FAILED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ACCOUNT_LOGIN_FAILED:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    .line 63
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    const-string v1, "ONLINE_PLAYLIST_SYNC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ONLINE_PLAYLIST_SYNC:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    .line 64
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    const-string v1, "EXPLICIT_INVALID"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->EXPLICIT_INVALID:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    .line 65
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    const-string v1, "SHOW_UPSELL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->SHOW_UPSELL:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    .line 66
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    const-string v1, "DRM_EXPIRED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->DRM_EXPIRED:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    .line 67
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    const-string v1, "DRM_NOT_AUTO_TIME"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->DRM_NOT_AUTO_TIME:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    .line 68
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    const-string v1, "NETWORK_TRANSPORT_INIT_FAILED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->NETWORK_TRANSPORT_INIT_FAILED:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    .line 69
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    const-string v1, "DOWNLOAD_DEVICE_OVERFLOW"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->DOWNLOAD_DEVICE_OVERFLOW:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    .line 70
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    const-string v1, "DRM_LICENSE_ACQUIRE_AGAIN"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->DRM_LICENSE_ACQUIRE_AGAIN:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    .line 71
    new-instance v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    const-string v1, "LEGAL_INFORMATION"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->LEGAL_INFORMATION:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    const/16 v0, 0xa

    .line 61
    new-array v0, v0, [Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ACCOUNT_LOGIN_FAILED:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->ONLINE_PLAYLIST_SYNC:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->EXPLICIT_INVALID:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->SHOW_UPSELL:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->DRM_EXPIRED:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->DRM_NOT_AUTO_TIME:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->NETWORK_TRANSPORT_INIT_FAILED:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->DOWNLOAD_DEVICE_OVERFLOW:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->DRM_LICENSE_ACQUIRE_AGAIN:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->LEGAL_INFORMATION:Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    aput-object v1, v0, v11

    sput-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->$VALUES:[Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;
    .locals 1

    .line 61
    const-class v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;
    .locals 1

    .line 61
    sget-object v0, Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->$VALUES:[Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/MilkDialogReceiver$Action;

    return-object v0
.end method
