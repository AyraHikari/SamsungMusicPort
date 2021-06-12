.class public Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;
.super Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;
.source "SourceFile"


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/samsung/android/sdk/ppmt/feedback/Feedback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/Feedback;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/network/request/NetworkJSonRequest;-><init>(Landroid/content/Context;)V

    .line 21
    const-class p1, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->b:Ljava/lang/String;

    const-string p1, "info"

    .line 23
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->c:Ljava/lang/String;

    const-string p1, "fbid"

    .line 24
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->d:Ljava/lang/String;

    const-string p1, "fv"

    .line 25
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->e:Ljava/lang/String;

    const-string p1, "dts"

    .line 26
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->f:Ljava/lang/String;

    const-string p1, "tz"

    .line 27
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->g:Ljava/lang/String;

    const-string p1, "targetid"

    .line 28
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->h:Ljava/lang/String;

    const-string p1, "platform"

    .line 29
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->i:Ljava/lang/String;

    const-string p1, "android"

    .line 31
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->j:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->k:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->l:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->m:Lcom/samsung/android/sdk/ppmt/feedback/Feedback;

    return-void
.end method

.method private static a(Lorg/json/JSONArray;)Z
    .locals 4

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 90
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    const-string v2, ""

    .line 91
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 96
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://sdk.peppermint.samsung.com/v2/app/feedback/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->m:Lcom/samsung/android/sdk/ppmt/feedback/Feedback;

    if-eqz v0, :cond_2

    .line 63
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "fbid"

    .line 64
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->m:Lcom/samsung/android/sdk/ppmt/feedback/Feedback;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->b()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->m:Lcom/samsung/android/sdk/ppmt/feedback/Feedback;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->c()Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->a(Lorg/json/JSONArray;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "fv"

    .line 66
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->m:Lcom/samsung/android/sdk/ppmt/feedback/Feedback;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->c()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "dts"

    .line 68
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->m:Lcom/samsung/android/sdk/ppmt/feedback/Feedback;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->d()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tz"

    .line 69
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "targetid"

    .line 71
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string v1, "platform"

    const-string v2, "android"

    .line 73
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "info"

    .line 77
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 82
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] fail to create network request. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;-><init>()V

    throw v0

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] fail to create network request. mid/feedback null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/exception/PpmtInternalException$InvalidDataException;-><init>()V

    throw v0
.end method
