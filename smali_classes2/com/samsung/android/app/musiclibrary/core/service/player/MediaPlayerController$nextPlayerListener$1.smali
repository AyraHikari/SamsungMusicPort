.class final Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$nextPlayerListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaTask$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;-><init>(Landroid/content/Context;Landroid/media/AudioAttributes;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$nextPlayerListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;)V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$nextPlayerListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$nextPlayerListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getNextMediaPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$addToCloseWorker(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Landroid/media/MediaPlayer;)V

    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$nextPlayerListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$setNextMediaPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;)V

    .line 298
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next media prepared "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->getDataSource()Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v2, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;->playingItem:Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/PlayingItem;->getMusicMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$Companion;->printLifeCycleLog(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$nextPlayerListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    .line 1128
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$isActiveCompleteControllerActivated(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1129
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->access$getActiveCompleteController$p(Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;

    move-result-object v0

    .line 300
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "next_file_path"

    const-string v3, "mp"

    .line 303
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/NextMediaPlayer;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 301
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x3

    .line 305
    invoke-interface {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/gapless/PlayingCompleteController;->onMediaPlayerStateChanged(ILandroid/os/Bundle;)V

    .line 309
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController$nextPlayerListener$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;

    check-cast p1, Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MediaPlayerController;->setNextMediaPlayerInternal(Landroid/media/MediaPlayer;)V

    return-void
.end method
