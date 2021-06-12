.class Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V
    .locals 0

    .line 976
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuffering(Z)V
    .locals 2

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBuffering "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$800(Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onBuffering(Z)V

    return-void
.end method

.method public onCompletion(Z)V
    .locals 2

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCompletion hasNext "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$800(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1033
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$1100(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController;->getDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$202(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    .line 1034
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$1200(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onTrackEnded(Z)V

    if-nez p1, :cond_1

    .line 1038
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$1300(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;J)V

    :cond_1
    return-void
.end method

.method public onError(II)Z
    .locals 2

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError what "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " extra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$800(Ljava/lang/String;)V

    .line 1017
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;II)Z

    move-result p1

    return p1
.end method

.method public onPlayerStateChanged(I)V
    .locals 2

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayerStateChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$800(Ljava/lang/String;)V

    .line 1007
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$900(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string v0, "onPlayerStateChanged but it is try to pause in error state"

    .line 1008
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$800(Ljava/lang/String;)V

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$902(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;I)I

    .line 1011
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onPlayerStateChanged(I)V

    return-void
.end method

.method public onPrepared(Z)V
    .locals 2

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPrepared needToPlay "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$800(Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onPrepared(Z)V

    return-void
.end method

.method public onSeekComplete()V
    .locals 2

    const-string v0, "onSeekComplete"

    .line 980
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$800(Ljava/lang/String;)V

    .line 981
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$900(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onPlayerStateChanged(I)V

    .line 982
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$1000(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)V

    :cond_0
    return-void
.end method

.method public onSpeedChanged(F)V
    .locals 2

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSpeedChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$800(Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onPlaySpeedChanged(F)V

    return-void
.end method
