.class final Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$onDismissListener$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$onDismissListener$2;->invoke()Landroid/widget/PopupWindow$OnDismissListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$onDismissListener$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$onDismissListener$2;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$onDismissListener$2$1;->a:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$onDismissListener$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$onDismissListener$2$1;->a:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$onDismissListener$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$onDismissListener$2;->this$0:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->i(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "MPVL"

    const-string v2, "Media"

    .line 60
    iget-object v3, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$onDismissListener$2$1;->a:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$onDismissListener$2;

    iget-object v3, v3, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$onDismissListener$2;->this$0:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    invoke-static {v3}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->e(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$onDismissListener$2$1;->a:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$onDismissListener$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$onDismissListener$2;->this$0:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    const-string v1, "1000"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->a(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$onDismissListener$2$1;->a:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$onDismissListener$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl$onDismissListener$2;->this$0:Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;->d(Lcom/samsung/android/app/music/player/volume/NormalVolumeControlImpl;)Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;->a(Z)V

    :cond_0
    return-void
.end method
