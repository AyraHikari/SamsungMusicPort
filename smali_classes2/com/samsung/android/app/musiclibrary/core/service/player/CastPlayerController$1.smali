.class Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient$OnCastPlayerStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$1300(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;

    move-result-object v0

    const/4 v1, 0x0

    .line 129
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    .line 128
    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/ICorePlayerServiceFacade;->onCustomEvent(ILjava/lang/String;)V

    return-void
.end method

.method public onCompletion(Z)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$202(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;J)J

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onCompletion(Z)V

    return-void
.end method

.method public onError(I)V
    .locals 2

    .line 120
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$1000(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)V

    .line 121
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;ZI)V

    .line 123
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p1, v0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onError(II)Z

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;)V
    .locals 8

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->getPlayState()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 96
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$1000(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)V

    .line 97
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    const/4 v0, 0x7

    invoke-static {p1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;ZI)V

    goto :goto_0

    .line 86
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->getPosition()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;->stopTimer(J)V

    .line 89
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$800(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)Z

    move-result v0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;ZI)V

    goto :goto_0

    .line 74
    :pswitch_3
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->getPosition()J

    move-result-wide v2

    .line 75
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)I

    move-result v0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    .line 76
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->getCurrentPosition()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-gez v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    invoke-static {v0, v4, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;ZI)V

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->getDuration()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$502(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;J)J

    .line 82
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$PositionCalculator;->startTimer(J)V

    .line 83
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    invoke-static {p1, v4, v5}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;ZI)V

    goto :goto_0

    .line 92
    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/server/gson/PlaybackState;->getPosition()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$900(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;J)V

    .line 93
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    const/4 v0, 0x2

    invoke-static {p1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;ZI)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepared()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$702(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;I)I

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$800(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onPrepared(Z)V

    return-void
.end method

.method public onSessionStateChanged(Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;ZI)V

    .line 109
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$1200(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$1100(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/CastPlayerController;)J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/IRemotePlaybackClient;->play(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;J)V

    return-void
.end method
