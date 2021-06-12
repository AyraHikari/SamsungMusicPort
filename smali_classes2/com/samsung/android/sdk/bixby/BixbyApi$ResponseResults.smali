.class public final enum Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/BixbyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseResults"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final enum FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final enum RULE_COMPLETE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final enum STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final enum STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final enum SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final enum TEST_ALL_STATES_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final enum TEST_ALL_STATES_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final enum TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final enum TEST_SETUP_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final enum TEST_TEARDOWN_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

.field public static final enum TEST_TEARDOWN_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 610
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 616
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v1, "FAILURE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 622
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v1, "STATE_SUCCESS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 628
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v1, "STATE_FAILURE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 633
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v1, "TEST_SETUP_SUCCESS"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v4}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 638
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v1, "TEST_SETUP_FAILURE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v5}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 643
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v1, "TEST_TEARDOWN_SUCCESS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v6}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_TEARDOWN_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 648
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v1, "TEST_TEARDOWN_FAILURE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v7}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_TEARDOWN_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 653
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v1, "TEST_ALL_STATES_SUCCESS"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v8}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_ALL_STATES_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 658
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v1, "TEST_ALL_STATES_FAILURE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v9}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_ALL_STATES_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    .line 665
    new-instance v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const-string v1, "RULE_COMPLETE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v10}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->RULE_COMPLETE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    const/16 v0, 0xb

    .line 603
    new-array v0, v0, [Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_TEARDOWN_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_TEARDOWN_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    aput-object v1, v0, v9

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_ALL_STATES_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    aput-object v1, v0, v10

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_ALL_STATES_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    aput-object v1, v0, v11

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->RULE_COMPLETE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    aput-object v1, v0, v12

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->$VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 672
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 673
    iput p3, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;
    .locals 1

    .line 603
    const-class v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;
    .locals 1

    .line 603
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->$VALUES:[Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 680
    iget v0, p0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 687
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->d:[I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 705
    invoke-super {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "rule_complete"

    return-object v0

    :pswitch_1
    const-string v0, "failure"

    return-object v0

    :pswitch_2
    const-string v0, "success"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
