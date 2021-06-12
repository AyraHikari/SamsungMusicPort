.class public final enum Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum ADD:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum ADD_AND_PLAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum BACK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum CHANGE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum CLOSE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum CLOSE_AND_LAUNCH:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum CREATE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum CREATE_AND_PLAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum CREATE_QUESTION:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum DO_NOT_SHOW:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum EMERGENCY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum LAUNCH:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum NEXT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum ORDER:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum PAUSE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum PLAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum PREV:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum SEND_LOG:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum SHARE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field public static final enum UPDATE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 56
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "LAUNCH"

    const-string v2, "launch"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->LAUNCH:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 57
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "PLAY"

    const-string v2, "play"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->PLAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 58
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "PAUSE"

    const-string v2, "pause"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->PAUSE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 59
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "PREV"

    const-string v2, "prev"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->PREV:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 60
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "NEXT"

    const-string v2, "next"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->NEXT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 61
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "CREATE"

    const-string v2, "create"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CREATE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 62
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "CREATE_AND_PLAY"

    const-string v2, "createplay"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CREATE_AND_PLAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 63
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "ADD"

    const-string v2, "add"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ADD:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 64
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "ADD_AND_PLAY"

    const-string v2, "addplay"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ADD_AND_PLAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 65
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "SHARE"

    const-string v2, "share"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->SHARE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 66
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "UPDATE"

    const-string v2, "update"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->UPDATE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 67
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "EMERGENCY"

    const-string v2, "emergency"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->EMERGENCY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 68
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "ORDER"

    const-string v2, "order"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ORDER:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 69
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "CLOSE"

    const-string v2, "close"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CLOSE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 70
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "BACK"

    const-string v2, "back"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->BACK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 71
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "DO_NOT_SHOW"

    const-string v2, "donotshow"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->DO_NOT_SHOW:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 72
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "CLOSE_AND_LAUNCH"

    const-string v2, "closelaunch"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CLOSE_AND_LAUNCH:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 73
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "CREATE_QUESTION"

    const-string v2, "createquestion"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CREATE_QUESTION:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 74
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "SEND_LOG"

    const-string v2, "sendlog"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->SEND_LOG:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 75
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const-string v1, "CHANGE"

    const-string v2, "change"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CHANGE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const/16 v0, 0x14

    .line 54
    new-array v0, v0, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->LAUNCH:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->PLAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->PAUSE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->PREV:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->NEXT:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CREATE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CREATE_AND_PLAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ADD:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ADD_AND_PLAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->SHARE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->UPDATE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->EMERGENCY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ORDER:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CLOSE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->BACK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->DO_NOT_SHOW:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CLOSE_AND_LAUNCH:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CREATE_QUESTION:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->SEND_LOG:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->CHANGE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->$VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

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

    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 81
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->value:Ljava/lang/String;

    return-void
.end method

.method public static getActionType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;
    .locals 5

    .line 89
    invoke-static {}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->values()[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 90
    iget-object v4, v3, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;
    .locals 1

    .line 54
    const-class v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;
    .locals 1

    .line 54
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->$VALUES:[Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    return-object v0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->value:Ljava/lang/String;

    return-object v0
.end method
