.class public Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "DeepLinkManager"

.field private static b:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;


# instance fields
.field private c:Z

.field private d:Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->c:Z

    return-void
.end method

.method public static a()Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;
    .locals 2

    .line 37
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->b:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    if-nez v0, :cond_1

    .line 38
    const-class v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->b:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    invoke-direct {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;-><init>()V

    sput-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->b:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    .line 42
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    :cond_1
    :goto_0
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->b:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    return-object v0
.end method

.method private a(Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    .line 83
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 87
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->b()V

    .line 88
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->c:Z

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->d()V

    goto :goto_0

    .line 91
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a:Ljava/lang/String;

    const-string v2, "internalHandleDeepLink : App is not ready, wait."

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->d:Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    const/4 p1, 0x0

    .line 97
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 99
    :cond_3
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a:Ljava/lang/String;

    const-string p2, "internalHandleDeepLink : Task is not null but invalid."

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v1

    :cond_4
    :goto_2
    return v0
.end method

.method private b(Landroid/content/Context;Landroid/content/Intent;)Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 231
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a:Ljava/lang/String;

    const-string p2, "buildServiceDeepLinkTask : Intent is null, cannot build a task"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 235
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_1

    .line 238
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a:Ljava/lang/String;

    const-string p2, "buildServiceDeepLinkTask : URI is null, cannot build a task"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 242
    :cond_1
    invoke-static {p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    move-result-object v1

    .line 243
    invoke-static {p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->b(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    move-result-object v2

    .line 244
    invoke-static {p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->c(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    move-result-object v3

    .line 246
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildServiceDeepLinkTask : URI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    return-object v0

    .line 252
    :cond_2
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->c:[I

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz v2, :cond_5

    if-nez v3, :cond_3

    goto :goto_0

    .line 260
    :cond_3
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->b:[I

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4

    goto :goto_1

    .line 262
    :cond_4
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->a:[I

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    goto :goto_1

    .line 268
    :pswitch_1
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceNextTask;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceNextTask;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0

    .line 266
    :pswitch_2
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePrevTask;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePrevTask;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0

    .line 264
    :pswitch_3
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePauseTask;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/ServicePauseTask;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0

    .line 274
    :pswitch_4
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0

    .line 256
    :cond_5
    :goto_0
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a:Ljava/lang/String;

    const-string p2, "buildServiceDeepLinkTask : Host or Action is not supported"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 281
    :goto_1
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildServiceDeepLinkTask : Matched task not exist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xc
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private b(Landroid/support/v4/app/FragmentActivity;Landroid/content/Intent;)Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 121
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a:Ljava/lang/String;

    const-string p2, "buildActivityDeepLinkTask : Intent is null, cannot build a task"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 125
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    if-nez p2, :cond_1

    .line 128
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a:Ljava/lang/String;

    const-string p2, "buildActivityDeepLinkTask : URI is null, cannot build a task"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 132
    :cond_1
    invoke-static {p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;

    move-result-object v1

    .line 133
    invoke-static {p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->b(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    move-result-object v2

    .line 134
    invoke-static {p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->c(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    move-result-object v3

    .line 136
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buildActivityDeepLinkTask : URI : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_2

    return-object v0

    .line 142
    :cond_2
    sget-object v4, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->c:[I

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$SchemeType;->ordinal()I

    move-result v1

    aget v1, v4, v1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    if-eqz v2, :cond_b

    if-nez v3, :cond_3

    goto/16 :goto_0

    .line 150
    :cond_3
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->b:[I

    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_1

    .line 213
    :pswitch_1
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->a:[I

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_1

    .line 217
    :pswitch_2
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendPlayTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    return-object v0

    .line 215
    :pswitch_3
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/RecommendLaunchTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    return-object v0

    .line 205
    :pswitch_4
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->a:[I

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3

    goto/16 :goto_1

    .line 209
    :pswitch_5
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseChangeTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    return-object v0

    .line 207
    :pswitch_6
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/PurchaseOrderTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    return-object v0

    .line 199
    :pswitch_7
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->a:[I

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_4

    goto/16 :goto_1

    .line 201
    :cond_4
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    return-object v0

    .line 193
    :pswitch_8
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->a:[I

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v2, :cond_5

    goto/16 :goto_1

    .line 195
    :cond_5
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/AnnouncementLaunchTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    return-object v0

    .line 185
    :pswitch_9
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->a:[I

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v2, :cond_7

    const/16 v2, 0x8

    if-eq v1, v2, :cond_6

    goto :goto_1

    .line 189
    :cond_6
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    return-object v0

    .line 187
    :cond_7
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/NoticeLaunchTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    return-object v0

    .line 177
    :pswitch_a
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->a:[I

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v2, :cond_9

    const/4 v2, 0x7

    if-eq v1, v2, :cond_8

    goto :goto_1

    .line 181
    :cond_8
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    return-object v0

    .line 179
    :cond_9
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/MenuLaunchTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    return-object v0

    .line 171
    :pswitch_b
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->a:[I

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v2, :cond_a

    goto :goto_1

    .line 173
    :cond_a
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/MeLaunchTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    return-object v0

    .line 160
    :pswitch_c
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->a:[I

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4

    goto :goto_1

    .line 167
    :pswitch_d
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    return-object v0

    .line 152
    :pswitch_e
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager$1;->a:[I

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5

    goto :goto_1

    .line 156
    :pswitch_f
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    return-object v0

    .line 154
    :pswitch_10
    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    return-object v0

    .line 146
    :cond_b
    :goto_0
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a:Ljava/lang/String;

    const-string p2, "buildActivityDeepLinkTask : Host or Action is not supported"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 224
    :goto_1
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "buildActivityDeepLinkTask : Matched task not exist : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_e
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xa
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method

.method private e()Z
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->d:Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a:Ljava/lang/String;

    const-string v1, "resumeExecute : No task exist to resume."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 111
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a:Ljava/lang/String;

    const-string v1, "resumeExecute : Resume to handle."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->d:Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;->d()V

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->d:Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->b(Landroid/content/Context;Landroid/content/Intent;)Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;

    move-result-object p1

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a(Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;Landroid/content/Intent;)Z
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->b(Landroid/support/v4/app/FragmentActivity;Landroid/content/Intent;)Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;

    move-result-object p1

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a(Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    .line 52
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a:Ljava/lang/String;

    const-string v1, "setPause"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->c:Z

    return-void
.end method

.method public c()Z
    .locals 2

    .line 57
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a:Ljava/lang/String;

    const-string v1, "setResume"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->c:Z

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a:Ljava/lang/String;

    const-string v1, "Already resumed."

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->c:Z

    .line 63
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->e()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    .line 287
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->a:Ljava/lang/String;

    const-string v1, "release"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->d:Lcom/samsung/android/app/music/milk/deeplink/task/DeepLinkTask;

    .line 289
    sput-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;->b:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkManager;

    return-void
.end method
