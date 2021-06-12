.class Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnMediaInfoListener;


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

    .line 846
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$5;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMediaInfoUpdated()V
    .locals 2

    const-string v0, "SV-PlayerDMR"

    const-string v1, "AV player onMediaInfoUpdated"

    .line 849
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$5;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1200(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 851
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$5;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1200(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$5;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    .line 852
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onBuffering(Z)V

    :cond_1
    return-void
.end method
