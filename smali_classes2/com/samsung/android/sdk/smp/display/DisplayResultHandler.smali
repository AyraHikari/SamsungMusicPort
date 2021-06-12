.class public Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "DisplayResultHandler"


# instance fields
.field private b:Ljava/lang/String;

.field private c:J

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZ)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->b:Ljava/lang/String;

    .line 41
    iput-wide p2, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->c:J

    .line 42
    iput-boolean p4, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->d:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->b:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 35
    iput-wide v0, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->c:J

    .line 36
    iput-boolean p2, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->d:Z

    return-void
.end method

.method private a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 113
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr p2, v0

    .line 115
    new-instance v0, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->DISMISS:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p4}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-static {p1, v0, p2, p3}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;J)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 7

    if-eqz p1, :cond_6

    const-string v0, "display_result"

    const-string v1, ""

    .line 122
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "is_first_display"

    .line 123
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "mid"

    .line 124
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    sget-object p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->a:Ljava/lang/String;

    const-string p1, "fail to handle display result. mid null"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 129
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x6f4abffd

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eq v3, v4, :cond_4

    const v4, -0x25619c77

    if-eq v3, v4, :cond_3

    const v4, 0x2fd71e

    if-eq v3, v4, :cond_2

    const v4, 0xca9a274

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "no_action"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const-string v3, "fail"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const-string v3, "fail_but_retry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    const-string v3, "success"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 145
    :pswitch_0
    invoke-static {p0, v2, v5}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 146
    sget-object p1, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->NONE_REACTION:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const/4 v0, 0x0

    invoke-static {p0, v2, p1, v0}, Lcom/samsung/android/sdk/smp/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    const-string p1, "clear"

    const-string v0, "popup"

    .line 147
    invoke-static {p0, p1, v0, v2}, Lcom/samsung/android/sdk/smp/common/BroadcastUtil;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 142
    :pswitch_1
    new-instance p1, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;

    invoke-direct {p1, v2, v1}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->c(Landroid/content/Context;)V

    goto :goto_2

    :pswitch_2
    const-string v0, "feedback_event"

    .line 135
    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->fromInt(I)Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v3, "feedback_detail"

    .line 137
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 138
    new-instance v3, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;

    invoke-direct {v3, v2, v1}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, p0, v0, p1}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    const-string v0, "ttlto"

    const-wide/16 v3, -0x1

    .line 131
    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 132
    new-instance p1, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;

    invoke-direct {p1, v2, v3, v4, v1}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;-><init>(Ljava/lang/String;JZ)V

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->a(Landroid/content/Context;)V

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(Landroid/content/Context;)V
    .locals 4

    .line 79
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 81
    sget-object p1, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->b:Ljava/lang/String;

    const-string v1, "fail to retry display. db open fail"

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/smp/common/SmpLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 85
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->d(Ljava/lang/String;)I

    move-result v1

    .line 86
    iget-object v2, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->b:Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;I)Z

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    .line 89
    sget-object v1, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->b:Ljava/lang/String;

    const-string v3, "fail to retry display. over retry count"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-boolean v1, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->d:Z

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->b:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const-string v3, "C1009"

    invoke-static {p1, v1, v2, v3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    .line 100
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->b(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception p1

    .line 97
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    throw p1
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->b:Ljava/lang/String;

    return-object v0
.end method

.method a(Landroid/content/Context;)V
    .locals 4

    .line 58
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->d:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-static {p1}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->b:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->DISPLAYED:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Ljava/lang/String;Lcom/samsung/android/sdk/smp/marketing/MarketingState;)Z

    .line 62
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->b:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CONSUMED:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v3}, Lcom/samsung/android/sdk/smp/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->b(Ljava/lang/String;J)Z

    .line 64
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    .line 65
    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 66
    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->c:J

    iget-object v2, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->a(Landroid/content/Context;JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->d:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->b:Ljava/lang/String;

    invoke-static {p1, v0, p2, p3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method b()J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->c:J

    return-wide v0
.end method

.method b(Landroid/content/Context;)V
    .locals 6

    .line 104
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "basic_action"

    const-string v2, "display"

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_first_display"

    .line 106
    iget-boolean v2, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->d:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    new-instance v1, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    sget-object v2, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    iget-object v3, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v0, v3}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;-><init>(Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1b7740

    add-long/2addr v2, v4

    .line 107
    invoke-static {p1, v1, v2, v3}, Lcom/samsung/android/sdk/smp/task/STaskDispatcher;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;J)V

    return-void
.end method

.method c()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/samsung/android/sdk/smp/display/DisplayResultHandler;->d:Z

    return v0
.end method
