.class Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private c:Lcom/samsung/android/sdk/bixby/BixbyApi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_0.2.7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->b:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a()Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->c:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "content"

    .line 88
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 37
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    .line 38
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    sget-object v2, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Command from EM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "emes_request_context"

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 43
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->c:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->c()V

    return-void

    .line 47
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "emes_state"

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->c:Lcom/samsung/android/sdk/bixby/BixbyApi;

    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->b:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/sdk/bixby/BixbyApi;->a:Ljava/lang/String;

    const-string v1, "state"

    .line 51
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->c:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v2, "emes_request_param_filling"

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "slotFillingResult"

    .line 54
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/samsung/android/sdk/bixby/ParamFillingReader;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/ParamFilling;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->c:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/data/ParamFilling;)V

    goto/16 :goto_0

    :cond_2
    const-string v2, "emes_pathrule_info"

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "pathRuleInfo"

    .line 58
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/samsung/android/sdk/bixby/PathRuleInfoReader;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->c:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/data/PathRuleInfo;)V

    goto/16 :goto_0

    :cond_3
    const-string v2, "emes_chatty_mode"

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v1, "utterance"

    .line 62
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "directSend"

    .line 63
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 64
    iget-object v2, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->c:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    const-string v2, "emes_split_state"

    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 66
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->c:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string v2, "stateIds"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lorg/json/JSONArray;)V

    goto/16 :goto_0

    :cond_5
    const-string v2, "emes_all_states"

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 68
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->c:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string v2, "states"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->b(Lorg/json/JSONArray;)V

    goto/16 :goto_0

    :cond_6
    const-string v2, "emes_partial_landing_state"

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v1, "isLanded"

    .line 70
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->c:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Z)V

    goto :goto_0

    :cond_7
    const-string v2, "emes_user_confirm"

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 73
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->c:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string v2, "appName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "result"

    .line 74
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v2, "emes_tts_result"

    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 76
    iget-object v1, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->c:Lcom/samsung/android/sdk/bixby/BixbyApi;

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string v0, "emes_nlg_end_result"

    .line 77
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 78
    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->c:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->h()V

    goto :goto_0

    .line 80
    :cond_a
    sget-object v0, Lcom/samsung/android/sdk/bixby/CommandHandlerRunnable;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown command arrived : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 83
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
