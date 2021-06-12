.class Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayer$OnSoundPlayerViewChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundPlayerChangedListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

.field private b:Landroid/widget/Toast;

.field private c:Landroid/app/ProgressDialog;

.field private final d:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)V
    .locals 0

    .line 939
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1024
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->d:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$1;)V
    .locals 0

    .line 939
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;)Landroid/widget/Toast;
    .locals 0

    .line 939
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->b:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .line 939
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->b:Landroid/widget/Toast;

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 1003
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->c:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 1008
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->c:Landroid/app/ProgressDialog;

    .line 1009
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->c:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->drm_acquiring_license:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1010
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->c:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1012
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->c:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1014
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private b()V
    .locals 1

    .line 1018
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1019
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 1020
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->c:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    const-string v0, "UiPlayer"

    .line 969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " : onError() - type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 992
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->playback_failed_msg:I

    goto :goto_0

    .line 989
    :pswitch_0
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->sdcard_removed_msg:I

    goto :goto_0

    .line 986
    :pswitch_1
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->network_error_occurred_msg:I

    goto :goto_0

    .line 983
    :pswitch_2
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->unable_to_play_during_call:I

    goto :goto_0

    .line 980
    :pswitch_3
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->playback_failed_msg:I

    :goto_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 997
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->d:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 999
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->finish()V

    return-void

    :cond_2
    :goto_1
    const-string p1, "UiPlayer"

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : onError() - The activity is finishing or destroyed already."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 957
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;)V

    .line 958
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->a(Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;

    move-result-object p1

    .line 964
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->a:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "drm_popup"

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 949
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->a()V

    goto :goto_0

    .line 951
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SoundPlayerActivity$SoundPlayerChangedListener;->b()V

    :goto_0
    return-void
.end method
