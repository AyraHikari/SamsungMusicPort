.class Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoisyAudioStreamReceiver"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)V
    .locals 0

    .line 900
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 901
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$1;)V
    .locals 0

    .line 900
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;-><init>(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/Activity;)V
    .locals 2

    .line 916
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 918
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;->b:Z

    return-void
.end method

.method public b(Landroid/app/Activity;)V
    .locals 1

    .line 922
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;->b:Z

    if-eqz v0, :cond_0

    .line 923
    invoke-virtual {p1, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 924
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;->b:Z

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 905
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "MusicVideo"

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NoisyAudioStreamReceiver.onReceive : action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.media.AUDIO_BECOMING_NOISY"

    .line 907
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 908
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity$NoisyAudioStreamReceiver;->a:Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;->c(Lcom/samsung/android/app/music/milk/store/videoplayer/FullScreenVideoPlayerActivity;)V

    goto :goto_0

    :cond_0
    const-string p1, "SMUSIC-MusicVideo"

    const-string p2, "NoisyAudioStreamReceiver.onReceive : No intent!"

    .line 911
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
