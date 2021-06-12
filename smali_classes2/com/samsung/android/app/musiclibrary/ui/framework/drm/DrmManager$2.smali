.class Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)V
    .locals 0

    .line 1349
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Landroid/drm/DrmManagerClient;Landroid/drm/DrmEvent;)V
    .locals 3

    const-string p1, "MusicDrm"

    const-string v0, "DrmManagerClient onEvent"

    .line 1352
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "drm_info_status_object"

    .line 1359
    invoke-virtual {p2, p1}, Landroid/drm/DrmEvent;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1360
    instance-of v0, p1, Landroid/drm/DrmInfoStatus;

    if-eqz v0, :cond_0

    const-string v0, "MusicDrm"

    .line 1361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DrmInfoStatus status code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Landroid/drm/DrmInfoStatus;

    iget v2, p1, Landroid/drm/DrmInfoStatus;->statusCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MusicDrm"

    .line 1363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DrmInfoStatus info type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/drm/DrmInfoStatus;->infoType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "MusicDrm"

    .line 1364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DrmInfoStatus getSubscriptionId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/drm/DrmInfoStatus;->data:Landroid/drm/ProcessedData;

    .line 1365
    invoke-virtual {p1}, Landroid/drm/ProcessedData;->getSubscriptionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1364
    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "MusicDrm"

    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/drm/DrmEvent;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    invoke-virtual {p2}, Landroid/drm/DrmEvent;->getType()I

    move-result p1

    const/16 p2, 0x3ea

    if-ne p1, p2, :cond_2

    .line 1389
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->b(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Landroid/drm/DrmManagerClient;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Ljava/lang/String;)I

    move-result p1

    .line 1391
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1392
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->c(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1393
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->c(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;->onAcquireStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 1397
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->c(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1398
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->c(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$2;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;->onAcquireStatus(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method
