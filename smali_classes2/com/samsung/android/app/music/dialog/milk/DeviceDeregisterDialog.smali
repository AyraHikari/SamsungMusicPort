.class public Lcom/samsung/android/app/music/dialog/milk/DeviceDeregisterDialog;
.super Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 12
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/milk/DeviceDeregisterDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0b0330

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0b0331

    .line 13
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$PositiveButtonClickAdapter;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$PositiveButtonClickAdapter;-><init>(Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;)V

    const v1, 0x7f0b032b

    .line 14
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0b00cd

    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
