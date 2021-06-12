.class public Lcom/samsung/android/app/music/dialog/NotiDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(II)Lcom/samsung/android/app/music/dialog/NotiDialog;
    .locals 2

    .line 18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "noti_title"

    .line 19
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "noti_message"

    .line 20
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 22
    new-instance p0, Lcom/samsung/android/app/music/dialog/NotiDialog;

    invoke-direct {p0}, Lcom/samsung/android/app/music/dialog/NotiDialog;-><init>()V

    .line 23
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/dialog/NotiDialog;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 29
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/NotiDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 30
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/NotiDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "noti_title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "noti_message"

    .line 32
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/dialog/NotiDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/dialog/NotiDialog$1;-><init>(Lcom/samsung/android/app/music/dialog/NotiDialog;)V

    const v1, 0x7f0b02d3

    .line 33
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
