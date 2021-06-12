.class public Lcom/samsung/android/app/music/privatemode/dialog/PrivateAbortMoveDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String; = "msg"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;
    .locals 3

    .line 14
    new-instance v0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateAbortMoveDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateAbortMoveDialog;-><init>()V

    .line 15
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 17
    sget-object v2, Lcom/samsung/android/app/music/privatemode/dialog/PrivateAbortMoveDialog;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateAbortMoveDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Landroid/support/v7/app/AlertDialog;
    .locals 2

    .line 24
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateAbortMoveDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 25
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateAbortMoveDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01ac

    .line 26
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 27
    sget-object v1, Lcom/samsung/android/app/music/privatemode/dialog/PrivateAbortMoveDialog;->a:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 28
    new-instance p1, Lcom/samsung/android/app/music/privatemode/dialog/PrivateAbortMoveDialog$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateAbortMoveDialog$1;-><init>(Lcom/samsung/android/app/music/privatemode/dialog/PrivateAbortMoveDialog;)V

    const v1, 0x7f0b02d3

    invoke-virtual {v0, v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 34
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 10
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateAbortMoveDialog;->a(Landroid/os/Bundle;)Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
