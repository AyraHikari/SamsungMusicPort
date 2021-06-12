.class Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V
    .locals 2

    const-string p1, "SV-Dlna"

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDMRFinderListener > onDeviceAdded deviceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {p3}, Lcom/samsung/android/allshare/ERROR;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object p1

    .line 401
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$500(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V

    .line 402
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    const-string v0, "com.sec.android.app.music.dlna.connectivitychanged"

    const/4 v1, 0x2

    invoke-static {p2, v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Ljava/lang/String;ILjava/lang/String;)V

    .line 404
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {p2, p3, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/allshare/ERROR;Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceRemoved(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V
    .locals 2

    const-string p1, "SV-Dlna"

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDMRFinderListener > onDeviceRemoved deviceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {p3}, Lcom/samsung/android/allshare/ERROR;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 385
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object p1

    .line 389
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$500(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V

    .line 390
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    const-string v0, "com.sec.android.app.music.dlna.connectivitychanged"

    const/4 v1, 0x3

    invoke-static {p2, v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Ljava/lang/String;ILjava/lang/String;)V

    .line 392
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {p2, p3, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/allshare/ERROR;Ljava/lang/String;)V

    return-void
.end method
