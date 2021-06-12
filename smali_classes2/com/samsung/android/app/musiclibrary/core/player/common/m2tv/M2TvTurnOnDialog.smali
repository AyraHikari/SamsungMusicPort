.class public Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvTurnOnDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "M2TvTurnOnDialog"


# instance fields
.field private mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static dismissDialog(Landroid/support/v4/app/FragmentManager;)V
    .locals 1

    .line 33
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvTurnOnDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvTurnOnDialog;

    if-eqz p0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvTurnOnDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public static showDialog(Landroid/support/v4/app/FragmentManager;)V
    .locals 2

    .line 26
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvTurnOnDialog;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvTurnOnDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvTurnOnDialog;-><init>()V

    .line 28
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvTurnOnDialog;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvTurnOnDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvTurnOnDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 42
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "layout_inflater"

    .line 45
    invoke-virtual {p1, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 46
    sget v1, Lcom/samsung/android/app/musiclibrary/R$layout;->music_core_dialog_turn_on_tv_common:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 47
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->turn_on_tv_img:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 48
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvTurnOnDialog;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 50
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 51
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->music_core_smart_view:I

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 52
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->ok:I

    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvTurnOnDialog$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvTurnOnDialog$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvTurnOnDialog;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 58
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvTurnOnDialog;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvTurnOnDialog;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 74
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->isConnectingWfd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvTurnOnDialog;->dismiss()V

    .line 77
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 63
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvTurnOnDialog;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/m2tv/M2TvTurnOnDialog;->mAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    return-void
.end method
