.class public Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;
.super Lcom/samsung/android/app/music/milk/deeplink/task/ServiceDeepLinkTask;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;


# instance fields
.field private c:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/ServiceDeepLinkTask;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 52
    invoke-static {p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->c(Landroid/net/Uri;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->c:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    .line 54
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->PLAYLIST_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->d:Ljava/lang/String;

    .line 55
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->STATION_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->e:Ljava/lang/String;

    .line 56
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TRACK_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->f:Ljava/lang/String;

    .line 57
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->OPTION:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->g:Ljava/lang/String;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0b02fa

    const/4 v1, 0x1

    .line 201
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string p3, "DeepLink-DeprecatedServiceTask"

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playStation - station id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "B"

    .line 136
    invoke-virtual {p2, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 137
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->a(Landroid/content/Context;)V

    .line 138
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->h:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    return-void

    .line 142
    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/network/request/bixby/BixbyApis;->a(Landroid/content/Context;Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p2

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object p3

    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p2

    new-instance p3, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask$2;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask$2;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;Landroid/content/Context;)V

    .line 143
    invoke-virtual {p2, p3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->a:Landroid/content/Context;

    new-instance v1, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask$1;-><init>(Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;)V

    const/4 v2, 0x1

    .line 116
    invoke-static {v0, p1, p2, v2, v1}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 190
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->NO_FEEDBACK:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "DeepLink-DeprecatedServiceTask"

    const-string v0, "showToast : No feedback option exist, dn not show toast"

    .line 191
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f0b0495

    goto :goto_0

    :cond_1
    const p1, 0x7f0b0494

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->h:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-object p0
.end method


# virtual methods
.method public a(ILjava/lang/Throwable;)V
    .locals 2
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const-string p2, "DeepLink-DeprecatedServiceTask"

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFailure : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 185
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->a(Z)V

    .line 186
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->h:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "DeepLink-DeprecatedServiceTask"

    const-string v0, "onSuccess"

    .line 177
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 178
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->a(Z)V

    .line 179
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->h:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/NetworkUtils;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 77
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask$3;->a:[I

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->c:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ActionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 86
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->a:Landroid/content/Context;

    .line 80
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/music/service/PlayerService;

    invoke-static {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->h:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    :goto_0
    return-void

    .line 74
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Landroid/content/Context;Landroid/net/Uri;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "DeepLink-DeprecatedServiceTask"

    return-object v0
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 93
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->a:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->f:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 97
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->d:Ljava/lang/String;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->f:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "DeepLink-DeprecatedServiceTask"

    const-string p2, "onServiceConnected - meta data radio"

    .line 100
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playRadio()V

    goto :goto_0

    :cond_2
    const-string p1, "DeepLink-DeprecatedServiceTask"

    const-string p2, "onServiceConnected - meta data not radio"

    .line 103
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play()V

    .line 106
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->h:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
