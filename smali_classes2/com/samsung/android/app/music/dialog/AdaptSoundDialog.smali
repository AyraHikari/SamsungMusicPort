.class public Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "AdaptSoundDialog"


# instance fields
.field private b:Landroid/support/v7/app/AlertDialog;

.field private c:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0b03a4

    .line 126
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->b()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 91
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->setAdaptSound(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    .line 97
    :catch_0
    sget-object v2, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->a:Ljava/lang/String;

    const-string v3, "setAdaptSound(false) - IllegalArgumentException!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 100
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->getTargetFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v2, :cond_0

    const/4 v0, -0x1

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v3, v1, v0, v2}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->b:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    if-eqz p1, :cond_1

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "ADSD"

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private a()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->c:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->isHeadsetOrBT()Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 4

    .line 132
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.hearingadjust.launch"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->b:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 134
    :try_start_1
    sget-object v1, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found hearingadjust application :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 137
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->b:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    throw v0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;)Z
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->a()Z

    move-result p0

    return p0
.end method

.method private c()V
    .locals 3

    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.app.popupuireceiver"

    const-string v2, "com.sec.android.app.popupuireceiver.DisableApp"

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "app_package_name"

    const-string v2, "com.sec.hearingadjust"

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->getTargetRequestCode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 40
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->c:Lcom/samsung/android/app/musiclibrary/core/library/audio/SecAudioManager;

    .line 43
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 44
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->isAdaptSoundOn(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    .line 46
    invoke-virtual {p0, v3, v3}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->setStyle(II)V

    .line 48
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance p1, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog$1;-><init>(Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;)V

    const v4, 0x7f0b0075

    invoke-virtual {v3, v4, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f0b00cd

    const/4 v4, 0x0

    .line 58
    invoke-virtual {v3, p1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 59
    invoke-virtual {v3, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    xor-int/lit8 p1, v2, 0x1

    .line 60
    new-instance v1, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog$2;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog$2;-><init>(Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;Landroid/content/Context;)V

    const v0, 0x7f0c000c

    invoke-virtual {v3, v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 83
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->b:Landroid/support/v7/app/AlertDialog;

    .line 85
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->b:Landroid/support/v7/app/AlertDialog;

    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->b:Landroid/support/v7/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/audio/AdaptSound;->isAlreadyDiagnosed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/AdaptSoundDialog;->b:Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 118
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    return-void
.end method
