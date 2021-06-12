.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;
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
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaPlayerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 415
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final ensureWakeLock()V
    .locals 4

    .line 450
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getWakeLock$li(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-nez v0, :cond_1

    .line 451
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/os/PowerManager;

    .line 452
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-string v2, "pm.newWakeLock(PowerMana\u2026OCK, this.javaClass.name)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$setWakeLock$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Landroid/os/PowerManager$WakeLock;)V

    .line 453
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getWakeLock$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    goto :goto_0

    .line 451
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private final takePlayer(Landroid/media/MediaPlayer;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/media/MediaPlayer;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/media/MediaPlayer;",
            "+TR;>;)TR;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 506
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 507
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "but player was changed player:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3

    .line 469
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferingUpdate percent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 541
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 471
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$setBufferingPercent$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;I)V

    goto :goto_1

    .line 542
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "but player was changed player:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    const-string v1, "onCompletion"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    .line 442
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->ensureWakeLock()V

    .line 443
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getWakeLock$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    if-eqz p1, :cond_1

    .line 531
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getOnPlaybackCompleteListener$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackCompleteListener;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackCompleteListener;->onPlaybackComplete(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V

    goto :goto_1

    .line 532
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "but player was changed player:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 6

    .line 458
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " extra : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mp : "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 536
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {p3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/media/MediaPlayer;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    xor-int/2addr p3, p2

    if-eqz p3, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$setPrepared$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Z)V

    .line 461
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$setBuffering$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Z)V

    .line 463
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->notifyPlaybackState$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;ZIFILjava/lang/Object;)V

    return p2

    .line 537
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "but player was changed player:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 464
    check-cast p1, Ljava/lang/Void;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 6

    .line 481
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInfo what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " extra : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mp : "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    const/4 p3, 0x1

    if-eqz p1, :cond_3

    .line 546
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, p3

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 p1, 0x0

    packed-switch p2, :pswitch_data_0

    goto :goto_2

    .line 492
    :pswitch_0
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$isBuffering$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 493
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$setBuffering$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Z)V

    .line 494
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    const/4 v1, 0x0

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$isSupposedToBePlaying$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    const/4 v2, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    const/4 v2, 0x2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->notifyPlaybackState$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;ZIFILjava/lang/Object;)V

    goto :goto_1

    .line 485
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$isBuffering$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 486
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$setBuffering$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Z)V

    .line 487
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->notifyPlaybackState$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;ZIFILjava/lang/Object;)V

    :cond_2
    :goto_1
    const/4 p1, 0x1

    .line 499
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_4

    .line 547
    :cond_3
    :goto_3
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "but player was changed player:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 499
    :goto_4
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 13

    .line 420
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    const-string v1, "onPrepared"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 526
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_1

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrepared isSupposedToBePlaying:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$isSupposedToBePlaying$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$setPrepared$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Z)V

    .line 424
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$setBuffering$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Z)V

    .line 426
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getPlaybackStateBuilder$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;->setDuration(J)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;

    .line 427
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getSeekPosition$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getSeekPosition$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 429
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$setSeekPosition$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;J)V

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$isSupposedToBePlaying$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 433
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->notifyPlaybackState$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;ZIFILjava/lang/Object;)V

    goto :goto_0

    .line 435
    :cond_2
    iget-object v7, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x5

    const/4 v12, 0x0

    invoke-static/range {v7 .. v12}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->notifyPlaybackState$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;ZIFILjava/lang/Object;)V

    .line 437
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_2

    .line 527
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "but player was changed player:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_4

    goto :goto_3

    .line 437
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    const-string v0, "onPrepared but player is null"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    :goto_3
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSeekComplete mp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;Ljava/lang/String;)V

    .line 477
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getOnPlayerStateChangedListener$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController$MediaPlayerListener;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;->access$getPlaybackStateBuilder$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V

    :cond_0
    return-void
.end method
