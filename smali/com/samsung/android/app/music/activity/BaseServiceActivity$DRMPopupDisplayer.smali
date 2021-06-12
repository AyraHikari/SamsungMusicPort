.class final Lcom/samsung/android/app/music/activity/BaseServiceActivity$DRMPopupDisplayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DRMPopupDisplayer"
.end annotation


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private final b:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$DRMPopupDisplayer;->b:Landroid/support/v4/app/FragmentActivity;

    return-void
.end method

.method private final a()V
    .locals 4

    .line 627
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$DRMPopupDisplayer;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "drm_popup"

    .line 628
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 629
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v3, "path"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 630
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->getCurrentPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_1

    .line 631
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 633
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 3

    .line 639
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity$DRMPopupDisplayer;->b()V

    const-string v0, "Ui"

    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showProgressDialog() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$DRMPopupDisplayer;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$DRMPopupDisplayer;->b:Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 648
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$DRMPopupDisplayer;->b:Landroid/support/v4/app/FragmentActivity;

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 649
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 650
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 651
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 652
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 648
    iput-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$DRMPopupDisplayer;->a:Landroid/app/ProgressDialog;

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private final b()V
    .locals 3

    const-string v0, "Ui"

    const-string v1, "hideProgressDialog()"

    .line 657
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$DRMPopupDisplayer;->a:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 659
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 658
    :cond_0
    check-cast v1, Ljava/lang/Void;

    :cond_1
    check-cast v1, Landroid/app/ProgressDialog;

    iput-object v1, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$DRMPopupDisplayer;->a:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.music.core.state.DRM_REQUEST"

    .line 602
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 603
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$DRMPopupDisplayer;->b:Landroid/support/v4/app/FragmentActivity;

    if-eqz p1, :cond_5

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->isResumedState()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 609
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity$DRMPopupDisplayer;->a()V

    const-string p1, "command"

    .line 611
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x71901f27

    if-eq v0, v1, :cond_3

    const v1, 0x345d5fba

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "successRights"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 613
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity$DRMPopupDisplayer;->b()V

    goto :goto_1

    :cond_3
    const-string v0, "startRights"

    .line 611
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 612
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$DRMPopupDisplayer;->b:Landroid/support/v4/app/FragmentActivity;

    const p2, 0x7f0b0114

    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "activity.getString(R.string.drm_acquiring_license)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity$DRMPopupDisplayer;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 617
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity$DRMPopupDisplayer;->b()V

    .line 619
    sget-object p1, Lcom/samsung/android/app/music/activity/BaseServiceActivity$DRMPopupDisplayer$onExtrasChanged$dialog$1;->a:Lcom/samsung/android/app/music/activity/BaseServiceActivity$DRMPopupDisplayer$onExtrasChanged$dialog$1;

    check-cast p1, Landroid/content/DialogInterface$OnClickListener;

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->a(Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;

    move-result-object p1

    .line 620
    iget-object p2, p0, Lcom/samsung/android/app/music/activity/BaseServiceActivity$DRMPopupDisplayer;->b:Landroid/support/v4/app/FragmentActivity;

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p2

    const-string v0, "drm_popup"

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1

    .line 603
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.BaseActivity"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_1
    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 1

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity$DRMPopupDisplayer;->a()V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 1

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method
