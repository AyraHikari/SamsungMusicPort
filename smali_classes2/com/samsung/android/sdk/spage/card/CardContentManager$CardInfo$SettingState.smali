.class public final enum Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SettingState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;

.field public static final enum CARD_DISABLED:Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;

.field public static final enum CARD_ENABLED:Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;

.field public static final enum NOT_SUPPORTED:Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 268
    new-instance v0, Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;

    const-string v1, "NOT_SUPPORTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;->NOT_SUPPORTED:Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;

    .line 269
    new-instance v0, Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;

    const-string v1, "CARD_ENABLED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;->CARD_ENABLED:Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;

    .line 270
    new-instance v0, Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;

    const-string v1, "CARD_DISABLED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;->CARD_DISABLED:Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;

    const/4 v0, 0x3

    .line 267
    new-array v0, v0, [Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;

    sget-object v1, Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;->NOT_SUPPORTED:Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;->CARD_ENABLED:Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;->CARD_DISABLED:Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;->$VALUES:[Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 267
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;
    .locals 1

    .line 267
    const-class v0, Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;
    .locals 1

    .line 267
    sget-object v0, Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;->$VALUES:[Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/spage/card/CardContentManager$CardInfo$SettingState;

    return-object v0
.end method
