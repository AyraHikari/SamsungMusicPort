.class Lcom/samsung/android/sdk/bixby/PathRuleInfoReader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 42
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "pathRuleId"

    .line 44
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p0, "pathRuleName"

    .line 45
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p0, "intent"

    .line 46
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p0, "utterance"

    .line 47
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p0, "sampleUtterance"

    .line 48
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string p0, "apps"

    .line 49
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 50
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v7, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 51
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 52
    invoke-virtual {p0, v8}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "executionType"

    .line 54
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    const/4 v8, 0x0

    if-eqz p0, :cond_1

    const-string p0, "executionType"

    .line 55
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v8

    :goto_1
    const-string v9, "isRoot"

    .line 57
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    const-string v10, "isCalleePathRule"

    .line 58
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "isCalleePathRule"

    .line 59
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    const-string v11, "isFromSimulator"

    .line 61
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "isFromSimulator"

    .line 62
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    goto :goto_3

    :cond_3
    const/4 v11, 0x0

    :goto_3
    const-string v12, "states"

    .line 64
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v8, "states"

    .line 65
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 66
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 67
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v12

    if-ge v1, v12, :cond_4

    .line 68
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/samsung/android/sdk/bixby/StateReader;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/State;

    move-result-object v12

    .line 69
    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 72
    :cond_4
    new-instance v0, Lcom/samsung/android/sdk/bixby/PathRuleInfoReader$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby/PathRuleInfoReader$1;-><init>()V

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    move-object v12, v8

    .line 79
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    move-object v1, v0

    move-object v8, p0

    invoke-direct/range {v1 .. v12}, Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ZZZLjava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
