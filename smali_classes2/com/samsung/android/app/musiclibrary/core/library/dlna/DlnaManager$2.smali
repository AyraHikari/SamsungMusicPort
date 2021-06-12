.class Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$2;
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

    .line 348
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAdded(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V
    .locals 2

    const-string p1, "SV-Dlna"

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDMSFinderListener > onDeviceAdded deviceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {p3}, Lcom/samsung/android/allshare/ERROR;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object p1

    .line 374
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V

    .line 375
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    const-string v0, "com.sec.android.app.music.dlna.connectivitychanged"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Ljava/lang/String;ILjava/lang/String;)V

    .line 377
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {p2, p3, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/allshare/ERROR;Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceRemoved(Lcom/samsung/android/allshare/Device$DeviceType;Lcom/samsung/android/allshare/Device;Lcom/samsung/android/allshare/ERROR;)V
    .locals 5

    const-string p1, "SV-Dlna"

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDMSFinderListener > onDeviceRemoved deviceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {p3}, Lcom/samsung/android/allshare/ERROR;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object p1

    .line 356
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$800(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 357
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$700(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "provider_id = ?"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {p2, v0, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 359
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$800(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 360
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$900(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "provider_id = ?"

    new-array v3, v2, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {p2, v0, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 362
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$300(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;)V

    .line 363
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    const-string v0, "com.sec.android.app.music.dlna.connectivitychanged"

    invoke-static {p2, v0, v2, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1000(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Ljava/lang/String;ILjava/lang/String;)V

    .line 365
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-static {p2, p3, p1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->access$1100(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;Lcom/samsung/android/allshare/ERROR;Ljava/lang/String;)V

    return-void
.end method
