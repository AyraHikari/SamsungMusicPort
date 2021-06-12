.class public Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;
.source "SourceFile"


# instance fields
.field private c:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    .line 47
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TARGET:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 48
    invoke-static {p1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getTargetType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->c:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    .line 49
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->PLAYLIST_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->d:Ljava/lang/String;

    .line 50
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TRACK_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->e:Ljava/lang/String;

    .line 51
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->LINK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->f:Ljava/lang/String;

    .line 52
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->IMAGE_URL:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->g:Ljava/lang/String;

    .line 53
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->MESSAGE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->h:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->g()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->h:Ljava/lang/String;

    return-object p0
.end method

.method private g()V
    .locals 3

    const-string v0, "DeepLink - MenuEventShareTask"

    const-string v1, "Some error occurred on API call"

    .line 145
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->a:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f0b022d

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->a(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->c:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask$3;->a:[I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->c:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    .line 63
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 61
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d()V
    .locals 5

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->c:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    if-eqz v0, :cond_0

    .line 75
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask$3;->a:[I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->c:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "DeepLink - MenuEventShareTask"

    const-string v1, "requestTrackDetail"

    .line 103
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/network/request/contents/ContentsApis;->c(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 105
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask$2;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;)V

    .line 106
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "DeepLink - MenuEventShareTask"

    const-string v1, "requestPlaylistDetail"

    .line 77
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/network/request/browse/PlaylistDetailApi;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object v0

    .line 79
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask$1;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;)V

    .line 80
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->a:Landroid/support/v4/app/FragmentActivity;

    new-instance v1, Lcom/samsung/android/app/music/milk/share/ShareItem;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->h:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/MenuEventShareTask;->g:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/samsung/android/app/music/milk/share/ShareItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/share/Share;->a(Landroid/app/Activity;Lcom/samsung/android/app/music/milk/share/ShareItem;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "DeepLink - MenuEventShareTask"

    return-object v0
.end method
