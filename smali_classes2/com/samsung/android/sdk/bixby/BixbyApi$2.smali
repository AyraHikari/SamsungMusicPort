.class synthetic Lcom/samsung/android/sdk/bixby/BixbyApi$2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/bixby/BixbyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 687
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->values()[Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->d:[I

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->d:[I

    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v1, 0x2

    :try_start_1
    sget-object v2, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->d:[I

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->d:[I

    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->d:[I

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_TEARDOWN_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->d:[I

    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_ALL_STATES_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    const/4 v5, 0x6

    :try_start_5
    sget-object v6, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->d:[I

    sget-object v7, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->ordinal()I

    move-result v7

    aput v5, v6, v7
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    const/4 v6, 0x7

    :try_start_6
    sget-object v7, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->d:[I

    sget-object v8, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->ordinal()I

    move-result v8

    aput v6, v7, v8
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    const/16 v7, 0x8

    :try_start_7
    sget-object v8, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->d:[I

    sget-object v9, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_SETUP_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->ordinal()I

    move-result v9

    aput v7, v8, v9
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    const/16 v8, 0x9

    :try_start_8
    sget-object v9, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->d:[I

    sget-object v10, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_TEARDOWN_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v10}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->ordinal()I

    move-result v10

    aput v8, v9, v10
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    const/16 v9, 0xa

    :try_start_9
    sget-object v10, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->d:[I

    sget-object v11, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->TEST_ALL_STATES_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v11}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->ordinal()I

    move-result v11

    aput v9, v10, v11
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    const/16 v10, 0xb

    :try_start_a
    sget-object v11, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->d:[I

    sget-object v12, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->RULE_COMPLETE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v12}, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->ordinal()I

    move-result v12

    aput v10, v11, v12
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    .line 336
    :catch_a
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->values()[Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->c:[I

    :try_start_b
    sget-object v11, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->c:[I

    sget-object v12, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->CUT:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    invoke-virtual {v12}, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v11, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->c:[I

    sget-object v12, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->WAIT:Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;

    invoke-virtual {v12}, Lcom/samsung/android/sdk/bixby/BixbyApi$TtsMode;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 238
    :catch_c
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->values()[Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    move-result-object v11

    array-length v11, v11

    new-array v11, v11, [I

    sput-object v11, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->b:[I

    :try_start_d
    sget-object v11, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->b:[I

    sget-object v12, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->SEND:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v12}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v12

    aput v0, v11, v12
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v11, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->b:[I

    sget-object v12, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->DELETE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v12}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v12

    aput v1, v11, v12
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    :try_start_f
    sget-object v11, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->b:[I

    sget-object v12, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->TURN_ON:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v12}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v12

    aput v2, v11, v12
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :catch_f
    :try_start_10
    sget-object v11, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->b:[I

    sget-object v12, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->APPLY:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v12}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v12

    aput v3, v11, v12
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :catch_10
    :try_start_11
    sget-object v11, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->b:[I

    sget-object v12, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->FORWARD:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v12}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v12

    aput v4, v11, v12
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :catch_11
    :try_start_12
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->b:[I

    sget-object v11, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->MERGE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v11}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v11

    aput v5, v4, v11
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :catch_12
    :try_start_13
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->b:[I

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->DISCARD:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v5

    aput v6, v4, v5
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :catch_13
    :try_start_14
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->b:[I

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->RESET:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v5

    aput v7, v4, v5
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :catch_14
    :try_start_15
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->b:[I

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->UPDATE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v5

    aput v8, v4, v5
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :catch_15
    :try_start_16
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->b:[I

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->EXECUTE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v5

    aput v9, v4, v5
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :catch_16
    :try_start_17
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->b:[I

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->INQUIRE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v5

    aput v10, v4, v5
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :catch_17
    :try_start_18
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->b:[I

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->SAVE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v5

    const/16 v6, 0xc

    aput v6, v4, v5
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :catch_18
    :try_start_19
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->b:[I

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->REPLY:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v5

    const/16 v6, 0xd

    aput v6, v4, v5
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_19

    :catch_19
    :try_start_1a
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->b:[I

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->COMMON:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->ordinal()I

    move-result v5

    const/16 v6, 0xe

    aput v6, v4, v5
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1a

    .line 156
    :catch_1a
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->values()[Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->a:[I

    :try_start_1b
    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->a:[I

    sget-object v5, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->ordinal()I

    move-result v5

    aput v0, v4, v5
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :catch_1b
    :try_start_1c
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->a:[I

    sget-object v4, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->TARGETED:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->ordinal()I

    move-result v4

    aput v1, v0, v4
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1c

    :catch_1c
    :try_start_1d
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->a:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1e
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$2;->a:[I

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->CONFIRM:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_1e

    :catch_1e
    return-void
.end method
