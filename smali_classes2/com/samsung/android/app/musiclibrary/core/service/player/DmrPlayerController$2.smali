.class Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerManager$OnStateChangedListener;


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

    .line 694
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 5

    const-string v0, "SV-PlayerDMR"

    .line 702
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AV player onStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 780
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)V

    goto/16 :goto_1

    .line 733
    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$600(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 734
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$700(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->setDataSource(Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$DataSource;)V

    .line 735
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$602(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)Z

    goto/16 :goto_1

    .line 737
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;II)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$002(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)I

    goto/16 :goto_1

    .line 730
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)I

    move-result v2

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;II)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$002(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)I

    goto/16 :goto_1

    .line 707
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)I

    move-result v0

    const/16 v1, 0x10

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;II)I

    move-result p1

    .line 708
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)V

    goto/16 :goto_1

    .line 711
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)I

    move-result v1

    invoke-static {p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;II)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 717
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)V

    goto/16 :goto_1

    .line 724
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)I

    move-result v0

    const/16 v1, 0x12

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$500(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;II)I

    move-result p1

    .line 726
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)V

    .line 727
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)V

    goto/16 :goto_1

    .line 741
    :pswitch_5
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)I

    move-result p1

    .line 744
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v3, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)V

    .line 746
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$800(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    .line 747
    invoke-static {v3, p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 748
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$802(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)I

    .line 749
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$900(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 750
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1000(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;

    move-result-object p1

    sget v1, Lcom/samsung/android/app/music/support/android/hardware/display/DlnaDeviceCompat;->STATE_CONNECTED:I

    invoke-interface {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/IDlnaStateNotifier;->send(I)V

    .line 751
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1100(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 752
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1100(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->initializeMute()V

    .line 754
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$902(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)Z

    .line 756
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1200(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 757
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1300(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 758
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {v3}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$000(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)I

    move-result v3

    const/16 v4, 0x20

    invoke-static {v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$100(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;II)I

    move-result v1

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$002(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)I

    .line 765
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1402(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)Z

    .line 766
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1200(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onPrepared(Z)V

    goto :goto_0

    .line 761
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->pause()V

    return-void

    .line 768
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    const/16 v2, 0x8

    invoke-static {v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$300(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;II)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "SMUSIC-SV-PlayerDMR"

    const-string v1, "AV player onSeekCompleted"

    .line 769
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1200(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/PlayerController$OnPlayerStateChangedListener;->onSeekComplete()V

    .line 774
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)V

    .line 775
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1500(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 776
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$1500(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    const-wide/16 v0, 0x7530

    invoke-virtual {p1, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_1

    .line 720
    :pswitch_6
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$200(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;I)V

    .line 721
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;

    invoke-static {p1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;->access$400(Lcom/samsung/android/app/musiclibrary/core/service/player/DmrPlayerController;Z)V

    :cond_7
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
