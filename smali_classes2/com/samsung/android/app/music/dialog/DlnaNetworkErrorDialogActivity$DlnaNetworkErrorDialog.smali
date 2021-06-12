.class public Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DlnaNetworkErrorDialog"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;
    .locals 2

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "name"

    .line 58
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance p0, Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;

    invoke-direct {p0}, Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;-><init>()V

    .line 60
    invoke-virtual {p0, v0}, Landroid/support/v4/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 70
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const p1, 0x7f0b02f5

    .line 80
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0b012c

    .line 81
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0b0102

    const/4 v2, 0x1

    .line 83
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0b02a7

    .line 84
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_0
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 90
    invoke-virtual {v2, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f0b02d3

    .line 91
    new-instance v0, Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog$1;-><init>(Lcom/samsung/android/app/music/dialog/DlnaNetworkErrorDialogActivity$DlnaNetworkErrorDialog;)V

    invoke-virtual {v2, p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 102
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 103
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method
