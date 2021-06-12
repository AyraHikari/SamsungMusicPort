.class public Lcom/samsung/android/sdk/smp/marketing/MarketingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "MarketingManager"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)J
    .locals 2

    .line 263
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d()J

    move-result-wide v0

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    .line 34
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a:Ljava/lang/String;

    const-string p1, "error while handling message. context is null"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 38
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 42
    iget-object v0, p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/sdk/smp/marketing/MarketingParser$AppData;->c:Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->e(Landroid/content/Context;)V

    .line 46
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->f(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 51
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 53
    sget-object v2, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->DELIVER:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-static {p0, p1, v2, v0}, Lcom/samsung/android/sdk/smp/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 55
    invoke-static {p0, p1, p2, p3, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object p2

    .line 56
    invoke-virtual {p2, p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$DBException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a:Ljava/lang/String;

    const-string p3, "fail to handle message. wrong meta data"

    invoke-static {p2, p1, p3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    sget-object p2, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :catch_1
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a:Ljava/lang/String;

    const-string p3, "fail to handle message. not supported type"

    invoke-static {p2, p1, p3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object p2, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->UNSUPPORTED_TYPE:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :catch_2
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a:Ljava/lang/String;

    const-string p3, "fail to handle message. internal error"

    invoke-static {p2, p1, p3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    sget-object p2, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-static {p0, p1, p2, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :catch_3
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a:Ljava/lang/String;

    const-string p3, "fail to handle message. db error"

    invoke-static {p2, p1, p3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object p2, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const-string p3, "dberror"

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    .line 110
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 114
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    const/16 v0, 0x14

    if-gt p0, v0, :cond_0

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p0, p0

    const/16 p1, 0x2800

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;
        }
    .end annotation

    .line 75
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 76
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a:Ljava/lang/String;

    const-string p1, "fail to insert marketing. invalid mid"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 80
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 82
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a:Ljava/lang/String;

    const-string p2, "fail to insert marketing. db open fail"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 87
    :cond_1
    :try_start_0
    invoke-static {p1, p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 89
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a:Ljava/lang/String;

    const-string p2, "fail to delete previous marketing"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return v1

    .line 94
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 95
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a:Ljava/lang/String;

    const-string p2, "already have the same marketing"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return v1

    .line 99
    :cond_3
    :try_start_2
    invoke-static {p2, p3}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 103
    invoke-virtual {v0, p1, p3, p2}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return p0

    :cond_4
    const/4 p0, 0x0

    .line 100
    :try_start_3
    invoke-virtual {v0, p1, p0, p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    new-instance p0, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;-><init>()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    .line 105
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    throw p0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 7

    .line 272
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 274
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Lcom/samsung/android/sdk/smp/marketing/MarketingState;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 276
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 278
    :try_start_0
    invoke-static {p0, v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object v3

    const/4 v4, 0x0

    .line 279
    invoke-virtual {v3, p0, v4}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 281
    sget-object v4, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to redisplay. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v2, v3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    :cond_1
    return-void
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 119
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 124
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v1

    if-nez v1, :cond_1

    .line 126
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a:Ljava/lang/String;

    const-string v1, "fail to clear data. db open fail"

    invoke-static {p0, p1, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 130
    :cond_1
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 131
    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->b(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 133
    :try_start_1
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/display/DisplayManager;

    move-result-object v2

    .line 135
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->f(Ljava/lang/String;)I

    move-result v3

    if-eqz v2, :cond_2

    if-lez v3, :cond_2

    .line 137
    invoke-virtual {v2, p0, v3}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->a(Landroid/content/Context;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 140
    :try_start_2
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fail to clear data. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return v0

    .line 144
    :cond_2
    :goto_0
    :try_start_3
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingData;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/common/FileIOUtil;->a(Ljava/lang/String;)Z

    .line 145
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->j(Ljava/lang/String;)Z

    .line 147
    new-instance v0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, p1}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->c(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    .line 148
    new-instance v0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->DISMISS:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {v0, v2, v3, p1}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->c(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V

    .line 149
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a:Ljava/lang/String;

    const-string v0, "successfully delete all related data"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    const/4 p0, 0x1

    .line 153
    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    throw p0

    .line 120
    :cond_4
    :goto_1
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a:Ljava/lang/String;

    const-string v1, "fail to clear data. invalid params"

    invoke-static {p0, p1, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static c(Landroid/content/Context;)V
    .locals 11

    .line 290
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 292
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->b()Ljava/util/Map;

    move-result-object v1

    .line 293
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 294
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    .line 296
    sget-object v5, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->INCOMP_GET_STATUS_API:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    sget-object v5, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    .line 297
    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    .line 298
    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    .line 299
    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    .line 325
    :cond_1
    sget-object v5, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->INCOMP_API:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 326
    new-instance v4, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v5, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->API_CALL:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {v4, v5, v6, v3}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 326
    invoke-static {p0, v4, v5, v6}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;J)V

    goto :goto_0

    .line 301
    :cond_2
    :goto_1
    :try_start_0
    invoke-static {p0, v3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object v5

    .line 302
    sget-object v7, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->INCOMP_GET_STATUS_API:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v7, v4}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 303
    invoke-virtual {v5, p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->e(Landroid/content/Context;)V

    goto :goto_0

    .line 304
    :cond_3
    sget-object v7, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v7, v4}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 305
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "basic_action"

    const-string v7, "download_res"

    .line 306
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v5, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v7, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-direct {v5, v7, v4, v3}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 308
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 307
    invoke-static {p0, v5, v7, v8}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;J)V

    goto :goto_0

    .line 309
    :cond_4
    sget-object v7, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v7, v4}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 310
    invoke-virtual {v5, p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->g(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 312
    :cond_5
    invoke-virtual {v5}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->i()J

    move-result-wide v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-gtz v4, :cond_0

    .line 313
    invoke-virtual {v5, p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->h(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$DBException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 323
    :catch_0
    sget-object v4, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-static {p0, v3, v4, v6}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 321
    :catch_1
    sget-object v4, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->UNSUPPORTED_TYPE:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-static {p0, v3, v4, v6}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    :catch_2
    sget-object v4, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-static {p0, v3, v4, v6}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 317
    :catch_3
    sget-object v4, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const-string v5, "dberror"

    invoke-static {p0, v3, v4, v5}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 330
    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    :cond_7
    return-void
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 207
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 213
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->g(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_2

    .line 221
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 222
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->f(Ljava/lang/String;)I

    move-result v5

    .line 221
    invoke-static {p0, p1, v3, v4, v5}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object p0

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->h()J

    move-result-wide p0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v3, v3

    sub-long/2addr p0, v3

    cmp-long v3, p0, v1

    if-lez v3, :cond_0

    move-wide v1, p0

    :catch_0
    :cond_0
    const-wide/32 p0, 0x240c8400

    add-long/2addr v1, p0

    .line 231
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    cmp-long p0, p0, v1

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 233
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return p0

    .line 215
    :cond_2
    :try_start_3
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a:Ljava/lang/String;

    const-string v1, "fail to get marketing received time"

    invoke-static {p0, p1, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance p0, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    .line 233
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    throw p0

    .line 209
    :cond_3
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a:Ljava/lang/String;

    const-string v0, "db open fail"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance p0, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0

    .line 204
    :cond_4
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a:Ljava/lang/String;

    const-string v0, "invalid params"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    new-instance p0, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0
.end method

.method public static d(Landroid/content/Context;)V
    .locals 0

    .line 335
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->b(Landroid/content/Context;)V

    .line 337
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->e(Landroid/content/Context;)V

    .line 338
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->f(Landroid/content/Context;)V

    return-void
.end method

.method private static e(Landroid/content/Context;)V
    .locals 11

    .line 158
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 160
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->c()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 161
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 162
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 165
    :try_start_0
    invoke-static {p0, v3}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    .line 171
    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->b(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    move-result-object v4

    .line 172
    sget-object v5, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-wide/32 v6, 0x5265c00

    const-wide/32 v8, 0x240c8400

    if-eqz v5, :cond_0

    .line 175
    :try_start_1
    invoke-static {p0, v3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    sget-object v5, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a:Ljava/lang/String;

    const-string v10, "overdated but delete later to send feedback"

    invoke-static {v5, v3, v10}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {v4, p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->h(Landroid/content/Context;)V

    .line 182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    add-long/2addr v4, v6

    .line 183
    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;J)Z

    goto :goto_2

    .line 185
    :cond_0
    sget-object v5, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->INCOMP_GET_STATUS_API:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    .line 186
    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    .line 187
    invoke-virtual {v5, v4}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 195
    :cond_1
    invoke-static {p0, v3}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_2

    .line 188
    :cond_2
    :goto_1
    sget-object v4, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a:Ljava/lang/String;

    const-string v5, "overdated but delete later to send feedback"

    invoke-static {v4, v3, v5}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object v4, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const/4 v5, 0x0

    invoke-static {p0, v3, v4, v5}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v8

    add-long/2addr v4, v6

    .line 192
    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;J)Z

    goto :goto_2

    :catch_0
    move-exception v4

    .line 167
    sget-object v5, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to delete overdated marketings:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v3, v4}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :catch_1
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 198
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    :cond_5
    return-void
.end method

.method private static f(Landroid/content/Context;)V
    .locals 8

    if-eqz p0, :cond_4

    .line 239
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingData;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 240
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 246
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 250
    :cond_1
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 251
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 252
    sget-object v5, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete unused resource["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/sdk/smp/common/FileIOUtil;->a(Ljava/lang/String;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 256
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    :cond_4
    return-void
.end method
