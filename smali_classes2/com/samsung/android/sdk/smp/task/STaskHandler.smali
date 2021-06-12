.class public Lcom/samsung/android/sdk/smp/task/STaskHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "STaskHandler"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V
    .locals 1

    .line 40
    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->INITIALIZE:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/common/SmpInterfaceImpl;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 42
    :cond_0
    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->UPLOAD_CLIENTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->k(Landroid/content/Context;)V

    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->SET_APPFILTER:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_8

    .line 46
    invoke-static {p0, p2}, Lcom/samsung/android/sdk/smp/data/DataManager;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 47
    :cond_2
    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->CLEAR_ALL_APPFILTER:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 48
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/DataManager;->m(Landroid/content/Context;)V

    goto :goto_0

    .line 49
    :cond_3
    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->SEND_ACK:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 50
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/data/AckManager;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 51
    :cond_4
    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->RECEIVE_MARKETING_MESSAGE:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "appdata"

    .line 52
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_5
    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->HANDLE_APP_UPDATE_EVENT:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 54
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->d(Landroid/content/Context;)V

    goto :goto_0

    .line 55
    :cond_6
    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->HANDLE_INCOMP_MARKETING_REQUESTS:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 56
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/marketing/MarketingManager;->c(Landroid/content/Context;)V

    goto :goto_0

    .line 57
    :cond_7
    sget-object v0, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->SAVE_APP_USAGE:Lcom/samsung/android/sdk/smp/task/STask$CommonAction;

    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/smp/task/STask$CommonAction;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    .line 59
    invoke-static {p0, p2}, Lcom/samsung/android/sdk/smp/data/UsageManager;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    :cond_8
    :goto_0
    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask$Action;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 64
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a(Landroid/content/Context;)Lcom/samsung/android/sdk/smp/storage/DBHandler;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 70
    invoke-virtual {v0, p2}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->b(Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    move-result-object v1

    const/4 v2, 0x0

    .line 72
    :try_start_0
    sget-object v3, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->CANCELED:Lcom/samsung/android/sdk/smp/marketing/MarketingState;

    invoke-virtual {v3, v1}, Lcom/samsung/android/sdk/smp/marketing/MarketingState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 73
    sget-object p1, Lcom/samsung/android/sdk/smp/task/STaskHandler;->a:Ljava/lang/String;

    const-string p3, "already canceled. ignore this event"

    invoke-static {p1, p2, p3}, Lcom/samsung/android/sdk/smp/common/SmpLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$DBException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    return-void

    .line 77
    :cond_1
    :try_start_1
    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->BASIC:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p3, :cond_9

    const-string p1, "basic_action"

    const-string v1, ""

    .line 79
    invoke-virtual {p3, p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, -0x1

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x42202c69

    if-eq v3, v4, :cond_4

    const v4, 0x545515f4

    if-eq v3, v4, :cond_3

    const v4, 0x63a518c2

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, "display"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    const-string v3, "get_marketing_status"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const-string v3, "download_res"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    :cond_5
    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p1, "is_first_display"

    .line 88
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 89
    invoke-static {p0, p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object p3

    invoke-virtual {p3, p0, p1}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Z)V

    goto :goto_1

    .line 85
    :pswitch_1
    invoke-static {p0, p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->f(Landroid/content/Context;)V

    goto :goto_1

    .line 82
    :pswitch_2
    invoke-static {p0, p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->d(Landroid/content/Context;)V

    goto :goto_1

    .line 93
    :cond_6
    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->DISMISS:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 94
    invoke-static {p0, p2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/smp/marketing/Marketing;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->h(Landroid/content/Context;)V

    goto :goto_1

    .line 95
    :cond_7
    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->API_CALL:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 96
    invoke-static {p0, p2}, Lcom/samsung/android/sdk/smp/marketing/UserActionLauncher;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 97
    :cond_8
    sget-object v1, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->CUSTOM_FEEDBACK:Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;

    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/smp/task/STask$MarketingAction;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "custom_feedback"

    .line 98
    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 100
    sget-object p3, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CUSTOM_FEEDBACK:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-static {p0, p2, p3, p1}, Lcom/samsung/android/sdk/smp/feedback/FeedbackManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$DBException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$NotSupportedTypeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/samsung/android/sdk/smp/exception/InternalException$WrongMarketingDataException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 110
    :catch_0
    :try_start_2
    sget-object p1, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-static {p0, p2, p1, v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :catch_1
    sget-object p1, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->UNSUPPORTED_TYPE:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-static {p0, p2, p1, v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :catch_2
    sget-object p1, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    invoke-static {p0, p2, p1, v2}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :cond_9
    :goto_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    goto :goto_3

    .line 104
    :catch_3
    :try_start_3
    sget-object p1, Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;

    const-string p3, "dberror"

    invoke-static {p0, p2, p1, p3}, Lcom/samsung/android/sdk/smp/marketing/Marketing;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/smp/feedback/FeedbackEvent;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 112
    :goto_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/smp/storage/DBHandler;->a()V

    throw p0

    :cond_a
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask;)V
    .locals 2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 31
    instance-of v0, p1, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/task/STask;->c()Lcom/samsung/android/sdk/smp/task/STask$Action;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/samsung/android/sdk/smp/task/SMarketingTask;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/smp/task/SMarketingTask;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/task/STask;->b()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, v0, v1, p1}, Lcom/samsung/android/sdk/smp/task/STaskHandler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask$Action;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/task/STask;->c()Lcom/samsung/android/sdk/smp/task/STask$Action;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/smp/task/STask;->b()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/samsung/android/sdk/smp/task/STaskHandler;->a(Landroid/content/Context;Lcom/samsung/android/sdk/smp/task/STask$Action;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method
