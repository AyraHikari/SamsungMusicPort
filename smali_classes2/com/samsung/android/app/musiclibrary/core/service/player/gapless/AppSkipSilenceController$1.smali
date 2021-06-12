.class Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SMUSIC-SV-PlayerMedia"

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppSkipSilence: mSkipSilenceReceiver onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "reason"

    const/4 v0, 0x0

    .line 84
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 85
    sget p2, Lcom/samsung/android/app/music/support/samsung/emergencymode/EmergencyConstantsCompat;->MODE_DISABLED:I

    if-ne p1, p2, :cond_1

    .line 86
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;

    .line 87
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;)Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getPlayerSettingManager()Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/IPlayerSettingManager;->getSkipSilence()Z

    move-result p1

    .line 88
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;)Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/IMediaPlayerController;->getNextMediaPlayer()Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object p2

    .line 89
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->getPath()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/AppSkipSilenceController;ZLjava/lang/String;)V

    :cond_1
    return-void
.end method
