.class public Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;
.source "SourceFile"


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    .line 47
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TARGET:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->c:Ljava/lang/String;

    .line 48
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TARGET_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->d:Ljava/lang/String;

    .line 49
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->PLAYLIST_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->e:Ljava/lang/String;

    .line 50
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TRACK_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->f:Ljava/lang/String;

    .line 51
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TRACK_LIST:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->g:Ljava/lang/String;

    .line 52
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TAB:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->h:Ljava/lang/String;

    .line 53
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->CATEGORY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->i:Ljava/lang/String;

    .line 54
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->OPTION:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->j:Ljava/lang/String;

    .line 55
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->ORIGIN:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getTargetType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 66
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask$1;->a:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    return v2

    .line 81
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :pswitch_2
    return v1

    .line 71
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 68
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public d()V
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 95
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->a(II)V

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getTargetType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    sget-object v3, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask$1;->a:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    .line 182
    :pswitch_0
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->DRM:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, -0x1

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    .line 184
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->SUBSCRIPTION:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 186
    :cond_2
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->INDIVIDUAL:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, -0x1

    :goto_0
    if-eq v1, v4, :cond_4

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/network/request/usermy/PurchasedTrackApis;->a(Landroid/content/Context;)V

    .line 193
    :cond_4
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->START_DOWNLOAD:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadqueue/DownloadQueueLauncher;->a(Landroid/app/Activity;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 196
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->g:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketActivity;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;I)V

    goto/16 :goto_4

    :pswitch_1
    const/16 v0, 0x32

    .line 178
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/content/Context;)V

    goto/16 :goto_4

    :pswitch_2
    const/16 v0, 0x28

    .line 173
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->i:Ljava/lang/String;

    .line 174
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    .line 175
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/content/Context;)V

    goto/16 :goto_4

    :pswitch_3
    const/16 v0, 0x1e

    .line 170
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/content/Context;)V

    goto/16 :goto_4

    :pswitch_4
    const/16 v0, 0x3c

    .line 167
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 152
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x14

    if-nez v0, :cond_8

    .line 153
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->PLAYLIST:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 155
    :cond_6
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->VIDEO:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v2, 0x1

    .line 158
    :cond_7
    :goto_1
    invoke-static {v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object v0

    .line 159
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    .line 160
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 162
    :cond_8
    invoke-static {v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    .line 163
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 137
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0xa

    if-nez v0, :cond_b

    .line 138
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ALBUM:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    .line 140
    :cond_9
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->GENRE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->h:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v2, 0x1

    .line 143
    :cond_a
    :goto_2
    invoke-static {v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    .line 145
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 147
    :cond_b
    invoke-static {v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    .line 148
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/content/Context;)V

    goto/16 :goto_4

    .line 123
    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 124
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->TIME:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_3

    .line 126
    :cond_c
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->GENRE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v2, 0x1

    .line 129
    :cond_d
    :goto_3
    invoke-static {v3}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/content/Context;)V

    goto :goto_4

    .line 132
    :cond_e
    invoke-static {v3}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    .line 133
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/content/Context;)V

    goto :goto_4

    :pswitch_8
    const/16 v0, 0x6e

    .line 118
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    .line 119
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/content/Context;)V

    goto :goto_4

    .line 110
    :pswitch_9
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->BIXBY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "DeepLink-ModLaunchTask"

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    const/16 v0, 0x64

    .line 114
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->f:Ljava/lang/String;

    .line 115
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/content/Context;)V

    goto :goto_4

    :pswitch_a
    const/16 v0, 0x5a

    .line 106
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModLaunchTask;->a:Landroid/support/v4/app/FragmentActivity;

    .line 107
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/content/Context;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "DeepLink-ModLaunchTask"

    return-object v0
.end method
