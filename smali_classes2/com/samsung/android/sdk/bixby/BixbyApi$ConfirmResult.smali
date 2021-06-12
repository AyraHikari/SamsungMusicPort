.class public final enum Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/BixbyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConfirmResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

.field public static final enum CANCEL:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

.field public static final enum NO:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

.field public static final enum OTHER:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

.field public static final enum UNKNOWN:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

.field public static final enum YES:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 281
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    const-string v1, "YES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->YES:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    .line 285
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    const-string v1, "NO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->NO:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    .line 289
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    const-string v1, "CANCEL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->CANCEL:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    .line 293
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    const-string v1, "OTHER"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->OTHER:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    .line 297
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    const-string v1, "UNKNOWN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->UNKNOWN:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    const/4 v0, 0x5

    .line 277
    new-array v0, v0, [Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->YES:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->NO:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->CANCEL:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->OTHER:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->UNKNOWN:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->$VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 277
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static toEnum(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;
    .locals 2

    .line 303
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5185d186

    if-eq v0, v1, :cond_3

    const/16 v1, 0xdc1

    if-eq v0, v1, :cond_2

    const v1, 0x1d2e7

    if-eq v0, v1, :cond_1

    const v1, 0x6527f10

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "other"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x3

    goto :goto_1

    :cond_1
    const-string v0, "yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_1

    :cond_3
    const-string v0, "cancel"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 313
    sget-object p0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->UNKNOWN:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    return-object p0

    .line 311
    :pswitch_0
    sget-object p0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->OTHER:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    return-object p0

    .line 309
    :pswitch_1
    sget-object p0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->CANCEL:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    return-object p0

    .line 307
    :pswitch_2
    sget-object p0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->NO:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    return-object p0

    .line 305
    :pswitch_3
    sget-object p0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->YES:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;
    .locals 1

    .line 277
    const-class v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;
    .locals 1

    .line 277
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->$VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmResult;

    return-object v0
.end method
