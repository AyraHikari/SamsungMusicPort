.class public Lcom/samsung/android/sdk/smp/feedback/FeedbackManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "FeedbackManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V
    .locals 3

    .line 21
    sget-object v0, Lcom/samsung/android/sdk/smp/feedback/FeedbackManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "==== << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " >> ===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 29
    sget-object p0, Lcom/samsung/android/sdk/smp/feedback/FeedbackManager;->a:Ljava/lang/String;

    const-string p2, "fail to add feedback. db open fail."

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 34
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->k(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    move-result-object v1

    .line 35
    invoke-virtual {p2, v1}, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 36
    sget-object p0, Lcom/samsung/android/sdk/smp/feedback/FeedbackManager;->a:Ljava/lang/String;

    const-string p2, "the feedback is already added"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-void

    .line 40
    :cond_2
    :try_start_1
    sget-object v2, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLICKED:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->IGNORED:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-virtual {v1, p2}, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    sget-object p0, Lcom/samsung/android/sdk/smp/feedback/FeedbackManager;->a:Ljava/lang/String;

    const-string p2, "not add click/ignore feedback after click feedback"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-void

    .line 45
    :cond_3
    :try_start_2
    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 47
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->f(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    throw p0

    .line 23
    :cond_5
    :goto_0
    sget-object p0, Lcom/samsung/android/sdk/smp/feedback/FeedbackManager;->a:Ljava/lang/String;

    const-string p2, "fail to add feedback. invalid params"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 5

    .line 65
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 67
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 69
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "mid"

    .line 70
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "feedback"

    .line 71
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 74
    sget-object v2, Lcom/samsung/android/sdk/smp/feedback/FeedbackManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception occurs while deleting feedbacks. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2

    .line 55
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->e()Ljava/util/Map;

    move-result-object v1

    .line 58
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    .line 59
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method
