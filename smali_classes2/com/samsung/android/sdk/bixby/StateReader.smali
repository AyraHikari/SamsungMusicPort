.class Lcom/samsung/android/sdk/bixby/StateReader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/State;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 29
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 32
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "specVer"

    .line 34
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "specVer"

    .line 35
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "1.0"

    :goto_0
    move-object v2, v1

    const-string v1, "seqNum"

    .line 39
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v1, "isExecuted"

    .line 40
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v1, "appName"

    .line 41
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "stateId"

    .line 42
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "ruleId"

    .line 43
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "isResent"

    .line 44
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    const-string v1, "isResent"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v1, "isLandingState"

    .line 45
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const-string v1, "isLastState"

    .line 46
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "isLastState"

    .line 47
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    .line 49
    :cond_2
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_2
    move-object v11, v1

    const-string v1, "subIntent"

    .line 52
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "subIntent"

    .line 53
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_3
    const-string v1, ""

    :goto_3
    move-object v13, v1

    const-string v1, "parameters"

    .line 58
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 60
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v1, v14, :cond_11

    .line 61
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    .line 63
    new-instance v15, Lcom/samsung/android/sdk/bixby/data/Parameter;

    invoke-direct {v15}, Lcom/samsung/android/sdk/bixby/data/Parameter;-><init>()V

    const-string v8, "slotType"

    .line 65
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "slotType"

    .line 66
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/samsung/android/sdk/bixby/data/Parameter;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    const-string v8, ""

    .line 68
    invoke-virtual {v15, v8}, Lcom/samsung/android/sdk/bixby/data/Parameter;->a(Ljava/lang/String;)V

    :goto_5
    const-string v8, "slotName"

    .line 71
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "slotName"

    .line 72
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/samsung/android/sdk/bixby/data/Parameter;->b(Ljava/lang/String;)V

    goto :goto_6

    :cond_5
    const-string v8, ""

    .line 74
    invoke-virtual {v15, v8}, Lcom/samsung/android/sdk/bixby/data/Parameter;->b(Ljava/lang/String;)V

    :goto_6
    const-string v8, "slotValue"

    .line 77
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "slotValue"

    .line 78
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/samsung/android/sdk/bixby/data/Parameter;->c(Ljava/lang/String;)V

    goto :goto_7

    :cond_6
    const-string v8, ""

    .line 80
    invoke-virtual {v15, v8}, Lcom/samsung/android/sdk/bixby/data/Parameter;->c(Ljava/lang/String;)V

    :goto_7
    const-string v8, "slotValueType"

    .line 83
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "slotValueType"

    .line 84
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/samsung/android/sdk/bixby/data/Parameter;->d(Ljava/lang/String;)V

    goto :goto_8

    :cond_7
    const-string v8, ""

    .line 86
    invoke-virtual {v15, v8}, Lcom/samsung/android/sdk/bixby/data/Parameter;->d(Ljava/lang/String;)V

    :goto_8
    const-string v8, "CH_ObjectType"

    .line 89
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "CH_ObjectType"

    .line 90
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/samsung/android/sdk/bixby/data/Parameter;->e(Ljava/lang/String;)V

    goto :goto_9

    :cond_8
    const-string v8, ""

    .line 92
    invoke-virtual {v15, v8}, Lcom/samsung/android/sdk/bixby/data/Parameter;->e(Ljava/lang/String;)V

    :goto_9
    const-string v8, "CH_Objects"

    .line 95
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 96
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "CH_Objects"

    .line 97
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object/from16 v18, v11

    move-object/from16 v17, v13

    const/4 v13, 0x0

    .line 99
    :goto_a
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v13, v11, :cond_c

    .line 100
    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    move-object/from16 v19, v0

    .line 101
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/CHObject;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby/data/CHObject;-><init>()V

    move-object/from16 v20, v10

    const-string v10, "CH_Type"

    .line 103
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    const-string v10, "CH_Type"

    .line 104
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/samsung/android/sdk/bixby/data/CHObject;->a(Ljava/lang/String;)V

    goto :goto_b

    :cond_9
    const-string v10, ""

    .line 106
    invoke-virtual {v0, v10}, Lcom/samsung/android/sdk/bixby/data/CHObject;->a(Ljava/lang/String;)V

    :goto_b
    const-string v10, "CH_Value"

    .line 109
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v10, "CH_Value"

    .line 110
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/samsung/android/sdk/bixby/data/CHObject;->b(Ljava/lang/String;)V

    goto :goto_c

    :cond_a
    const-string v10, ""

    .line 112
    invoke-virtual {v0, v10}, Lcom/samsung/android/sdk/bixby/data/CHObject;->b(Ljava/lang/String;)V

    :goto_c
    const-string v10, "CH_ValueType"

    .line 115
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    const-string v10, "CH_ValueType"

    .line 116
    invoke-virtual {v11, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/samsung/android/sdk/bixby/data/CHObject;->c(Ljava/lang/String;)V

    goto :goto_d

    :cond_b
    const-string v10, ""

    .line 118
    invoke-virtual {v0, v10}, Lcom/samsung/android/sdk/bixby/data/CHObject;->c(Ljava/lang/String;)V

    .line 121
    :goto_d
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v19

    move-object/from16 v10, v20

    goto :goto_a

    :cond_c
    move-object/from16 v20, v10

    .line 123
    invoke-virtual {v15, v8}, Lcom/samsung/android/sdk/bixby/data/Parameter;->a(Ljava/util/List;)V

    goto :goto_e

    :cond_d
    move-object/from16 v16, v0

    move-object/from16 v20, v10

    move-object/from16 v18, v11

    move-object/from16 v17, v13

    const/4 v0, 0x0

    .line 125
    invoke-virtual {v15, v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->a(Ljava/util/List;)V

    :goto_e
    const-string v0, "parameterName"

    .line 128
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "parameterName"

    .line 129
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->f(Ljava/lang/String;)V

    goto :goto_f

    :cond_e
    const-string v0, ""

    .line 131
    invoke-virtual {v15, v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->f(Ljava/lang/String;)V

    :goto_f
    const-string v0, "parameterType"

    .line 134
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "parameterType"

    .line 135
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->g(Ljava/lang/String;)V

    goto :goto_10

    :cond_f
    const-string v0, ""

    .line 137
    invoke-virtual {v15, v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->g(Ljava/lang/String;)V

    :goto_10
    const-string v0, "isMandatory"

    .line 140
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "isMandatory"

    .line 141
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/samsung/android/sdk/bixby/data/Parameter;->a(Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 143
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v15, v8}, Lcom/samsung/android/sdk/bixby/data/Parameter;->a(Ljava/lang/Boolean;)V

    .line 146
    :goto_11
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, v16

    move-object/from16 v13, v17

    move-object/from16 v11, v18

    move-object/from16 v10, v20

    const/4 v8, 0x0

    goto/16 :goto_4

    :cond_11
    move-object/from16 v20, v10

    move-object/from16 v18, v11

    move-object/from16 v17, v13

    .line 149
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/State;

    move-object v1, v0

    move-object v8, v9

    move-object/from16 v9, v20

    move-object/from16 v10, v18

    move-object/from16 v11, v17

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/sdk/bixby/data/State;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 153
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
