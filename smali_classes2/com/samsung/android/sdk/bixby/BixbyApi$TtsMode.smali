.class public final enum Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/BixbyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TtsMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

.field public static final enum CUT:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

.field public static final enum WAIT:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 325
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    const-string v1, "CUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->CUT:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    .line 329
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    const-string v1, "WAIT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->WAIT:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    const/4 v0, 0x2

    .line 321
    new-array v0, v0, [Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->CUT:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->WAIT:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->$VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 321
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;
    .locals 1

    .line 321
    const-class v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;
    .locals 1

    .line 321
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->$VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 336
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->c:[I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 344
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "\"ttsMode\":\"wait\""

    return-object v0

    :pswitch_1
    const-string v0, "\"ttsMode\":\"cut\""

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
