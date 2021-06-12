.class Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnErrorListener;


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

    .line 1407
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V
    .locals 2

    const-string p1, "MusicDrm"

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrmManagerClient onError event.getType(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/drm/DrmErrorEvent;->getType()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->d(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1414
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;)V

    .line 1419
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3$1;->start()V

    goto :goto_0

    .line 1421
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->c(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1422
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->c(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$3;->a:Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;->a(Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/framework/drm/DrmManager$OnPlayReadyListener;->onAcquireStatus(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method
