.class public final Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$onTvStateChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/library/wifi/M2TvConnectionManager$OnTvStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

.field final synthetic b:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;",
            ")V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$onTvStateChangeListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$onTvStateChangeListener$1;->b:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceAvailable(Z)V
    .locals 3

    const-string v0, "SMUSIC-UiPlayer"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "M2TvConnectionController onDeviceAvailable() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$onTvStateChangeListener$1;->b:Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/ActionBarMenuController;->a()V

    if-eqz p1, :cond_0

    .line 94
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$onTvStateChangeListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->d(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "MDTV"

    const-string v1, "Displayed"

    .line 93
    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onTvListDialogShow(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/library/beaconmanager/Tv;",
            ">;)V"
        }
    .end annotation

    const-string v0, "tvList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SMUSIC-UiPlayer"

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "M2TvConnectionController onTvListDialogShow() size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$onTvStateChangeListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->e(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvConnectionDialog;->showDialog(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;)V

    return-void
.end method

.method public onTvTurnOnDialogDismiss()V
    .locals 2

    const-string v0, "SMUSIC-UiPlayer"

    const-string v1, "M2TvConnectionController onTvTurnOnDialogDismiss()"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$onTvStateChangeListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->e(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvTurnOnDialog;->dismissDialog(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method

.method public onTvTurnOnDialogShow()V
    .locals 2

    const-string v0, "SMUSIC-UiPlayer"

    const-string v1, "M2TvConnectionController onTvTurnOnDialogShow()"

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController$onTvStateChangeListener$1;->a:Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;->e(Lcom/samsung/android/app/music/player/fullplayer/M2TvConnectionController;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvTurnOnDialog;->showDialog(Landroid/support/v4/app/FragmentManager;)V

    return-void
.end method
