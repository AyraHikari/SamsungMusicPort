.class Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver$OnServiceMetaReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;

    invoke-static {v0}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;->d(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;)Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/ResultListener;->onComplete(Lcom/samsung/android/app/musiclibrary/core/bixby/v2/Result;)V

    .line 131
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;->e(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;)Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/bixby/v2/util/ServiceMetaReceiver;->b()V

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 1

    .line 125
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getChannelId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/service/ShuffleRepeatController;->a(Landroid/content/Context;Ljava/lang/String;)Z

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

.method private a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 6

    .line 84
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueSize()J

    move-result-wide v0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 85
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Music_12_2"

    goto :goto_0

    :cond_0
    const-string p1, "Music_13_2"

    :goto_0
    invoke-direct {p0, v3, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor$1;->a(ILjava/lang/String;)V

    return v2

    .line 88
    :cond_1
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/EmptyMusicMetadata;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 89
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Music_12_5"

    goto :goto_1

    :cond_2
    const-string p1, "Music_13_5"

    :goto_1
    invoke-direct {p0, v3, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor$1;->a(ILjava/lang/String;)V

    return v2

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method private b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z
    .locals 4

    .line 96
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor$1;->c(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const-string v1, "extra.repeat_state"

    .line 100
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 101
    iget-object v1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;

    invoke-static {v1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;->c(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;)I

    move-result v1

    if-eq v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 102
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceMetaReceived() - mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;

    .line 103
    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;->c(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v2/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method private c(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Landroid/os/Bundle;
    .locals 1

    .line 110
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->isRadio()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 111
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getRadioQueueExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    .line 113
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    move-object v0, p1

    goto :goto_0

    .line 116
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    .line 118
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor$1;->a(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor$1;->b(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 71
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Music_12_4"

    goto :goto_0

    :cond_1
    const-string p1, "Music_13_4"

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor$1;->a(ILjava/lang/String;)V

    return-void

    .line 74
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;->b(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor$1;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, -0x1

    .line 76
    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "Music_12_8"

    goto :goto_1

    :cond_3
    const-string p2, "Music_13_10"

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor$1;->a(ILjava/lang/String;)V

    return-void

    .line 79
    :cond_4
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;

    invoke-static {p2}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;->c(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->setRepeat(I)V

    .line 80
    iget-object p1, p0, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor$1;->a:Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;

    invoke-static {p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;->a(Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "Music_12_7"

    goto :goto_2

    :cond_5
    const-string p1, "Music_13_7"

    :goto_2
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/music/bixby/v2/executor/player/PlayerRepeatExecutor$1;->a(ILjava/lang/String;)V

    return-void
.end method
