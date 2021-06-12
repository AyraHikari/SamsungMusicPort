.class public Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "MuseLoginCheckDialogFragment"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 19
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b028c

    .line 20
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment$2;-><init>(Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment;)V

    const v1, 0x7f0b00cd

    .line 21
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment$1;-><init>(Lcom/samsung/android/app/music/help/MuseLoginCheckDialogFragment;)V

    const v1, 0x7f0b02d3

    .line 26
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
