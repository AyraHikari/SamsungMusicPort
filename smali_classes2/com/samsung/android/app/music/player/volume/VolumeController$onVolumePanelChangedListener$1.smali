.class public final Lcom/samsung/android/app/music/player/volume/VolumeController$onVolumePanelChangedListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/volume/IVolumeControl$OnVolumePanelChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/volume/VolumeController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/volume/VolumeController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/volume/VolumeController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController$onVolumePanelChangedListener$1;->a:Lcom/samsung/android/app/music/player/volume/VolumeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/player/volume/VolumeController$onVolumePanelChangedListener$1;->a:Lcom/samsung/android/app/music/player/volume/VolumeController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/volume/VolumeController;->b()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 65
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController$onVolumePanelChangedListener$1;->a:Lcom/samsung/android/app/music/player/volume/VolumeController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/volume/VolumeController;->c(Lcom/samsung/android/app/music/player/volume/VolumeController;)V

    .line 66
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController$onVolumePanelChangedListener$1;->a:Lcom/samsung/android/app/music/player/volume/VolumeController;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/volume/VolumeController;->b()V

    .line 67
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController$onVolumePanelChangedListener$1;->a:Lcom/samsung/android/app/music/player/volume/VolumeController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/volume/VolumeController;->d(Lcom/samsung/android/app/music/player/volume/VolumeController;)V

    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController$onVolumePanelChangedListener$1;->a:Lcom/samsung/android/app/music/player/volume/VolumeController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/volume/VolumeController;->c(Lcom/samsung/android/app/music/player/volume/VolumeController;)V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController$onVolumePanelChangedListener$1;->a:Lcom/samsung/android/app/music/player/volume/VolumeController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/volume/VolumeController;->c(Lcom/samsung/android/app/music/player/volume/VolumeController;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController$onVolumePanelChangedListener$1;->a:Lcom/samsung/android/app/music/player/volume/VolumeController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/volume/VolumeController;->d(Lcom/samsung/android/app/music/player/volume/VolumeController;)V

    :goto_0
    return-void
.end method
