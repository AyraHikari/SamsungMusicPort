.class final Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaPlayerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 840
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final notifyBufferingStateChanged(Z)V
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getOnPlayerStateChangedListener$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onBuffering(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2

    const-string v0, "mp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 894
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getBufferingPercent$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)I

    move-result p1

    if-eq p1, p2, :cond_0

    .line 895
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$setBufferingPercent$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;I)V

    .line 896
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBufferingUpdate percent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string v0, "mp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 878
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v0, "onCompletion from MediaPlayer"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLifeCycleLog(Ljava/lang/String;)V

    .line 879
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .line 1132
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isActiveCompleteControllerActivated(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getActiveCompleteController$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    move-result-object p1

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 880
    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;->onMediaPlayerStateChanged(ILandroid/os/Bundle;)V

    .line 884
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->playingCompleted()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    const-string v0, "mp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 927
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$setPrepared$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Z)V

    .line 928
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$setBuffering$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Z)V

    .line 929
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener$onError$1;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener$onError$1;

    check-cast v0, Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 933
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " extra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLifeCycleLog(Ljava/lang/String;)V

    .line 936
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$handleExtraErrors(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;II)Z

    move-result p1

    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3

    const-string v0, "mp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 901
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo [what:] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " [extra:] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mp : "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p3, 0x1

    packed-switch p2, :pswitch_data_0

    const/4 p3, 0x0

    goto :goto_0

    .line 911
    :pswitch_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isBuffering$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 912
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$setBuffering$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Z)V

    .line 913
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->notifyBufferingStateChanged(Z)V

    goto :goto_0

    .line 904
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isBuffering$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 905
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$setBuffering$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Z)V

    .line 906
    invoke-direct {p0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->notifyBufferingStateChanged(Z)V

    :cond_0
    :goto_0
    return p3

    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    const-string v0, "mp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 846
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepared isSupposedToBePlaying:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isSupposedToBePlaying$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " requestedSeekPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getRequestedSeekPosition$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLifeCycleLog(Ljava/lang/String;)V

    .line 847
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$setPrepared$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Z)V

    .line 848
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$setBuffering$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Z)V

    .line 849
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .line 1128
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isActiveCompleteControllerActivated(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1129
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getActiveCompleteController$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    move-result-object p1

    const/4 v2, 0x0

    .line 850
    invoke-interface {p1, v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;->onMediaPlayerStateChanged(ILandroid/os/Bundle;)V

    .line 855
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getRequestedSeekPosition$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_1

    .line 856
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getRequestedSeekPosition$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->seekTo(J)J

    .line 859
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    const-wide/16 v2, -0x1

    invoke-static {p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$setRequestedSeekPosition$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;J)V

    .line 864
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getPlaySpeed()F

    move-result v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setPlaySpeed(F)V

    .line 867
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getOnPlayerStateChangedListener$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isSupposedToBePlaying$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v2

    invoke-interface {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onPrepared(Z)V

    .line 869
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isSupposedToBePlaying$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 870
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$notifyPlayerStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;ZI)V

    goto :goto_0

    .line 872
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    const/4 v0, 0x2

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$notifyPlayerStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;ZI)V

    .line 874
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->getDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->nextSource:Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setNextDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3

    const-string v0, "mp"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 888
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    const-string v0, "onSeekComplete"

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLifeCycleLog(Ljava/lang/String;)V

    .line 889
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .line 1136
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isPlayerReady(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1138
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Landroid/media/MediaPlayer;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$adjustTimingOfSetNextMedia(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Landroid/media/MediaPlayer;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1140
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "media player is in abnormal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLog(Ljava/lang/String;)V

    .line 890
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getOnPlayerStateChangedListener$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onSeekComplete()V

    :cond_2
    return-void
.end method
