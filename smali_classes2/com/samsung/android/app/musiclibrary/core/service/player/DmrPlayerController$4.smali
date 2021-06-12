.class Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)V
    .locals 0

    .line 823
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion()V
    .locals 3

    const-string v0, "SV-PlayerDMR"

    const-string v1, "AV player onCompletion"

    .line 827
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1500(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1500(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$802(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)I

    .line 838
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)V

    .line 839
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1200(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 840
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$4;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1200(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onCompletion(Z)V

    :cond_1
    return-void
.end method
