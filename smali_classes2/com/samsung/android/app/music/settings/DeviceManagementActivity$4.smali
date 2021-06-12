.class Lcom/samsung/android/app/music/settings/DeviceManagementActivity$4;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$4;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;)V
    .locals 3

    const-string v0, "DeviceManagementActivity"

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDownloadbleDevices onNext : resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;->getResultCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$4;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;->getDeviceList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->a(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$4;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;->getRemainCount()I

    move-result p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->a(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;I)I

    .line 246
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$4;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->b(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;)V

    :cond_0
    return-void
.end method

.method public onComplete()V
    .locals 2

    const-string v0, "DeviceManagementActivity"

    const-string v1, "getDownloadbleDevices onComplete"

    .line 229
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string p1, "DeviceManagementActivity"

    const-string v0, "getDownloadbleDevices onError"

    .line 234
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 226
    check-cast p1, Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$4;->a(Lcom/samsung/android/app/music/model/milksetting/DownloadDeviceListInfo;)V

    return-void
.end method
