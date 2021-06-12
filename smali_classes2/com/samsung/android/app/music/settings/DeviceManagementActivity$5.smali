.class Lcom/samsung/android/app/music/settings/DeviceManagementActivity$5;
.super Lcom/samsung/android/app/music/milk/SimpleSubscriber;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->a(Lcom/samsung/android/app/music/model/milksetting/DeleteDeviceListInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/milk/SimpleSubscriber<",
        "Lcom/samsung/android/app/music/model/ResponseModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$5;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/SimpleSubscriber;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/model/ResponseModel;)V
    .locals 3

    const-string v0, "DeviceManagementActivity"

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteDownloadableDevices onNext : resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/ResponseModel;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/ResponseModel;->getResultCode()I

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$5;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->c(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;)V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$5;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$5;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    const v2, 0x7f0b032c

    .line 277
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 276
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/MilkToast;->a(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 280
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/ResponseModel;->getResultCode()I

    move-result p1

    const/16 v0, 0x22c4

    if-ne p1, v0, :cond_1

    .line 281
    iget-object p1, p0, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$5;->a:Lcom/samsung/android/app/music/settings/DeviceManagementActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity;->d(Lcom/samsung/android/app/music/settings/DeviceManagementActivity;)V

    :cond_1
    return-void
.end method

.method public onComplete()V
    .locals 2

    const-string v0, "DeviceManagementActivity"

    const-string v1, "deleteDownloadableDevices onComplete"

    .line 260
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    const-string p1, "DeviceManagementActivity"

    const-string v0, "deleteDownloadableDevices onError"

    .line 265
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 257
    check-cast p1, Lcom/samsung/android/app/music/model/ResponseModel;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/settings/DeviceManagementActivity$5;->a(Lcom/samsung/android/app/music/model/ResponseModel;)V

    return-void
.end method
