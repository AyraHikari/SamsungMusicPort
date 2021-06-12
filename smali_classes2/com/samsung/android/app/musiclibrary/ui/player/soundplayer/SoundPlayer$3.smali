.class Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

.field private b:F

.field private c:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 589
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->b:F

    const/4 p1, 0x0

    .line 591
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->c:I

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 637
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->s()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAudioFocus("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 640
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 641
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;Z)Z

    .line 642
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a()V

    goto :goto_0

    .line 647
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->e(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 648
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 649
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;Z)Z

    .line 650
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a()V

    goto :goto_0

    .line 654
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x3

    .line 655
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->removeMessages(I)V

    const-wide/16 v0, 0x3e8

    .line 656
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a()Z
    .locals 4

    .line 671
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->g(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->h(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->i(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Landroid/media/session/MediaSession;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->isActive()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;Z)Z

    const/4 v0, 0x0

    .line 674
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->b:F

    .line 675
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->f(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->b:F

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->b:F

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 676
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;Z)V

    .line 677
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->s()Ljava/lang/String;

    move-result-object v0

    const-string v2, "playIfPausedByAudioFocus(): played."

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    return v2

    :cond_1
    return v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 595
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 614
    :pswitch_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->s()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage(RETRY_AUDIO_FOCUS_GAIN): retry - "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->c:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 617
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->c:I

    goto/16 :goto_1

    .line 619
    :cond_0
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->c:I

    const/4 v0, 0x4

    if-ge p1, v0, :cond_1

    .line 620
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->removeMessages(I)V

    const-wide/16 v2, 0x3e8

    .line 621
    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->sendEmptyMessageDelayed(IJ)Z

    .line 622
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->c:I

    goto :goto_1

    .line 625
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;Z)Z

    .line 626
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->s()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage(RETRY_AUDIO_FOCUS_GAIN): no more retry - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 611
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;I)I

    goto :goto_1

    .line 606
    :pswitch_2
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->c:I

    .line 607
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->removeMessages(I)V

    .line 608
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a(I)V

    goto :goto_1

    .line 597
    :pswitch_3
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->b:F

    const v0, 0x3c23d70a    # 0.01f

    add-float/2addr p1, v0

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->b:F

    .line 598
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->b:F

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)F

    move-result v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 599
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->e(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x14

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 601
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)F

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->b:F

    .line 603
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->f(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Landroid/media/MediaPlayer;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->b:F

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$3;->b:F

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
