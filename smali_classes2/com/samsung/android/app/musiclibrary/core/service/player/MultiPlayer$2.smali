.class Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->setPlayReadyListener(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)V
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

    .line 546
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquireStatus(Ljava/lang/String;I)V
    .locals 2

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAcquireStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    invoke-static {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/DebugUtils;->a(Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 550
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$100(Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 571
    :pswitch_0
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "type"

    const/16 v1, 0x18

    .line 572
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "text1"

    const/4 v1, 0x5

    .line 573
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "path"

    .line 574
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "play_ready_drm_acquire_type"

    const/4 v0, 0x3

    .line 575
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 577
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onDrmRequest(Landroid/os/Bundle;)V

    goto :goto_0

    .line 561
    :pswitch_1
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    .line 562
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 564
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    :cond_0
    const-string p1, "play_ready_drm_acquire_type"

    const/4 v0, 0x2

    .line 566
    invoke-virtual {p2, p1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 568
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onDrmRequest(Landroid/os/Bundle;)V

    goto :goto_0

    .line 555
    :pswitch_2
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "play_ready_drm_acquire_type"

    const/4 v0, 0x1

    .line 556
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 558
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/MultiPlayerCommandCallbackHandler;->onDrmRequest(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
