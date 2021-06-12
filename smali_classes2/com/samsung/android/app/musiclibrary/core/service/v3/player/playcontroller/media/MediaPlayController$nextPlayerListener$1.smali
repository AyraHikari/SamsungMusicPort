.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$nextPlayerListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$nextPlayerListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$nextPlayerListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next media prepared "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$nextPlayerListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$setNextPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Landroid/media/MediaPlayer;)V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$nextPlayerListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getTestNextResultListener$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$OnResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$nextPlayerListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getNextPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/NextMediaTask$OnResultListener;->onResult(Landroid/media/MediaPlayer;)V

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$nextPlayerListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setNextMediaPlayer(Landroid/media/MediaPlayer;)V

    :cond_1
    return-void
.end method
