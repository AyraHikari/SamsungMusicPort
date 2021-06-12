.class public final Lcom/samsung/android/app/music/player/volume/VolumeController$onWindowFocusChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;


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

    .line 87
    iput-object p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController$onWindowFocusChangeListener$1;->a:Lcom/samsung/android/app/music/player/volume/VolumeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowFocusChanged(Z)V
    .locals 3

    const-string v0, "UiPlayer"

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " onWindowFocusChanged() - hasFocus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController$onWindowFocusChangeListener$1;->a:Lcom/samsung/android/app/music/player/volume/VolumeController;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/volume/VolumeController;->c()V

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/volume/VolumeController$onWindowFocusChangeListener$1;->a:Lcom/samsung/android/app/music/player/volume/VolumeController;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/volume/VolumeController;->b()V

    return-void
.end method
