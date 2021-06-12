.class final Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v0, "SMUSIC-MusicButton"

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMediaButtonClickHandler - click count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_1

    .line 168
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 169
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playNext()V

    goto :goto_0

    .line 170
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 171
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/utility/player/ServicePlayUtils;->playPrevious()V

    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    .line 173
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/service/receiver/MediaButtonReceiver;->a(J)J

    :goto_1
    return-void
.end method
