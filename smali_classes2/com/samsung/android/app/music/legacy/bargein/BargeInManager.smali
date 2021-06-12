.class public Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;
.super Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$BargeInNotificationInfo;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "BargeInManager"


# instance fields
.field private final b:Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;

.field private final c:Landroid/content/Context;

.field private final d:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/SimpleLifeCycleCallbackAdapter;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->c:Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;

    invoke-direct {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->b:Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;

    const-string v0, "audio"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->d:Landroid/media/AudioManager;

    .line 70
    iget-object p1, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->b:Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;

    new-instance v0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$1;-><init>(Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;->InitBargeInRecognizer(Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat$IWSpeechRecognizerSdlListener;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;)Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->b:Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VOICE_SETTING_BARGEIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 107
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 109
    sget-object v0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->a:Ljava/lang/String;

    const-string v1, "startRecognition : Intent action is ActivityNotFound "

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->b:Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;->isBargeInEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    sget-object v0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->a:Ljava/lang/String;

    const-string v1, "startRecognition : BargeIn doesn\'t enable"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 117
    sget-object v0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->a:Ljava/lang/String;

    const-string v1, "startRecognition : BargeIn setting was off"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/CallStateChecker;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 125
    sget-object v0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->a:Ljava/lang/String;

    const-string v1, "startRecognition : call is active(not idle), voice input will not start"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->c:Landroid/content/Context;

    const-string v1, "keyguard"

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 134
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    sget-object v0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->a:Ljava/lang/String;

    const-string v1, "startRecognition : key guard locked, voice input will not start"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 138
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->d:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/android/media/AudioManagerSdlCompat;->isFMActive(Landroid/media/AudioManager;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 139
    sget-object v0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->a:Ljava/lang/String;

    const-string v1, "startRecognition : FM radio activated, voice input will not start"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 142
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->d:Landroid/media/AudioManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/support/sdl/android/media/AudioManagerSdlCompat;->isRecordActive(Landroid/media/AudioManager;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 143
    sget-object v0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->a:Ljava/lang/String;

    const-string v1, "startRecognition : Rec activated, voice input will not start"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 147
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->c:Landroid/content/Context;

    .line 148
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hdmi_audio_output"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 149
    iget-object v1, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->d:Landroid/media/AudioManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/support/sdl/android/media/AudioManagerSdlCompat;->isHdmiConnected(Landroid/media/AudioManager;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 150
    sget-object v0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->a:Ljava/lang/String;

    const-string v1, "startRecognition : HDMI connected, voice input will not start"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 154
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->b:Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;->startBargeIn(I)V

    .line 155
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->b()V

    return-void
.end method

.method private a(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string p1, "volume_down"

    .line 95
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string p1, "volume_up"

    .line 98
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string p1, "play"

    .line 92
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string p1, "pause"

    .line 86
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    const-string p1, "previous"

    .line 89
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    const-string p1, "next"

    .line 83
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->a(I)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .line 218
    invoke-static {p0}, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b()V
    .locals 5

    .line 159
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->c()Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$BargeInNotificationInfo;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->c:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VOICE_SETTING_BARGEIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 161
    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 163
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->c:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 164
    invoke-static {v0}, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$BargeInNotificationInfo;->c(Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$BargeInNotificationInfo;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 165
    invoke-static {v0}, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$BargeInNotificationInfo;->a(Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$BargeInNotificationInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$BargeInNotificationInfo;->b(Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$BargeInNotificationInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 166
    invoke-static {v0}, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$BargeInNotificationInfo;->a(Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$BargeInNotificationInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->c:Landroid/content/Context;

    const-string v2, "notification"

    .line 170
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    const v2, 0x7010010

    .line 171
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 2

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "voice_input_control"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private c()Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$BargeInNotificationInfo;
    .locals 6

    .line 175
    new-instance v0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$BargeInNotificationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$BargeInNotificationInfo;-><init>(Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$1;)V

    .line 176
    iget-object v1, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->c:Landroid/content/Context;

    .line 177
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 179
    iget-object v2, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->c:Landroid/content/Context;

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v5, v1, v4

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aget-object v5, v1, v4

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aget-object v5, v1, v4

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aget-object v5, v1, v4

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aget-object v5, v1, v4

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aget-object v1, v1, v4

    aput-object v1, v3, v4

    const v1, 0x7f0b00a5

    .line 180
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$BargeInNotificationInfo;->a(Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$BargeInNotificationInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    iget-object v1, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/app/music/util/AppNameUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$BargeInNotificationInfo;->b(Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$BargeInNotificationInfo;Ljava/lang/String;)Ljava/lang/String;

    const v1, 0x7f02052d

    .line 184
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$BargeInNotificationInfo;->a(Lcom/samsung/android/app/music/legacy/bargein/BargeInManager$BargeInNotificationInfo;I)I

    return-object v0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 2

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "voice_input_control_music"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private d()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->b:Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/support/sdl/samsung/app/IWSpeechRecognizer/BargeInRecognizerSdlCompat;->stopBargeIn()V

    .line 208
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->c:Landroid/content/Context;

    const-string v1, "notification"

    .line 213
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const v1, 0x7010010

    .line 214
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method


# virtual methods
.method public onPauseCalled()V
    .locals 0

    .line 195
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->d()V

    return-void
.end method

.method public onResumeCalled()V
    .locals 0

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/app/music/legacy/bargein/BargeInManager;->a()V

    return-void
.end method
