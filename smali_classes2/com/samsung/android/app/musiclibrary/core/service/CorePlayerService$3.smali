.class Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->tempForegroundAndStopForeground(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)V
    .locals 0

    .line 611
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 615
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$1100(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    const-string v1, "try to temporary stop foreground"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$1200(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Ljava/lang/String;)V

    .line 622
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->stopForeground(Z)V

    return-void

    .line 616
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore try to temporary stop foreground. notification showing? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    .line 618
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$1100(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isPlaying? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->mPlayer:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->isPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 616
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;->access$1200(Lcom/samsung/android/app/musiclibrary/core/service/CorePlayerService;Ljava/lang/String;)V

    return-void
.end method
