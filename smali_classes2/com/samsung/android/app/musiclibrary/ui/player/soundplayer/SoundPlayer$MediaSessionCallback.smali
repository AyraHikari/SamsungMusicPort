.class Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;
.super Landroid/media/session/MediaSession$Callback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaSessionCallback"
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

.field private b:Landroid/media/session/MediaSession;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;Landroid/media/session/MediaSession;)V
    .locals 0

    .line 702
    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    .line 703
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .line 704
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->b:Landroid/media/session/MediaSession;

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 785
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->s()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleKeyEventActionDown() - keyCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x4f

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 799
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a()V

    goto :goto_0

    .line 802
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->j(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    goto :goto_0

    .line 814
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;I)V

    goto :goto_0

    .line 811
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->b(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;I)V

    goto :goto_0

    .line 808
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->e()V

    goto :goto_0

    .line 805
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d()V

    goto :goto_0

    .line 796
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->b()V

    goto :goto_0

    .line 793
    :cond_1
    :pswitch_7
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->i()V

    :goto_0
    return-void

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

.method private b(I)V
    .locals 3

    .line 822
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->s()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleKeyEventActionUp() - keyCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 830
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->l(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x59
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 838
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSessionCallback release()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 839
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    .line 840
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->b:Landroid/media/session/MediaSession;

    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 762
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->s()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSession onMediaButtonEvent() - mediaButtonIntent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->b:Landroid/media/session/MediaSession;

    if-eqz v0, :cond_0

    const-string v0, "android.intent.action.MEDIA_BUTTON"

    .line 766
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.KEY_EVENT"

    .line 767
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    .line 769
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 774
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->b(I)V

    goto :goto_0

    .line 771
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a(I)V

    const/4 p1, 0x1

    return p1

    .line 781
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .line 717
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSession onPause()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a()V

    :cond_0
    return-void
.end method

.method public onPlay()V
    .locals 2

    .line 709
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSession onPlay()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->j(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)V

    :cond_0
    return-void
.end method

.method public onSeekTo(J)V
    .locals 3

    .line 733
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->s()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSession onSeekTo() - pos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->k(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->a(J)V

    goto :goto_0

    :cond_0
    const-string v0, "TAG"

    .line 738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaSession onSeekTo() pos : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ignore this, our ff/rew task is working now"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSkipToNext()V
    .locals 2

    .line 746
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSession onSkipToNext()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-eqz v0, :cond_0

    .line 748
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->d()V

    :cond_0
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 2

    .line 754
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSession onSkipToPrevious()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->e()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 725
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->s()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSession onStop()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$MediaSessionCallback;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer;->b()V

    :cond_0
    return-void
.end method
