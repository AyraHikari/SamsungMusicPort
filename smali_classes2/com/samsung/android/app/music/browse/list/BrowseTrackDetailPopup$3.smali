.class Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/TrackDetailMenuExecutor$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Landroid/app/Dialog;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$3;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$3;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$3;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->isDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup$3;->a:Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;Z)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "BrowseTrackDetailPopup"

    const-string v0, "favoriteResult. fragment is detached"

    .line 218
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
