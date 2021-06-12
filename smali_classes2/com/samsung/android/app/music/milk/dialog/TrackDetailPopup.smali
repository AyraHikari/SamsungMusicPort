.class public Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;
.super Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public static a(Landroid/support/v4/app/FragmentManager;Lcom/samsung/android/app/music/model/SimpleTrack;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-static {p0, p1, v0, v0}, Lcom/samsung/android/app/music/milk/dialog/TrackDetailPopup;->a(Landroid/support/v4/app/FragmentManager;Lcom/samsung/android/app/music/model/SimpleTrack;Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;Lcom/samsung/android/app/music/model/SimpleTrack;Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "TrackDetailPopup"

    const-string p1, "show : fragment manager is null!!"

    .line 40
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p3, "TrackDetailPopup"

    .line 43
    invoke-virtual {p0, p3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p3

    if-nez p3, :cond_3

    const-string p3, "TrackDetailPopup"

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show : track - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Lcom/samsung/android/app/music/model/SimpleTrack;)Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "TrackDetailPopup"

    const-string p1, "show : popup is null!!"

    .line 47
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 52
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->a(Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;)V

    :cond_2
    :try_start_0
    const-string p2, "TrackDetailPopup"

    .line 56
    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackDetailPopup;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :cond_3
    const-string p0, "TrackDetailPopup"

    const-string p1, "show : popup is already showing !!"

    .line 63
    invoke-static {p0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
