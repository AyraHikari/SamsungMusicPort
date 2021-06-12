.class public final Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;
.super Lcom/samsung/android/app/musiclibrary/core/service/receiver/EmptyDataSchemeIntentReceiverObserver;
.source "SourceFile"


# static fields
.field private static final ACTIONS:[Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV"

.field private static final TAG:Ljava/lang/String; = "SV"


# instance fields
.field private final mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    .line 26
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/SecIntent;->WIFIDISPLAY_SESSION_STATE:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/SecIntent;->WIFIDISPLAY_SOURCE_STATE:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "android.intent.action.HEADSET_PLUG"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;->ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/EmptyDataSchemeIntentReceiverObserver;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    return-void
.end method

.method private isWifiDisplayIntent(Ljava/lang/String;)Z
    .locals 1

    .line 94
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/SecIntent;->WIFIDISPLAY_SOURCE_STATE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/SecIntent;->WIFIDISPLAY_SESSION_STATE:Ljava/lang/String;

    .line 95
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public getSupportedActions()[Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;->ACTIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;->isWifiDisplayIntent(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string p1, "state"

    .line 60
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string p1, "by_user"

    .line 61
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v0, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->setWfdState(ZZ)V

    goto/16 :goto_3

    :cond_1
    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "state"

    .line 66
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 67
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->setHdmiConnected(Z)V

    goto/16 :goto_3

    :cond_3
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p1, "android.bluetooth.profile.extra.STATE"

    .line 70
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    .line 71
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "SMUSIC-SV"

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT ACTION_SINK_STATE_CHANGED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 74
    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_4

    :cond_4
    const-string v1, "android.intent.action.HEADSET_PLUG"

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string p1, "state"

    .line 77
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 78
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-ne p1, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    .line 79
    :goto_2
    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const-string v0, "android.intent.action.HEADSET_PLUG"

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3

    :cond_6
    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    .line 81
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 82
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    return-void

    :cond_7
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    .line 87
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 88
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isBt(I)Z

    move-result v2

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v2, 0x0

    .line 90
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/AudioPathReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {p1, p2, v2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->audioPathChanged(Landroid/content/Intent;Z)V

    return-void
.end method
