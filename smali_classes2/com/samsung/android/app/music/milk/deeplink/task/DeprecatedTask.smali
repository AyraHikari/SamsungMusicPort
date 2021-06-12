.class public Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;
.source "SourceFile"


# instance fields
.field private c:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

.field private d:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    .line 173
    new-instance p1, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask$2;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->h:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;

    .line 48
    invoke-static {p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->b(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->c:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    .line 49
    invoke-static {p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->c(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->d:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 51
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->PLAYLIST_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->e:Ljava/lang/String;

    .line 52
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->STATION_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->f:Ljava/lang/String;

    .line 53
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TRACK_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "DeepLink-DeprecatedTask"

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playStation - station id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", track id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->a(II)V

    .line 115
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/util/PlaylistIdParser;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "B"

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/network/request/bixby/BixbyApis;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask$1;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;)V

    .line 119
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    goto :goto_0

    .line 142
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->g()V

    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/RadioMediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getSourceId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeepLink-DeprecatedTask"

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "playStation - prepare track : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->g:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playRadio()V

    .line 154
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/LaunchUtils;->b(Landroid/app/Activity;)V

    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->g:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->h:Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;)V

    return-void
.end method

.method private g()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 164
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/uiworker/MilkUIWorker;->a(II)V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->a:Landroid/support/v4/app/FragmentActivity;

    const v1, 0x7f0b02fa

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    .line 63
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;->b()V

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .locals 2

    .line 68
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask$3;->b:[I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->c:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$HostType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 96
    :pswitch_0
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask$3;->a:[I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->d:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->g()V

    .line 102
    :goto_0
    :pswitch_1
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask$3;->a:[I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->d:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    goto :goto_1

    .line 104
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->g()V

    goto :goto_1

    .line 70
    :pswitch_2
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask$3;->a:[I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->d:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 91
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->g()V

    goto :goto_1

    .line 72
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "DeepLink-DeprecatedTask"

    const-string v1, "play : meta data radio"

    .line 78
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playRadio()V

    goto :goto_1

    :cond_4
    const-string v0, "DeepLink-DeprecatedTask"

    const-string v1, "play : meta data not radio"

    .line 81
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play()V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "DeepLink-DeprecatedTask"

    return-object v0
.end method
