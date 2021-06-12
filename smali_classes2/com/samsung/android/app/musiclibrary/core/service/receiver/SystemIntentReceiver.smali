.class public final Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;
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

    const/16 v0, 0xe

    .line 34
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "android.intent.action.MY_PACKAGE_SUSPENDED"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "com.samsung.android.app.music.core.state.SETTING_CHANGED"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "com.sec.android.app.music.dlna.connectivitychanged"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "com.sec.android.screensharing.DLNA_CONNECTION_REQUEST"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "com.sec.android.screensharing.DLNA_DISCONNECTION_REQUEST"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "com.samsung.launcher.action.EASY_MODE_CHANGE"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "com.samsung.launcher.action.EASY_MODE_CHANGE_MUSIC"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "com.samsung.intent.action.START_SMART_VIEW_MULTI_SELECT"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->ACTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/EmptyDataSchemeIntentReceiverObserver;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    return-void
.end method


# virtual methods
.method public getSupportedActions()[Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->ACTIONS:[Ljava/lang/String;

    return-object v0
.end method

.method public onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 83
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    .line 88
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->reloadMeta()V

    .line 93
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->pushExtraStateUpdate(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_3

    :cond_0
    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    .line 94
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string v3, "android.intent.action.MY_PACKAGE_SUSPENDED"

    .line 95
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    .line 98
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    const-string v2, "status"

    .line 99
    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "level"

    .line 101
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 102
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->batteryChanged(II)V

    goto/16 :goto_3

    .line 103
    :cond_2
    sget-object v3, Lcom/samsung/android/app/music/support/android/hardware/display/DisplayManagerCompat;->ACTION_WIFI_DISPLAY_STATUS_CHANGED:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 104
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/app/music/support/android/hardware/display/WifiDisplayStatusCompat;->getActiveDisplayState(Landroid/content/Intent;)I

    move-result v1

    .line 105
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->setWfdState(I)V

    goto/16 :goto_3

    :cond_3
    const-string v3, "com.samsung.android.intent.action.PRIVATE_MODE_OFF"

    .line 106
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 108
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->privateModeOff()V

    goto/16 :goto_3

    :cond_4
    const-string v3, "com.sec.android.app.music.dlna.connectivitychanged"

    .line 109
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x3

    if-eqz v3, :cond_6

    const-string v2, "com.sec.android.app.music.dlna.connectivitychanged.extra.what"

    .line 110
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_5

    if-eq v2, v6, :cond_5

    return-void

    :cond_5
    const-string v3, "com.sec.android.app.music.dlna.extra.deviceId"

    .line 114
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 116
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->dlnaConnectionChanged(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    const-string v3, "com.sec.android.screensharing.DLNA_CONNECTION_REQUEST"

    .line 118
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v2, "uid"

    .line 119
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v1, "SMUSIC-SV"

    const-string v2, "mOtherDeviceReceiver ScreenSharing - DLNA_CONNECTION_REQUEST: dmrId is null"

    .line 121
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const-string v3, "player_type"

    .line 125
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 126
    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v3, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->dlnaConnectionRequested(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    const-string v3, "com.sec.android.screensharing.DLNA_DISCONNECTION_REQUEST"

    .line 127
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 128
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->dlnaDisconnectionRequested()V

    goto/16 :goto_3

    :cond_9
    const-string v3, "com.samsung.intent.action.START_SMART_VIEW_MULTI_SELECT"

    .line 129
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 130
    invoke-static/range {p1 .. p2}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingManager;->getSharedItemIds(Landroid/content/Context;Landroid/content/Intent;)[J

    move-result-object v9

    if-eqz v9, :cond_b

    .line 131
    array-length v1, v9

    if-nez v1, :cond_a

    goto :goto_0

    .line 135
    :cond_a
    iget-object v7, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    .line 136
    invoke-interface/range {v7 .. v15}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->openQueueFromIntent(Ljava/lang/String;[JIZLjava/lang/String;ZJ)V

    goto :goto_3

    :cond_b
    :goto_0
    const-string v1, "SMUSIC-SV"

    const-string v2, "mOtherDeviceReceiver ScreenSharing - no shared items."

    .line 132
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const-string v3, "com.samsung.android.app.music.core.state.SETTING_CHANGED"

    .line 137
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 138
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->changeSetting(Landroid/os/Bundle;)V

    goto :goto_3

    :cond_d
    const-string v3, "com.samsung.launcher.action.EASY_MODE_CHANGE"

    .line 139
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_f

    const-string v3, "com.samsung.launcher.action.EASY_MODE_CHANGE_MUSIC"

    .line 140
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_1

    .line 143
    :cond_e
    sget-object v3, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->VOLUME_CHANGED_ACTION:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 144
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->EXTRA_VOLUME_STREAM_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_12

    .line 146
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->volumeChanged()V

    goto :goto_3

    :cond_f
    :goto_1
    const-string v2, "easymode"

    .line 141
    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 142
    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    if-eqz v1, :cond_10

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/app/musiclibrary/core/utils/EasyModeUtils;->isEasyMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v4, 0x1

    :cond_10
    invoke-interface {v2, v4}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->easyModeEnabled(Z)V

    goto :goto_3

    .line 96
    :cond_11
    :goto_2
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->pause()V

    .line 97
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/SystemIntentReceiver;->mCorePlayerServiceFacade:Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->exit()V

    :cond_12
    :goto_3
    return-void
.end method
