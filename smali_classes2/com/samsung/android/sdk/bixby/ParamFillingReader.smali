.class Lcom/samsung/android/sdk/bixby/ParamFillingReader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/ParamFilling;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 22
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 26
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "utterance"

    .line 28
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "intent"

    .line 29
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p0, "appName"

    .line 30
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p0, "screenStates"

    .line 32
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 33
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 34
    invoke-virtual {p0, v7}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "screenParameters"

    .line 37
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 39
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_c

    .line 40
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 42
    new-instance v8, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;

    invoke-direct {v8}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;-><init>()V

    const-string v9, "slotType"

    .line 44
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "slotType"

    .line 45
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->a(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v9, ""

    .line 47
    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->a(Ljava/lang/String;)V

    :goto_2
    const-string v9, "slotName"

    .line 50
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "slotName"

    .line 51
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    const-string v9, ""

    .line 53
    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->b(Ljava/lang/String;)V

    :goto_3
    const-string v9, "slotValue"

    .line 56
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "slotValue"

    .line 57
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->c(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    const-string v9, ""

    .line 59
    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->c(Ljava/lang/String;)V

    :goto_4
    const-string v9, "CH_ObjectType"

    .line 62
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "CH_ObjectType"

    .line 63
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->d(Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    const-string v9, ""

    .line 65
    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->d(Ljava/lang/String;)V

    :goto_5
    const-string v9, "CH_Objects"

    .line 68
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 69
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const-string v10, "CH_Objects"

    .line 70
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    const/4 v11, 0x0

    .line 72
    :goto_6
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_8

    .line 73
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 74
    new-instance v13, Lcom/samsung/android/sdk/bixby/data/CHObject;

    invoke-direct {v13}, Lcom/samsung/android/sdk/bixby/data/CHObject;-><init>()V

    const-string v14, "CH_Type"

    .line 76
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    const-string v14, "CH_Type"

    .line 77
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/sdk/bixby/data/CHObject;->a(Ljava/lang/String;)V

    goto :goto_7

    :cond_5
    const-string v14, ""

    .line 79
    invoke-virtual {v13, v14}, Lcom/samsung/android/sdk/bixby/data/CHObject;->a(Ljava/lang/String;)V

    :goto_7
    const-string v14, "CH_Value"

    .line 82
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    const-string v14, "CH_Value"

    .line 83
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/samsung/android/sdk/bixby/data/CHObject;->b(Ljava/lang/String;)V

    goto :goto_8

    :cond_6
    const-string v14, ""

    .line 85
    invoke-virtual {v13, v14}, Lcom/samsung/android/sdk/bixby/data/CHObject;->b(Ljava/lang/String;)V

    :goto_8
    const-string v14, "CH_ValueType"

    .line 88
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_7

    const-string v14, "CH_ValueType"

    .line 89
    invoke-virtual {v12, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Lcom/samsung/android/sdk/bixby/data/CHObject;->c(Ljava/lang/String;)V

    goto :goto_9

    :cond_7
    const-string v12, ""

    .line 91
    invoke-virtual {v13, v12}, Lcom/samsung/android/sdk/bixby/data/CHObject;->c(Ljava/lang/String;)V

    .line 94
    :goto_9
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 96
    :cond_8
    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->a(Ljava/util/List;)V

    goto :goto_a

    :cond_9
    const/4 v9, 0x0

    .line 98
    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->a(Ljava/util/List;)V

    :goto_a
    const-string v9, "parameterName"

    .line 101
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v9, "parameterName"

    .line 102
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->e(Ljava/lang/String;)V

    goto :goto_b

    :cond_a
    const-string v9, ""

    .line 104
    invoke-virtual {v8, v9}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->e(Ljava/lang/String;)V

    :goto_b
    const-string v9, "parameterType"

    .line 107
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v9, "parameterType"

    .line 108
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->f(Ljava/lang/String;)V

    goto :goto_c

    :cond_b
    const-string v7, ""

    .line 110
    invoke-virtual {v8, v7}, Lcom/samsung/android/sdk/bixby/data/ScreenParameter;->f(Ljava/lang/String;)V

    .line 113
    :goto_c
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 116
    :cond_c
    new-instance p0, Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/bixby/data/ParamFilling;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 119
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
