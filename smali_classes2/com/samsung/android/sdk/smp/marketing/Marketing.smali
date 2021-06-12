.class public Lcom/samsung/android/sdk/smp/marketing/Marketing;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "Marketing"

.field private static final b:[I

.field private static final c:[J


# instance fields
.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:J

.field private k:J

.field private l:I

.field private m:I

.field private n:Ljava/lang/String;

.field private o:J

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    .line 48
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->b:[I

    .line 50
    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c:[J

    return-void

    :array_0
    .array-data 4
        0x6
        0x3
        0x2
    .end array-data

    :array_1
    .array-data 8
        0x493e0
        0x927c0
        0xdbba0
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->e:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->f:Ljava/lang/String;

    .line 78
    iput p4, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->t:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$DBException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$NotSupportedTypeException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->f(Ljava/lang/String;)I

    move-result v3

    .line 121
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    .line 123
    invoke-static {p0, p1, v1, v2, v3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object p0

    return-object p0

    .line 114
    :cond_0
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    const-string v0, "db open fail"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    new-instance p0, Lcom/samsung/android/sdk/smp/exception/InternalException$DBException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/exception/InternalException$DBException;-><init>()V

    throw p0

    .line 108
    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    const-string v0, "fail to get marketing. invalid params"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    new-instance p0, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/marketing/Marketing;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$DBException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$NotSupportedTypeException;,
            Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 88
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object p2

    .line 95
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->h(Ljava/lang/String;)J

    move-result-wide p3

    invoke-direct {p2, p3, p4}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c(J)V

    .line 96
    invoke-direct {p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->s()J

    move-result-wide p3

    const-wide/16 v1, 0x0

    cmp-long p1, p3, v1

    if-gtz p1, :cond_0

    .line 97
    invoke-direct {p2, p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->i(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-object p2

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    throw p0

    .line 90
    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    const-string p2, "db open fail"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance p0, Lcom/samsung/android/sdk/smp/exception/InternalException$DBException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/exception/InternalException$DBException;-><init>()V

    throw p0

    .line 84
    :cond_2
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    const-string p2, "fail to get marketing. invalid params"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance p0, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException;-><init>()V

    throw p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/marketing/Marketing;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$NotSupportedTypeException;
        }
    .end annotation

    const-string v0, "1"

    .line 128
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/NotificationMarketing;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    :cond_0
    const-string v0, "2"

    .line 130
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    new-instance v0, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/PopupMarketing;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0

    .line 133
    :cond_1
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid marketingtype - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p0, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    new-instance p0, Lcom/samsung/android/sdk/smp/exception/InternalException$NotSupportedTypeException;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/exception/InternalException$NotSupportedTypeException;-><init>()V

    throw p0
.end method

.method private a(Landroid/content/Context;I)V
    .locals 5

    const/16 v0, 0x190

    if-gt v0, p2, :cond_0

    const/16 v0, 0x1f4

    if-ge p2, v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->DOWNLOAD_FAIL:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_0
    const/16 v0, 0x3eb

    if-ne p2, v0, :cond_1

    .line 407
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    iget-object p2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->POWER_SAVING_MODE:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 v0, 0x3ec

    if-eq p2, v0, :cond_4

    const/16 v0, 0x3f0

    if-eq p2, v0, :cond_4

    const/16 v0, 0x3f3

    if-eq p2, v0, :cond_4

    .line 421
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_2

    .line 423
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object p2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    const-string v0, "db open fail"

    invoke-static {p1, p2, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 427
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_3

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C1009_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 431
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->DOWNLOAD_FAIL:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-static {p1, v1, v2, p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-void

    .line 434
    :cond_3
    :try_start_1
    iget-object p2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    .line 440
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "basic_action"

    const-string v1, "download_res"

    .line 441
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    new-instance v0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    invoke-direct {v0, v1, p2, v2}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x1b7740

    add-long/2addr v1, v3

    .line 442
    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;J)V

    return-void

    :catchall_0
    move-exception p1

    .line 436
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    throw p1

    .line 417
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->DOWNLOAD_FAIL:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "C"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, v1, p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_4

    .line 700
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    .line 701
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 703
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    const-string p2, "db open fail"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 707
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 708
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->b(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    move-result-object v1

    .line 709
    invoke-static {v1}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->canChangeStateToFail(Lcom/samsung/android/sdk/smp/marketing/MarketingState;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 710
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fail to change to [fail] - current state : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->name()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const-string p3, ""

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-void

    .line 713
    :cond_2
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->FAILED:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingState;)Z

    .line 714
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/smp/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 715
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingData;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/FileIOUtil;->a(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 718
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    throw p0

    :cond_4
    :goto_1
    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingState;)V
    .locals 2

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 752
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 755
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->b(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    move-result-object v0

    .line 756
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->GONE:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    const-string v0, "fail to change to [incomp_api] - state not gone"

    invoke-static {p2, p1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-void

    .line 760
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingState;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 762
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    throw p1

    .line 765
    :cond_1
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    const-string p2, "fail to change to [incomp_api] - db open fail"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 725
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 728
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->b(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    move-result-object v1

    .line 729
    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->GONE:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 742
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-void

    .line 732
    :cond_0
    :try_start_1
    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->INCOMP_API:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    .line 733
    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 734
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    const-string p2, "Fail to change to [gone] - not displayed/incomp_api"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 742
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 738
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d(Ljava/lang/String;J)Z

    .line 739
    :cond_2
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->GONE:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingState;)Z

    .line 740
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingData;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/FileIOUtil;->a(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 742
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    throw p0

    .line 745
    :cond_3
    sget-object p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    const-string p2, "Fail to change to [gone] - db open fail"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private a(Ljava/util/Calendar;IJI)V
    .locals 10

    .line 188
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr p3, v0

    const-wide/32 v0, 0x1b7740

    cmp-long v2, p3, v0

    if-lez v2, :cond_3

    const/16 v2, 0xb

    .line 190
    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr p2, v2

    int-to-long v2, p2

    const-wide/32 v4, 0x36ee80

    mul-long v2, v2, v4

    const/16 p2, 0xc

    .line 191
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-long v4, p2

    const-wide/32 v6, 0xea60

    mul-long v4, v4, v6

    sub-long/2addr v2, v4

    const/16 p2, 0xd

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result p2

    int-to-long v4, p2

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-gez p2, :cond_0

    const-wide/32 v8, 0x5265c00

    add-long/2addr v2, v8

    :cond_0
    int-to-long v8, p5

    mul-long v6, v6, v8

    cmp-long p2, v6, v2

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v6

    :goto_0
    const/4 p2, 0x0

    sub-long p2, p3, v0

    cmp-long p4, v2, p2

    if-lez p4, :cond_2

    goto :goto_1

    :cond_2
    move-wide p2, v2

    .line 204
    :goto_1
    invoke-static {v4, v5, p2, p3}, Lcom/samsung/android/sdk/smp/common/TimeUtil;->a(JJ)J

    move-result-wide p2

    .line 205
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p4

    add-long/2addr p4, p2

    invoke-virtual {p1, p4, p5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 206
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object p4, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "random display(s):"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x3e8

    div-long/2addr p2, v0

    invoke-virtual {p5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p4, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 208
    :cond_3
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object p2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    const-string p3, "do not random display. less than 30 min left until ttlTo"

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "test"

    .line 221
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    if-eqz p0, :cond_0

    .line 222
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "test"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private b(Landroid/content/Context;I)V
    .locals 6

    const/16 v0, 0x3eb

    if-ne p2, v0, :cond_0

    .line 577
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/DeviceInfo;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object p2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->POWER_SAVING_MODE:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    .line 582
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 584
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object p2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    const-string v0, "db open fail"

    invoke-static {p1, p2, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 588
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3ea

    if-eq p2, v2, :cond_2

    .line 593
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;I)Z

    :cond_2
    const/16 v2, 0x190

    const/4 v3, 0x0

    if-gt v2, p2, :cond_3

    const/16 v2, 0x1f4

    if-ge p2, v2, :cond_3

    .line 598
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingState;)Z

    .line 599
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;I)Z

    .line 600
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->GET_MARKETING_STATUS_FAIL:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/samsung/android/sdk/smp/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 602
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->g(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    if-le v1, v2, :cond_4

    .line 605
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingState;)Z

    .line 606
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;I)Z

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C1009_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 608
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->GET_MARKETING_STATUS_FAIL:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-static {p1, v1, v2, p2}, Lcom/samsung/android/sdk/smp/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->g(Landroid/content/Context;)V

    goto :goto_0

    .line 613
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->e(I)J

    move-result-wide v4

    const/4 p2, 0x0

    add-long/2addr v2, v4

    .line 615
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v1, "basic_action"

    const-string v4, "get_marketing_status"

    .line 616
    invoke-virtual {p2, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    new-instance v1, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v4, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    iget-object v5, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    invoke-direct {v1, v4, p2, v5}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p1, v1, v2, v3}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    throw p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const/16 v0, 0x3f7

    if-nez p2, :cond_0

    .line 516
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->b(Landroid/content/Context;I)V

    return-void

    .line 524
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "status"

    .line 525
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v2, "sts"

    .line 526
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "tip"

    .line 527
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v4, 0xc8

    if-eq p2, v4, :cond_2

    const/16 v1, 0x190

    if-eq p2, v1, :cond_1

    .line 557
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->b(Landroid/content/Context;I)V

    goto :goto_1

    .line 554
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->p(Landroid/content/Context;)V

    goto :goto_1

    .line 536
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 538
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    int-to-long v0, v1

    const-wide/16 v6, 0x3e8

    mul-long v0, v0, v6

    cmp-long v0, v4, v0

    if-gtz v0, :cond_4

    .line 539
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->i()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_3

    goto :goto_0

    .line 546
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingState;)Z

    .line 547
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;I)Z

    .line 548
    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    .line 550
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->g(Landroid/content/Context;)V

    goto :goto_1

    .line 541
    :cond_4
    :goto_0
    sget-object v0, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->USER_CHANGE_DATE_AND_TIME_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 542
    invoke-virtual {p2}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    :cond_5
    :goto_1
    return-void

    :catch_0
    move-exception p2

    .line 529
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to get marketing status. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v2, p2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->b(Landroid/content/Context;I)V

    return-void
.end method

.method private c(J)V
    .locals 0

    .line 855
    iput-wide p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->o:J

    return-void
.end method

.method private e(I)J
    .locals 5

    .line 625
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->m:I

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long v0, v0, v2

    packed-switch p1, :pswitch_data_0

    .line 642
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->b:[I

    const/4 v2, 0x2

    aget p1, p1, v2

    int-to-long v3, p1

    div-long/2addr v0, v3

    .line 643
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c:[J

    aget-wide v3, p1, v2

    cmp-long p1, v0, v3

    if-gez p1, :cond_0

    .line 644
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c:[J

    aget-wide v0, p1, v2

    goto :goto_0

    .line 636
    :pswitch_0
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->b:[I

    const/4 v2, 0x1

    aget p1, p1, v2

    int-to-long v3, p1

    div-long/2addr v0, v3

    .line 637
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c:[J

    aget-wide v3, p1, v2

    cmp-long p1, v0, v3

    if-gez p1, :cond_0

    .line 638
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c:[J

    aget-wide v0, p1, v2

    goto :goto_0

    .line 630
    :pswitch_1
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->b:[I

    const/4 v2, 0x0

    aget p1, p1, v2

    int-to-long v3, p1

    div-long/2addr v0, v3

    .line 631
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c:[J

    aget-wide v3, p1, v2

    cmp-long p1, v0, v3

    if-gez p1, :cond_0

    .line 632
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c:[J

    aget-wide v0, p1, v2

    :cond_0
    :goto_0
    const-wide/32 v2, 0x36ee80

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    move-wide v0, v2

    :cond_1
    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private i(Landroid/content/Context;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/smp/exception/InternalException$DBException;
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->f()I

    move-result v0

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->g()I

    move-result v3

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->h()J

    move-result-wide v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v1, v4

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->i()J

    move-result-wide v4

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    int-to-long v6, v6

    sub-long/2addr v4, v6

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->j()I

    move-result v6

    .line 151
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v8, v8, v1

    if-gez v8, :cond_0

    .line 153
    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    const/16 v1, 0xb

    .line 156
    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_1

    .line 158
    invoke-static {v7, v0, v2, v2}, Lcom/samsung/android/sdk/smp/common/TimeUtil;->a(Ljava/util/Calendar;III)V

    goto :goto_0

    :cond_1
    if-gt v3, v1, :cond_2

    .line 160
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    add-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 161
    invoke-static {v7, v0, v2, v2}, Lcom/samsung/android/sdk/smp/common/TimeUtil;->a(Ljava/util/Calendar;III)V

    .line 164
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->n()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v1, p0

    move-object v2, v7

    .line 165
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Ljava/util/Calendar;IJI)V

    .line 168
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 175
    :try_start_0
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c(J)V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->c(Ljava/lang/String;J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 180
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    .line 183
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update expected display time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->s()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->s()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/smp/common/TimeUtil;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 177
    :cond_4
    :try_start_1
    new-instance v0, Lcom/samsung/android/sdk/smp/exception/InternalException$DBException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/smp/exception/InternalException$DBException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 180
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    throw v0

    .line 170
    :cond_5
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    const-string v1, "db open fail"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance p1, Lcom/samsung/android/sdk/smp/exception/InternalException$DBException;

    invoke-direct {p1}, Lcom/samsung/android/sdk/smp/exception/InternalException$DBException;-><init>()V

    throw p1
.end method

.method private j(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "marketing"

    .line 238
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    new-instance v0, Lcom/samsung/android/sdk/smp/storage/PrefManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/smp/storage/PrefManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/PrefManager;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    const-string v3, "fail to display. currently opt out."

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    sget-object v1, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->DISAGREE:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private k(Landroid/content/Context;)Z
    .locals 7

    .line 250
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 251
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->o()Z

    move-result v0

    if-nez v0, :cond_2

    .line 252
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 256
    :try_start_0
    iget v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->p:I

    int-to-long v1, v1

    const-wide/32 v3, 0x5265c00

    mul-long v1, v1, v3

    .line 257
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(J)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->q:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-lt v1, v2, :cond_0

    .line 258
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    const-string v5, "over frequency capping rule(day)"

    invoke-static {v1, v2, v5}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    sget-object v1, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->FC_LIMIT_OVER:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v1, v4}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return v3

    .line 263
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->r:I

    int-to-long v1, v1

    const-wide/32 v5, 0x36ee80

    mul-long v1, v1, v5

    .line 264
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(J)I

    move-result v1

    iget v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->s:I

    if-lt v1, v2, :cond_1

    .line 265
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    const-string v5, "over frequency capping rule(hour)"

    invoke-static {v1, v2, v5}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    sget-object v1, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->FC_LIMIT_OVER:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v1, v4}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return v3

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private l(Landroid/content/Context;)Z
    .locals 8

    .line 288
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 289
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/16 v2, 0xc

    .line 290
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 292
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->f()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->g()I

    move-result v2

    if-lt v2, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->g()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 293
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currently not valid display time range ("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->f()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "-"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->g()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->i(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$DBException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    .line 303
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->i()J

    move-result-wide v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v1, v5

    .line 305
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-gtz v5, :cond_2

    .line 306
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/smp/common/TimeUtil;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", until:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-static {v1, v2}, Lcom/samsung/android/sdk/smp/common/TimeUtil;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 306
    invoke-static {v0, v3, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    const-string v2, "over display time"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    sget-object v0, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    return v4

    :cond_2
    if-eqz v0, :cond_3

    .line 314
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->g(Landroid/content/Context;)V

    return v4

    :cond_3
    return v3

    .line 298
    :catch_0
    sget-object v0, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const-string v1, "dberror"

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    return v4
.end method

.method private m(Landroid/content/Context;)Z
    .locals 8

    .line 322
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->i()J

    move-result-wide v0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 323
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->s()J

    move-result-wide v2

    const/4 v4, 0x0

    cmp-long v2, v2, v0

    if-gez v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->s()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v2, v2, v5

    if-gez v2, :cond_1

    .line 324
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 325
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->f()I

    move-result v3

    if-gt v3, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->g()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 328
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->i(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$DBException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    :catch_0
    sget-object v0, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const-string v1, "dberror"

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    return v4

    .line 336
    :cond_1
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    iget-wide v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->o:J

    cmp-long v2, v0, v2

    if-gtz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 338
    :cond_3
    :goto_1
    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/smp/common/TimeUtil;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", until:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/common/TimeUtil;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-static {v2, v3, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    const-string v2, "over display time"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object v0, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    return v4
.end method

.method private n(Landroid/content/Context;)V
    .locals 4

    .line 384
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 386
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    const-string v1, "db open fail"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->INCOMP_GET_STATUS_API:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingState;)Z

    .line 390
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;I)Z

    .line 391
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->DOWNLOADED:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/samsung/android/sdk/smp/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 393
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->o(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->e(Landroid/content/Context;)V

    .line 396
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-void
.end method

.method private n()Z
    .locals 1

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->b()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private o()Z
    .locals 2

    .line 279
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->p:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->q:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->r:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->s:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private o(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    .line 448
    :try_start_0
    invoke-static {p1, p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/marketing/Marketing;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$LocaleNotMatchException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v1

    .line 471
    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to parse resource."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    sget-object v1, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 463
    instance-of v1, v0, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_0

    .line 464
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to parse resource. file not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    sget-object v0, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CONTENTS_FILE_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const-string v1, "txt_file_not_found"

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 467
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    const-string v2, "fail to parse resource. IOException"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    sget-object v0, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const-string v1, "file_io_error"

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :catch_2
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    const-string v3, "fail to parse resource"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    sget-object v1, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 457
    :catch_3
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    const-string v3, "fail to parse resource. invalid data"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    sget-object v1, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CONTENTS_FILE_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :catch_4
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    const-string v3, "fail to parse resource. not supported type"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    sget-object v1, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->UNSUPPORTED_TYPE:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :catch_5
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    const-string v3, "fail to parse resource. no matched locale"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    sget-object v1, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->LOCALE_NOT_MATCHED:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private p()J
    .locals 6

    .line 771
    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->o:J

    iget v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->m:I

    int-to-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long v2, v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private p(Landroid/content/Context;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 563
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 565
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    const-string v1, "db open fail"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 568
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->CANCELED:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingState;)Z

    .line 569
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->MARKETING_CANCELED:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/samsung/android/sdk/smp/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 570
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/samsung/android/sdk/smp/marketing/MarketingData;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/sdk/smp/common/FileIOUtil;->a(Ljava/lang/String;)Z

    .line 571
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    :cond_1
    return-void
.end method

.method private q()Z
    .locals 2

    .line 775
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->m:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private r()Ljava/lang/String;
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->e:Ljava/lang/String;

    return-object v0
.end method

.method private s()J
    .locals 2

    .line 851
    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->o:J

    return-wide v0
.end method

.method private t()Z
    .locals 1

    .line 866
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->u:Z

    return v0
.end method


# virtual methods
.method a(I)V
    .locals 0

    .line 803
    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->h:I

    return-void
.end method

.method a(IIII)V
    .locals 0

    .line 859
    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->p:I

    .line 860
    iput p2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->q:I

    .line 861
    iput p3, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->r:I

    .line 862
    iput p4, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->s:I

    return-void
.end method

.method a(J)V
    .locals 0

    .line 819
    iput-wide p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->j:J

    return-void
.end method

.method a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 6

    if-eqz p2, :cond_0

    .line 663
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/display/DisplayManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 666
    sget-object p2, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    const-string v1, "fail to display. displaymanager null"

    invoke-static {p2, v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    sget-object p2, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    .line 670
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->t()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->o(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 671
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->m()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->k:J

    invoke-direct {v2, v3, v4, v5, p2}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;-><init>(Ljava/lang/String;JZ)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->a(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;)V

    :cond_3
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .line 795
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->g:Ljava/lang/String;

    return-void
.end method

.method public a()Z
    .locals 2

    const-string v0, "passive"

    .line 139
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "test"

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "marketing"

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    .line 226
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->m(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method b(I)V
    .locals 0

    .line 811
    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->i:I

    return-void
.end method

.method b(J)V
    .locals 0

    .line 827
    iput-wide p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->k:J

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .line 847
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->n:Ljava/lang/String;

    return-void
.end method

.method b()Z
    .locals 2

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->r()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 1

    .line 230
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->l(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method c()Ljava/lang/String;
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    return-object v0
.end method

.method c(I)V
    .locals 0

    .line 835
    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->l:I

    return-void
.end method

.method public c(Landroid/content/Context;)Z
    .locals 1

    .line 234
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->m(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method d()Ljava/lang/String;
    .locals 1

    .line 787
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->f:Ljava/lang/String;

    return-object v0
.end method

.method d(I)V
    .locals 0

    .line 843
    iput p1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->m:I

    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 5

    .line 348
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->n:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/marketing/MarketingParser;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    const-string v2, "fail to request resource. contents url not found"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    sget-object v0, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const-string v1, "contents_url_not_found"

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "/"

    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 358
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/samsung/android/sdk/smp/marketing/MarketingData;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x3c

    .line 366
    invoke-static {p1, v0, v1, v2, v3}, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/smp/network/NetworkResult;

    move-result-object v0

    .line 367
    iget-boolean v3, v0, Lcom/samsung/android/sdk/smp/network/NetworkResult;->a:Z

    if-eqz v3, :cond_3

    .line 368
    invoke-static {v2, v1, v2}, Lcom/samsung/android/sdk/smp/common/FileIOUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 369
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->n(Landroid/content/Context;)V

    goto :goto_0

    .line 371
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 372
    sget-object v0, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x3ef

    .line 374
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 378
    :cond_3
    iget v0, v0, Lcom/samsung/android/sdk/smp/network/NetworkResult;->b:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;I)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 361
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to request resource. invalid contents url. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-object v0, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const-string v1, "contents_url_not_found"

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method e()Ljava/lang/String;
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->g:Ljava/lang/String;

    return-object v0
.end method

.method e(Landroid/content/Context;)V
    .locals 4

    .line 478
    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "basic_action"

    const-string v2, "get_marketing_status"

    .line 480
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    new-instance v1, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->p()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;J)V

    goto :goto_0

    .line 483
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_1

    .line 485
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    const-string v1, "db open fail"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 488
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingState;)Z

    .line 489
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    .line 491
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->g(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method f()I
    .locals 1

    .line 799
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->h:I

    return v0
.end method

.method public f(Landroid/content/Context;)V
    .locals 3

    .line 496
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    invoke-static {}, Lcom/samsung/android/sdk/smp/common/GlobalData;->a()Lcom/samsung/android/sdk/smp/common/GlobalData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/common/GlobalData;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    sget-object v0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    const-string v2, "fail to get marketing status. appid null"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    sget-object v0, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const-string v1, "appid_error"

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    .line 504
    :cond_0
    new-instance v1, Lcom/samsung/android/sdk/smp/network/request/GetMarketingStatusRequest;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/samsung/android/sdk/smp/network/request/GetMarketingStatusRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x3c

    .line 505
    invoke-static {p1, v1, v0}, Lcom/samsung/android/sdk/smp/network/NetworkManager;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/network/request/NetworkRequest;I)Lcom/samsung/android/sdk/smp/network/NetworkResult;

    move-result-object v0

    .line 506
    iget-boolean v1, v0, Lcom/samsung/android/sdk/smp/network/NetworkResult;->a:Z

    if-eqz v1, :cond_1

    .line 507
    iget-object v0, v0, Lcom/samsung/android/sdk/smp/network/NetworkResult;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 509
    :cond_1
    iget v0, v0, Lcom/samsung/android/sdk/smp/network/NetworkResult;->b:I

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->b(Landroid/content/Context;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method g()I
    .locals 1

    .line 807
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->i:I

    return v0
.end method

.method g(Landroid/content/Context;)V
    .locals 4

    .line 656
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "basic_action"

    const-string v2, "display"

    .line 657
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_first_display"

    const/4 v2, 0x1

    .line 658
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 659
    new-instance v1, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->o:J

    invoke-static {p1, v1, v2, v3}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;J)V

    return-void
.end method

.method h()J
    .locals 2

    .line 815
    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->j:J

    return-wide v0
.end method

.method public h(Landroid/content/Context;)V
    .locals 4

    .line 677
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 679
    sget-object p1, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a:Ljava/lang/String;

    const-string v0, "fail to dismiss. db open fail"

    invoke-static {p1, v0}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 683
    :cond_0
    sget-object v1, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->b(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 684
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/display/DisplayManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 685
    iget v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->t:I

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/sdk/smp/display/DisplayManager;->a(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 686
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 687
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->NONE_REACTION:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/samsung/android/sdk/smp/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    const-string v1, "1"

    .line 688
    invoke-virtual {p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "noti"

    goto :goto_0

    :cond_1
    const-string v1, "popup"

    :goto_0
    const-string v2, "clear"

    .line 689
    iget-object v3, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    invoke-static {p1, v2, v1, v3}, Lcom/samsung/android/sdk/smp/common/BroadcastUtil;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-void
.end method

.method i()J
    .locals 2

    .line 823
    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->k:J

    return-wide v0
.end method

.method j()I
    .locals 1

    .line 831
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->l:I

    return v0
.end method

.method k()I
    .locals 1

    .line 839
    iget v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->m:I

    return v0
.end method

.method l()V
    .locals 1

    const/4 v0, 0x1

    .line 870
    iput-boolean v0, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->u:Z

    return-void
.end method

.method public m()Landroid/os/Bundle;
    .locals 3

    .line 875
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mid"

    .line 876
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "displayid"

    .line 877
    iget v2, p0, Lcom/samsung/android/sdk/smp/marketing/Marketing;->t:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
