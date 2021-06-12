.class public Lcom/samsung/android/app/music/service/receiver/MediaCommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/receiver/MediaCommandAction;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .line 54
    new-instance v0, Lcom/samsung/android/app/music/MusicLegalPermissionRequester;

    invoke-direct {v0}, Lcom/samsung/android/app/music/MusicLegalPermissionRequester;-><init>()V

    .line 55
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/MusicLegalPermissionRequester;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 58
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/music/MusicLegalPermissionRequester;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "SMUSIC-MusicCommand"

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive() intent  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/service/receiver/MediaCommandReceiver;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.musicplus.intent.action.PLAY_CONTENTS"

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 31
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playContents(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "com.sec.android.app.music.intent.action.PLAY_VIA"

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 33
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/util/player/PlayUtils;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    :cond_2
    const-string v1, "com.sec.android.app.music.musicservicecommand.play"

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->play()V

    goto :goto_0

    :cond_3
    const-string v1, "com.sec.android.app.music.musicservicecommand.pause"

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 37
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->pause()V

    goto :goto_0

    :cond_4
    const-string v1, "com.sec.android.app.music.musicservicecommand.playprevious"

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 39
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playPrevious()V

    goto :goto_0

    :cond_5
    const-string v1, "com.sec.android.app.music.musicservicecommand.playnext"

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 41
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playNext()V

    goto :goto_0

    :cond_6
    const-string v1, "com.sec.android.app.music.musicservicecommand.togglepause"

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string p1, "togglepause"

    .line 43
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v1, "com.sec.android.app.music.musicservicecommand.prev"

    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string p1, "previous"

    .line 45
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const-string v1, "com.sec.android.app.music.musicservicecommand.next"

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p1, "next"

    .line 47
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->startCommand(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string v1, "com.sec.android.app.music.intent.action.ENQUEUE"

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 49
    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->enqueueContents(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_a
    :goto_0
    return-void
.end method
