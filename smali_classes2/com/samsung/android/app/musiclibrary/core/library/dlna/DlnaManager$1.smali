.class Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->bindDlnaService(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnDlnaServiceCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

.field final synthetic val$callback:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnDlnaServiceCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnDlnaServiceCallback;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->val$callback:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnDlnaServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(Lcom/samsung/android/allshare/ServiceProvider;Lcom/samsung/android/allshare/ServiceConnector$ServiceState;)V
    .locals 3

    const-string v0, "SMUSIC-SV-Dlna"

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindDlnaService > onCreate state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    check-cast p1, Lcom/samsung/android/allshare/media/MediaServiceProvider;

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$102(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/allshare/media/MediaServiceProvider;)Lcom/samsung/android/allshare/media/MediaServiceProvider;

    .line 158
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/media/MediaServiceProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/allshare/media/MediaServiceProvider;->getDeviceFinder()Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$202(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/allshare/media/MediaDeviceFinder;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    .line 160
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V

    .line 161
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_PROVIDER:Lcom/samsung/android/allshare/Device$DeviceType;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 162
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$400(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    move-result-object v0

    .line 161
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 164
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$500(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V

    .line 165
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$200(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/media/MediaDeviceFinder;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/allshare/Device$DeviceType;->DEVICE_AVPLAYER:Lcom/samsung/android/allshare/Device$DeviceType;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 166
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$600(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;

    move-result-object v0

    .line 165
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/allshare/media/MediaDeviceFinder;->setDeviceFinderEventListener(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/DeviceFinder$IDeviceFinderEventListener;)V

    .line 168
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    const-string p2, "com.sec.android.app.music.dlna.servicecreated"

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Ljava/lang/String;)V

    .line 169
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->val$callback:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnDlnaServiceCallback;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnDlnaServiceCallback;->onServiceConnected(Z)V

    return-void
.end method

.method public onDeleted(Lcom/samsung/android/allshare/ServiceProvider;)V
    .locals 3

    const-string v0, "SMUSIC-SV-Dlna"

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindDlnaService > onDelete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->clear(Z)V

    .line 149
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    const-string v1, "com.sec.android.app.music.dlna.servicedeleted"

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$1;->val$callback:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnDlnaServiceCallback;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnDlnaServiceCallback;->onServiceConnected(Z)V

    return-void
.end method
