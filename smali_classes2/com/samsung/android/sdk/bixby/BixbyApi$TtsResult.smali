.class public final enum Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/BixbyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TtsResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

.field public static final enum COMPLETE:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

.field public static final enum STOP_ON_CANCEL:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

.field public static final enum STOP_ON_ERROR:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 355
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    const-string v1, "COMPLETE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->COMPLETE:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    .line 359
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    const-string v1, "STOP_ON_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->STOP_ON_ERROR:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    .line 364
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    const-string v1, "STOP_ON_CANCEL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->STOP_ON_CANCEL:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    .line 369
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    const-string v1, "UNKNOWN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->UNKNOWN:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    const/4 v0, 0x4

    .line 351
    new-array v0, v0, [Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->COMPLETE:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->STOP_ON_ERROR:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->STOP_ON_CANCEL:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->UNKNOWN:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->$VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 351
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static toEnum(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;
    .locals 2

    .line 375
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7c83d4bb

    if-eq v0, v1, :cond_2

    const v1, -0x23bacec7

    if-eq v0, v1, :cond_1

    const v1, -0x18520323

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "stop_on_cancel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "complete"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "stop_on_error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 383
    sget-object p0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->UNKNOWN:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    return-object p0

    .line 381
    :pswitch_0
    sget-object p0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->STOP_ON_CANCEL:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    return-object p0

    .line 379
    :pswitch_1
    sget-object p0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->STOP_ON_ERROR:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    return-object p0

    .line 377
    :pswitch_2
    sget-object p0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->COMPLETE:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;
    .locals 1

    .line 351
    const-class v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;
    .locals 1

    .line 351
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->$VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/bixby/BixbyApi$TtsResult;

    return-object v0
.end method
