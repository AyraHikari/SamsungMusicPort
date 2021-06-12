.class public Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;
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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 5

    if-nez p0, :cond_0

    .line 170
    sget-object p0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a:Ljava/lang/String;

    const-string v0, "fail to request incomplete events. ctx null."

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 173
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 175
    sget-object p0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a:Ljava/lang/String;

    const-string v0, "fail to request incomplete events. dbHandler null."

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v1, "wait"

    .line 178
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->t(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_2

    .line 180
    sget-object p0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a:Ljava/lang/String;

    const-string v1, "fail to request incomplete events. DB Error"

    invoke-static {p0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void

    .line 184
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 185
    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->m(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 186
    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_3

    .line 187
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x0

    .line 188
    invoke-static {p0, v2, v4, v3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 191
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 100
    :try_start_0
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/feedback/Feedback;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "wait"

    .line 102
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    sget-object v1, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] doesn\'t need to send feedback. state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->b()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->b()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    new-instance v1, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/samsung/android/sdk/ppmt/network/request/FeedbackRequest;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/Feedback;)V

    const/16 v2, 0x3c

    .line 112
    invoke-static {p0, v1, v2}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;I)Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    move-result-object v1

    .line 113
    iget-boolean v2, v1, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->a:Z

    if-eqz v2, :cond_2

    .line 114
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/feedback/Feedback;->b()Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_1

    .line 116
    :cond_2
    iget v0, v1, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->b:I

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    .line 107
    :cond_3
    :goto_0
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] there is no feedback data to send"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const/4 v0, 0x1

    .line 120
    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    :goto_1
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .line 135
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] Send Feedback Fail - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_4

    const/16 v1, 0x1f4

    if-lt p3, v1, :cond_0

    const/16 v1, 0x258

    if-lt p3, v1, :cond_2

    :cond_0
    const/16 v1, 0x3ea

    if-eq p3, v1, :cond_2

    const/16 v1, 0x3eb

    if-eq p3, v1, :cond_2

    const/16 v1, 0x3f2

    if-eq p3, v1, :cond_2

    const/16 v1, 0x3f6

    if-eq p3, v1, :cond_2

    const/16 v1, 0x44c

    if-ne p3, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "discard"

    .line 162
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->b(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 146
    :cond_2
    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->r(Ljava/lang/String;)I

    move-result p3

    const/4 v1, 0x1

    add-int/2addr p3, v1

    .line 147
    invoke-virtual {v0, p1, p3}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->b(Ljava/lang/String;I)Z

    .line 149
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->q(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-lez p3, :cond_3

    const-wide/32 v4, 0x240c8400

    add-long/2addr v2, v4

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long p3, v4, v2

    if-lez p3, :cond_3

    .line 153
    sget-object p0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] feedback is expired"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "discard"

    .line 154
    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 155
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void

    .line 159
    :cond_3
    invoke-static {p0, p1, p2, v1}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 164
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    :cond_4
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V
    .locals 3

    .line 28
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ==== << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " >> ===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    if-nez p3, :cond_0

    goto/16 :goto_0

    .line 33
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 35
    sget-object p0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to add feedback. dbHandler null."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 40
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 42
    sget-object p0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to add feedback. targetid changed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void

    .line 46
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->p(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    move-result-object v1

    .line 47
    invoke-virtual {p3, v1}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 48
    sget-object p0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] the feedback is already added"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void

    .line 52
    :cond_3
    :try_start_2
    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLICKED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->IGNORED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {v1, p3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 53
    sget-object p0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to add click/ignore feedback after click feedback"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 62
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void

    .line 57
    :cond_4
    :try_start_3
    invoke-virtual {v0, p1, p3, p4}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    const/4 p3, 0x0

    .line 59
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 62
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    throw p0

    .line 30
    :cond_6
    :goto_0
    sget-object p0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a:Ljava/lang/String;

    const-string p1, "fail to add feedback. invalid params"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    if-nez p3, :cond_0

    .line 67
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance p3, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    invoke-direct {p3}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;-><init>()V

    sget-object v0, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->FEEDBACK:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    .line 69
    invoke-virtual {p3, v0}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p3

    .line 70
    invoke-virtual {p3, p1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p3

    const-string v0, "mid"

    .line 71
    invoke-virtual {p3, v0, p1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p1

    const-string p3, "targetid"

    .line 72
    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p1

    .line 73
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/CardJob;

    move-result-object p1

    .line 74
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object p2

    invoke-interface {p2, p0, p1}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;)V

    return-void

    .line 79
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p3, :cond_1

    const-wide/32 v2, 0x493e0

    const-wide/32 v4, 0x1b7740

    .line 81
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->a(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_1
    const-wide/32 v2, 0x36ee80

    const-wide/32 v4, 0x6ddd00

    .line 84
    invoke-static {v2, v3, v4, v5}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->a(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 88
    :goto_0
    new-instance p3, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    invoke-direct {p3}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;-><init>()V

    sget-object v2, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->FEEDBACK:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    .line 89
    invoke-virtual {p3, v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p3

    .line 90
    invoke-virtual {p3, p1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p3

    const-string v2, "mid"

    .line 91
    invoke-virtual {p3, v2, p1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p1

    const-string p3, "targetid"

    .line 92
    invoke-virtual {p1, p3, p2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/CardJob;

    move-result-object p1

    .line 95
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object p2

    invoke-interface {p2, p0, p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;J)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 3

    .line 125
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] Send Feedback Success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;Lorg/json/JSONArray;)Z

    const/4 p2, 0x0

    .line 129
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->b(Ljava/lang/String;I)Z

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    :cond_0
    return-void
.end method
