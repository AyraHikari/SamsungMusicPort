.class public Lcom/samsung/android/app/music/dialog/BanCountExceedDialog;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseDialogFragment;-><init>()V

    return-void
.end method

.method public static a()Lcom/samsung/android/app/music/dialog/BanCountExceedDialog;
    .locals 1

    .line 20
    new-instance v0, Lcom/samsung/android/app/music/dialog/BanCountExceedDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/dialog/BanCountExceedDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/BanCountExceedDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    const-string v0, "com.samsung.radio.KEY_STORE_DATA_CONFIGS_BAN_MAX_COUNT"

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Lcom/samsung/android/app/music/preferences/Pref;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/dialog/BanCountExceedDialog;->setCancelable(Z)V

    .line 29
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/BanCountExceedDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b00ab

    .line 30
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 31
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/BanCountExceedDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const v0, 0x7f0d0007

    .line 32
    invoke-virtual {v2, v0, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-virtual {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/dialog/BanCountExceedDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/dialog/BanCountExceedDialog$2;-><init>(Lcom/samsung/android/app/music/dialog/BanCountExceedDialog;)V

    const v1, 0x7f0b00cd

    .line 34
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/dialog/BanCountExceedDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/dialog/BanCountExceedDialog$1;-><init>(Lcom/samsung/android/app/music/dialog/BanCountExceedDialog;)V

    const v1, 0x7f0b00ac

    .line 39
    invoke-virtual {p1, v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
