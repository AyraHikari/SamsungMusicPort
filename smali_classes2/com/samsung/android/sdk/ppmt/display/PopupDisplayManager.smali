.class public Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;
.super Lcom/samsung/android/sdk/ppmt/display/DisplayManager;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "PopupDisplayManager"

.field public static b:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 1

    .line 114
    sget v0, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->b:I

    return v0
.end method

.method public static a(I)V
    .locals 0

    .line 110
    sput p0, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->b:I

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;)V
    .locals 5

    .line 68
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->g(Ljava/lang/String;)I

    move-result v1

    .line 71
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a(Ljava/lang/String;I)Z

    .line 72
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->a()V

    const/4 v0, 0x5

    if-lt v1, v0, :cond_0

    .line 75
    sget-object v0, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] fail to display. currently busy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->BUSY:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    .line 80
    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;-><init>()V

    sget-object v1, Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;->CARD_BASIC:Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;

    .line 81
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Lcom/samsung/android/sdk/ppmt/schedule/Job$CardEvent;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v0

    const-string v1, "extra_action"

    const-string v2, "display"

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v0

    const-string v1, "mid"

    .line 84
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v0

    const-string v1, "targetid"

    .line 85
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object v0

    const-string v1, "is_first_display"

    .line 86
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->d()Z

    move-result p2

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a(Ljava/lang/String;Z)Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;

    move-result-object p2

    .line 87
    invoke-virtual {p2}, Lcom/samsung/android/sdk/ppmt/schedule/CardJob$Builder;->a()Lcom/samsung/android/sdk/ppmt/schedule/CardJob;

    move-result-object p2

    .line 88
    invoke-static {}, Lcom/samsung/android/sdk/ppmt/schedule/Job;->c()Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x1b7740

    add-long/2addr v1, v3

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/samsung/android/sdk/ppmt/schedule/Scheduler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/schedule/Job;J)V

    :cond_1
    return-void
.end method

.method private b(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v1, 0x4

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;)V
    .locals 5

    if-eqz p1, :cond_4

    if-eqz p3, :cond_4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 28
    sget-object p2, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->a:Ljava/lang/String;

    const-string v1, "fail to display. data null"

    invoke-static {p2, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget-object p2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "mid"

    .line 33
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "template_type"

    const/4 v3, -0x1

    .line 34
    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 35
    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->b(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 36
    sget-object p2, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] not supported type. type:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    sget-object p2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->UNSUPPORTED_CARD_TYPE:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v2, "disturb"

    .line 41
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 42
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/common/DeviceInfo;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    sget-object p2, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] delay display alarm not to disturb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/sdk/ppmt/common/Slog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;)V

    return-void

    .line 48
    :cond_2
    sget v2, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->b:I

    if-eq v2, v3, :cond_3

    .line 49
    sget v2, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->b:I

    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->a(Landroid/content/Context;I)Z

    .line 52
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x44000000    # 512.0f

    .line 53
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v3, "extra_popup"

    .line 54
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string p2, "extra_is_first_display"

    .line 55
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->d()Z

    move-result v3

    invoke-virtual {v2, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "extra_ttlto"

    .line 56
    invoke-virtual {p3}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->c()J

    move-result-wide v3

    invoke-virtual {v2, p2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {p2, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 59
    :try_start_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 61
    sget-object v2, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] fail to display. "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object p2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p3, p1, p2, v0}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;I)Z
    .locals 4

    .line 94
    sget v0, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->b:I

    const/4 v1, 0x1

    if-ne v0, p2, :cond_0

    .line 95
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/android/sdk/ppmt/PpmtPopupActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x44000000    # 512.0f

    .line 96
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "extra_clear"

    .line 97
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-static {p1, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 100
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    sget-object v0, Lcom/samsung/android/sdk/ppmt/display/PopupDisplayManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to clear:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_0
    :goto_0
    return v1
.end method
