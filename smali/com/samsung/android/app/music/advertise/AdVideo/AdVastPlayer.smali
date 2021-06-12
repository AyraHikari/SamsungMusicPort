.class public Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/mz/common/listener/AdVideoPlayerErrorListener;
.implements Lcom/mz/common/listener/AdVideoPlayerListener;
.implements Lcom/mz/common/listener/AdVideoPlayerListenerStart;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;
    }
.end annotation


# instance fields
.field a:Lcom/mapps/android/view/AdVideoPlayer;

.field b:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;

.field c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->a:Lcom/mapps/android/view/AdVideoPlayer;

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->b:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;

    .line 31
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->c:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->a:Lcom/mapps/android/view/AdVideoPlayer;

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->b:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;

    .line 31
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->c:Landroid/os/Handler;

    return-void
.end method

.method private e()V
    .locals 3

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 74
    invoke-virtual {v0, p0, v1, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 47
    new-instance v0, Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mapps/android/view/AdVideoPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->a:Lcom/mapps/android/view/AdVideoPlayer;

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->a:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->addView(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/media/MediaPlayer;II)V
    .locals 2

    const-string p1, "Advert.AdVastPlayer"

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError : val 1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " val 2:"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    const-string p1, "Advert.AdVastPlayer"

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onManPlayerReceive code :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    sparse-switch p2, :sswitch_data_0

    const-string p1, "Advert.AdVastPlayer"

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default code :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_0
    const-string p1, "Advert.AdVastPlayer"

    const-string p2, "MAN_PLAYER_AD_START"

    .line 105
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->b:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;

    if-eqz p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->b:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;->b(Z)V

    .line 108
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->b:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;

    invoke-interface {p1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;->e()V

    const-string p1, "Advert.AdVastPlayer"

    const-string p2, "onManPlayerReceive : ManVideoPlayer.MAN_PLAYER_AD_START block true"

    .line 110
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->c:Landroid/os/Handler;

    new-instance p2, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$2;-><init>(Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;)V

    const-wide/16 v0, 0x1770

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 190
    :sswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->b:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->b:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;->a(I)V

    goto/16 :goto_0

    :sswitch_2
    const-string p1, "Advert.AdVastPlayer"

    const-string p2, "AdVideoPlayer.AD_ID_NO_AD"

    .line 166
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->b:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;

    if-eqz p1, :cond_0

    .line 168
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->b:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;

    invoke-interface {p1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;->c()V

    goto/16 :goto_0

    .line 151
    :sswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->c:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$3;-><init>(Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->b:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;

    if-eqz p1, :cond_0

    const-string p1, "Advert.AdVastPlayer"

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "network error while loading ad"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->b:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;

    const/16 p2, -0x7d0

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;->a(I)V

    goto :goto_0

    .line 176
    :sswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->c:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$4;-><init>(Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->b:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;

    if-eqz p1, :cond_0

    const-string p1, "Advert.AdVastPlayer"

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not to load ad:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->b:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;

    const/16 p2, -0x384

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;->a(I)V

    goto :goto_0

    .line 131
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->b:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;

    if-eqz p1, :cond_0

    .line 132
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->b:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;

    invoke-interface {p1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;->d()V

    const-string p1, "Advert.AdVastPlayer"

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayCompleted code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->b:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;

    invoke-interface {p1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;->b()V

    goto :goto_0

    .line 125
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->b:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;

    if-eqz p1, :cond_0

    const-string p1, "Advert.AdVastPlayer"

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayCompleted code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->b:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;

    invoke-interface {p1}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;->b()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x1770 -> :sswitch_4
        -0x1388 -> :sswitch_3
        -0xfa0 -> :sswitch_4
        -0xbb8 -> :sswitch_4
        -0x7d0 -> :sswitch_3
        -0x3e8 -> :sswitch_3
        -0x384 -> :sswitch_4
        -0x320 -> :sswitch_4
        -0x2bc -> :sswitch_2
        -0x258 -> :sswitch_3
        -0x1f4 -> :sswitch_3
        -0x190 -> :sswitch_3
        -0x12c -> :sswitch_3
        -0xc8 -> :sswitch_3
        -0x64 -> :sswitch_3
        -0x1 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;)V
    .locals 3

    .line 78
    iput-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->b:Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$AdVideoViewListener;

    .line 79
    invoke-direct {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->e()V

    .line 80
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->a:Lcom/mapps/android/view/AdVideoPlayer;

    const-string v0, "1251"

    const-string v1, "31019"

    const-string v2, "802405"

    invoke-virtual {p1, v0, v1, v2}, Lcom/mapps/android/view/AdVideoPlayer;->setAdViewCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->a:Lcom/mapps/android/view/AdVideoPlayer;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/mapps/android/view/AdVideoPlayer;->setVideoMode(I)V

    .line 83
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->a:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {p1, p0}, Lcom/mapps/android/view/AdVideoPlayer;->setAdVideoPlayerListner(Lcom/mz/common/listener/AdVideoPlayerListener;)V

    .line 84
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->a:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {p1, p0}, Lcom/mapps/android/view/AdVideoPlayer;->setAdVideoPlayerErrorListner(Lcom/mz/common/listener/AdVideoPlayerErrorListener;)V

    .line 85
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->a:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {p1, p0}, Lcom/mapps/android/view/AdVideoPlayer;->setAdVideoPlayerStartListner(Lcom/mz/common/listener/AdVideoPlayerListenerStart;)V

    .line 86
    iget-object p1, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->a:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {p1}, Lcom/mapps/android/view/AdVideoPlayer;->showAd()V

    .line 88
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer$1;-><init>(Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;)V

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->a:Lcom/mapps/android/view/AdVideoPlayer;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->a:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdVideoPlayer;->onPause()V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 2

    const-string p1, "Advert.AdVastPlayer"

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onManPlayerDurationReceive : duration :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->a:Lcom/mapps/android/view/AdVideoPlayer;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->a:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdVideoPlayer;->onResume()V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 2

    const-string p1, "Advert.AdVastPlayer"

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceiveRunningStart : val 1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->a:Lcom/mapps/android/view/AdVideoPlayer;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->a:Lcom/mapps/android/view/AdVideoPlayer;

    invoke-virtual {v0}, Lcom/mapps/android/view/AdVideoPlayer;->onDestory()V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/advertise/AdVideo/AdVastPlayer;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 69
    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 0

    return-void
.end method
