.class Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnErrorListener;


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

    .line 787
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerDMR"

    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AV player error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 794
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    const/16 v0, -0x384

    const/16 v1, -0xbb9

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1600(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;IIZ)V

    goto :goto_0

    .line 800
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1700(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)V

    :goto_0
    return-void
.end method

.method public onPlayResponseReceivedError(I)V
    .locals 3

    const-string v0, "SMUSIC-SV-PlayerDMR"

    .line 806
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AV player onPlayResponseReceivedError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x384

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 815
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    const/16 v2, -0xbb9

    invoke-static {p1, v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1600(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;IIZ)V

    goto :goto_0

    .line 809
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    const/16 v2, -0xbba

    invoke-static {p1, v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1600(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;IIZ)V

    :goto_0
    return-void
.end method
