.class Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/SemDisplayVolumeKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMuteKeyStateChanged(Z)V
    .locals 2

    .line 89
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mDisplayVolumeKeyListener - onMuteKeyStateChanged is called."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->access$100(Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->setMute(Z)V

    return-void
.end method

.method public onVolumeKeyDown()V
    .locals 2

    .line 70
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mDisplayVolumeKeyListener - onVolumeKeyDown is called."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->access$100(Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->volumeDown()V

    return-void
.end method

.method public onVolumeKeyUp()V
    .locals 2

    .line 79
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mDisplayVolumeKeyListener - onVolumeKeyUp is called."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;->access$100(Lcom/samsung/android/app/musiclibrary/core/library/wifi/ScreenSharingVolumeManager;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/SimpleAVPlayerVolumeController;->volumeUp()V

    return-void
.end method
