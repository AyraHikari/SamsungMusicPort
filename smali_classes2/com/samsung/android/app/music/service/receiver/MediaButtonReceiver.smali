.class public Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:J

.field private static c:J

.field private static final e:Landroid/os/Handler;

.field private static f:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;


# instance fields
.field private d:Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 162
    new-instance v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->e:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 50
    new-instance v0, Lcom/samsung/android/app/music/MusicLegalPermissionRequester;

    invoke-direct {v0}, Lcom/samsung/android/app/music/MusicLegalPermissionRequester;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->d:Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;

    return-void
.end method

.method static synthetic a()J
    .locals 2

    .line 31
    sget-wide v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->c:J

    return-wide v0
.end method

.method static synthetic a(J)J
    .locals 0

    .line 31
    sput-wide p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->c:J

    return-wide p0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string p1, "pause"

    goto :goto_0

    :pswitch_1
    const-string p1, "play"

    goto :goto_0

    :pswitch_2
    const-string p1, "fastforward"

    goto :goto_0

    :pswitch_3
    const-string p1, "rewind"

    goto :goto_0

    :pswitch_4
    const-string p1, "previous"

    goto :goto_0

    :pswitch_5
    const-string p1, "next"

    goto :goto_0

    :pswitch_6
    const-string p1, "stop"

    goto :goto_0

    :cond_0
    :pswitch_7
    const-string p1, "togglepause"

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 63
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/KeyEvent;

    if-nez v3, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    .line 69
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    .line 71
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->a(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "MusicButton"

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMediaKey() keycode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " command : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_1

    return-void

    :cond_1
    const-string v0, "audio"

    .line 81
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 82
    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "SMUSIC-MusicButton"

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBluetoothA2dpOn() is false, playing with speaker and key code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->d:Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 p2, 0x59

    if-eq v4, p2, :cond_4

    const/16 p2, 0x5a

    if-ne v4, p2, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, p0

    move-object v2, p1

    .line 106
    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->a(Landroid/content/Context;Landroid/view/KeyEvent;IILjava/lang/String;)V

    goto :goto_1

    .line 104
    :cond_4
    :goto_0
    invoke-direct {p0, p1, v3, v5, v6}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->a(Landroid/content/Context;Landroid/view/KeyEvent;ILjava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    if-ne v5, v0, :cond_6

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->d:Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/permission/LegalPermissionRequester;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 114
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->isOrderedBroadcast()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->abortBroadcast()V

    :cond_7
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/KeyEvent;IILjava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    if-nez p4, :cond_3

    .line 122
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p2

    if-nez p2, :cond_4

    .line 123
    sget-object p2, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    if-eqz p2, :cond_0

    .line 125
    sget-object p2, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->a()V

    .line 135
    :cond_0
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->b(I)I

    move-result p2

    const/16 p4, 0x4f

    if-ne p3, p4, :cond_2

    const-string p3, "MusicButton"

    .line 137
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleNormalKey() - KeyEvent.KEYCODE_HEADSETHOOK - click count: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->c:J

    invoke-virtual {p4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    sget-wide p3, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->c:J

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x12c

    const-wide/16 v5, 0x1

    cmp-long p3, p3, v1

    if-nez p3, :cond_1

    .line 140
    sget-wide p3, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->c:J

    add-long/2addr p3, v5

    sput-wide p3, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->c:J

    .line 141
    invoke-static {p5, p2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;I)V

    .line 142
    sget-object p2, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->e:Landroid/os/Handler;

    sget-object p3, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->e:Landroid/os/Handler;

    .line 143
    invoke-virtual {p3, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 142
    invoke-virtual {p2, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 146
    :cond_1
    sget-wide p2, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->c:J

    add-long/2addr p2, v5

    sput-wide p2, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->c:J

    .line 147
    sget-object p2, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->e:Landroid/os/Handler;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    sget-object p2, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->e:Landroid/os/Handler;

    sget-object p3, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->e:Landroid/os/Handler;

    .line 149
    invoke-virtual {p3, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 148
    invoke-virtual {p2, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 153
    :cond_2
    invoke-static {p5, p2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;I)V

    :goto_0
    const/4 p1, 0x1

    .line 155
    sput-boolean p1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->a:Z

    goto :goto_1

    .line 158
    :cond_3
    sput-boolean v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->a:Z

    :cond_4
    :goto_1
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/view/KeyEvent;ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_2

    .line 204
    sget-boolean p3, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->a:Z

    if-nez p3, :cond_4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p3

    if-nez p3, :cond_4

    .line 205
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide p2

    const/4 v1, 0x1

    .line 207
    sput-boolean v1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->a:Z

    .line 208
    sput-wide p2, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->b:J

    .line 209
    sget-object p2, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    if-eqz p2, :cond_0

    .line 210
    sget-object p2, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->a()V

    :cond_0
    const-string p2, "fastforward"

    .line 212
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 p3, 0x2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    .line 214
    :goto_0
    new-instance p4, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    new-instance v2, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$2;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$2;-><init>(Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;Landroid/content/Context;)V

    const-string p1, "MusicButton"

    invoke-direct {p4, v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask$OnForwardRewindListener;Ljava/lang/String;)V

    sput-object p4, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    .line 232
    sget-object p1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    aput-object p4, p3, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 235
    :cond_2
    sget-object p1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    if-eqz p1, :cond_3

    .line 236
    sget-object p1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->f:Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/control/ForwardRewindControlTask;->a()V

    .line 238
    :cond_3
    sput-boolean v0, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->a:Z

    const-wide/16 p1, 0x0

    .line 241
    sput-wide p1, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->b:J

    :cond_4
    :goto_1
    return-void
.end method

.method private b(I)I
    .locals 1

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_1

    const/16 v0, 0x55

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7e

    if-eq p1, v0, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    :cond_0
    const/16 p1, 0x6c

    goto :goto_0

    :cond_1
    const/16 p1, 0x6b

    :goto_0
    return p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "SMUSIC-MusicButton"

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() intent  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.android.intent.action.MEDIA_BUTTON"

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method
