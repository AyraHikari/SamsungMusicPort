.class public Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "DisplayResultHandler"


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->b:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->c:Ljava/lang/String;

    .line 35
    iput-wide p3, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->d:J

    .line 36
    iput-boolean p5, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->e:Z

    return-void
.end method

.method private static a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 133
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    sub-long/2addr p1, v0

    .line 135
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->CARD_DISMISS:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    .line 136
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {v0, p3}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v0

    const-string v1, "mid"

    .line 138
    invoke-virtual {v0, v1, p3}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p3

    const-string v0, "targetid"

    .line 139
    invoke-virtual {p3, v0, p4}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p3

    .line 140
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/CardJob;

    move-result-object p3

    .line 141
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object p4

    invoke-interface {p4, p0, p3, p1, p2}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;J)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 9

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    const-string v0, "display_result"

    .line 95
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mid"

    .line 96
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "targetid"

    .line 97
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v1, :cond_0

    .line 100
    sget-object p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a:Ljava/lang/String;

    const-string p1, "fail to handle display result. mid null"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v3, "display_success"

    .line 104
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    const-string v0, "ttl"

    const-wide/16 v5, -0x1

    .line 105
    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 106
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 108
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->DISPLAYED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)Z

    .line 109
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONSUMED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p0, v1, v2, v0, v4}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p1, v1, v3, v4}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->b(Ljava/lang/String;J)Z

    .line 111
    invoke-virtual {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    cmp-long p1, v7, v5

    if-eqz p1, :cond_4

    .line 113
    invoke-static {p0, v7, v8, v1, v2}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v3, "display_fail"

    .line 116
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "feedback_event"

    const/4 v3, -0x1

    .line 118
    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 117
    invoke-static {v0}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->fromInt(I)Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    move-result-object v0

    const-string v3, "userfeedback"

    .line 119
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {p0, v1, v2, v0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v3, "gone_no_reaction"

    .line 121
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 122
    invoke-static {p0, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 123
    sget-object p1, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->NONE_REACTION:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p0, v1, v2, p1, v4}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "fail_but_retry"

    .line 124
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "is_first_display"

    .line 125
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 126
    invoke-static {p0, v1, v2, p1}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 146
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 148
    sget-object p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] fail to retry display. dbHandler null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 152
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->g(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_2

    .line 154
    sget-object v1, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] fail to retry display. over retry count"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 156
    sget-object p3, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v1, "C1009"

    invoke-static {p0, p1, p2, p3, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 161
    :try_start_1
    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    .line 167
    :try_start_2
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;

    move-result-object v0

    .line 168
    invoke-virtual {v0, p0, p3}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 170
    :catch_0
    sget-object v0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] fail to retry display. internal error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 172
    sget-object p3, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/samsung/android/sdk/ppmt/content/Card;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 163
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    throw p0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .locals 4

    .line 56
    iget-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->e:Z

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/ppmt/PpmtReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.samsung.android.sdk.ppmt.RECEIVER_EVENTS"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_action"

    const-string v2, "handle_display_result"

    .line 59
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "display_result"

    const-string v2, "display_success"

    .line 60
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mid"

    .line 61
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "targetid"

    .line 62
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "ttl"

    .line 63
    iget-wide v2, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->d:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V
    .locals 3

    .line 69
    iget-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->e:Z

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/ppmt/PpmtReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.samsung.android.sdk.ppmt.RECEIVER_EVENTS"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_action"

    const-string v2, "handle_display_result"

    .line 72
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "display_result"

    const-string v2, "display_fail"

    .line 73
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mid"

    .line 74
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "targetid"

    .line 75
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "feedback_event"

    .line 76
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->value()I

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "userfeedback"

    .line 77
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/content/Context;)V
    .locals 3

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/ppmt/PpmtReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.samsung.android.sdk.ppmt.RECEIVER_EVENTS"

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_action"

    const-string v2, "handle_display_result"

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "display_result"

    const-string v2, "fail_but_retry"

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mid"

    .line 87
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "targetid"

    .line 88
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "is_first_display"

    .line 89
    iget-boolean v2, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->e:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public c()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->d:J

    return-wide v0
.end method

.method public d()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->e:Z

    return v0
.end method
