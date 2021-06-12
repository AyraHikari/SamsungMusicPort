.class public Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;
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

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/task/ActivityDeepLinkTask;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/net/Uri;)V

    .line 48
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TARGET:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->c:Ljava/lang/String;

    .line 49
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TRACK_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->d:Ljava/lang/String;

    .line 50
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->PLAYLIST_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->e:Ljava/lang/String;

    .line 51
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->ARTIST_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->f:Ljava/lang/String;

    .line 52
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->ALBUM_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->g:Ljava/lang/String;

    .line 53
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->MUSIC_VIDEO_ID:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->h:Ljava/lang/String;

    .line 54
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->OPTION:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->i:Ljava/lang/String;

    .line 55
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->MOD:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TYPE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    .line 56
    invoke-static {v0, p2}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->a(Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->j:Z

    return-void
.end method

.method private g()V
    .locals 2

    .line 179
    sget-object v0, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->STAY:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/LaunchUtils;->b(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getTargetType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 71
    :cond_0
    sget-object v2, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask$1;->a:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    .line 81
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 79
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 77
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 75
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 73
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d()V
    .locals 14

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getTargetType(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "DeepLink-ModPlayDeepLinkTask"

    const-string v1, "execute - just play"

    .line 91
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isRadio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->playRadio()V

    goto :goto_0

    .line 95
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play()V

    :goto_0
    return-void

    .line 100
    :cond_1
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask$1;->a:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    .line 168
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;->VIDEO_PLAYER:Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/browse/BrowseLauncher$LegacyPageType;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.app.music"

    .line 169
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 170
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "extra_id"

    .line 171
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_content_type"

    .line 172
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_6

    :pswitch_1
    const/16 v0, 0x64

    .line 159
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->a:Landroid/support/v4/app/FragmentActivity;

    .line 160
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/content/Context;)V

    .line 161
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->j:Z

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->d:Ljava/lang/String;

    invoke-static {v0, v1, v4, v3, v2}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;)V

    goto/16 :goto_6

    :pswitch_2
    const/16 v0, 0x6e

    .line 149
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->a:Landroid/support/v4/app/FragmentActivity;

    .line 150
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/content/Context;)V

    .line 151
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->j:Z

    if-eqz v0, :cond_3

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->d:Ljava/lang/String;

    .line 155
    invoke-static {v0, v1, v4, v3, v2}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;)V

    goto/16 :goto_6

    :pswitch_3
    const-string v0, "DeepLink-ModPlayDeepLinkTask"

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execute - play playlist : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->e:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->d:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x5a

    .line 140
    invoke-static {v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher;->b(I)Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->a:Landroid/support/v4/app/FragmentActivity;

    .line 141
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$DefaultActivityRequester;->a(Landroid/content/Context;)V

    .line 142
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->j:Z

    if-eqz v0, :cond_4

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 145
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->e:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->d:Ljava/lang/String;

    invoke-static {v0, v1, v4, v3, v2}, Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;)V

    goto/16 :goto_6

    :pswitch_4
    const-string v0, "DeepLink-ModPlayDeepLinkTask"

    .line 102
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execute - play track : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/MediaDataCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->d:Ljava/lang/String;

    const-string v8, "@"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "local_track_id"

    goto :goto_1

    :cond_5
    const-string v0, "source_id"

    .line 114
    :goto_1
    iget-object v8, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->a:Landroid/support/v4/app/FragmentActivity;

    sget-object v9, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v10, "_id"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "=?"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    new-array v12, v3, [Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->d:Ljava/lang/String;

    aput-object v0, v12, v1

    const/4 v13, 0x0

    .line 115
    invoke-static/range {v8 .. v13}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 118
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v6, "_id"

    .line 119
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v2, v1

    .line 114
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    if-eqz v0, :cond_7

    if-eqz v2, :cond_6

    .line 121
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_3
    throw v1

    :cond_8
    :goto_4
    if-eqz v0, :cond_9

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_9
    cmp-long v0, v4, v6

    if-nez v0, :cond_a

    const-string v0, "DeepLink-ModPlayDeepLinkTask"

    const-string v1, "execute : same track is playing."

    .line 124
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play()V

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->g()V

    return-void

    .line 130
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x5

    const v4, 0x100012

    .line 131
    new-array v3, v3, [J

    aput-wide v6, v3, v1

    invoke-static {v0, v4, v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play(IILjava/lang/String;[JI)V

    goto :goto_5

    .line 134
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->a:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    :goto_5
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->g()V

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e()Ljava/lang/String;
    .locals 1

    const-string v0, "DeepLink-ModPlayDeepLinkTask"

    return-object v0
.end method

.method protected f()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/ModPlayTask;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
