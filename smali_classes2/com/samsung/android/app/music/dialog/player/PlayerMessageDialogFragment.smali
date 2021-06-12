.class public final Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)Landroid/app/Dialog;
    .locals 2

    .line 47
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 48
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 49
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 50
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->getPositiveText()Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    new-instance v1, Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment$1;-><init>(Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 60
    :cond_0
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->getNegativeText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 62
    new-instance v1, Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment$2;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment$2;-><init>(Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)V

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 70
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public static a(Landroid/os/Bundle;I)Landroid/support/v4/app/DialogFragment;
    .locals 1

    const-string v0, "args_cp_attrs"

    .line 25
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 26
    new-instance p1, Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment;-><init>()V

    .line 27
    invoke-virtual {p1, p0}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "PlayerDialog"

    const-string v0, "PlayerMessageDialogFragment: onCancel"

    .line 42
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;->cancel()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 33
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "args_cp_attrs"

    .line 36
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1, p1, v0}, Lcom/samsung/android/app/music/service/metadata/uri/PlayerMessageFactory;->a(ILandroid/app/Activity;Landroid/os/Bundle;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment;->a:Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/dialog/player/PlayerMessageDialogFragment;->a(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/core/service/metadata/uri/IPlayerMessage;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method
