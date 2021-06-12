.class public Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Landroid/support/v4/app/DialogFragment;
    .locals 3

    .line 47
    new-instance v0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;-><init>()V

    .line 48
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "path"

    .line 50
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;)Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    return-object p0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a()V

    .line 133
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    const-string p1, "PrivateMode"

    const-string v0, "PrivateFileRenameDialog, onCreate()"

    .line 57
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "path"

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 64
    invoke-static {v0}, Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;->a:Lcom/samsung/android/app/music/privatemode/operation/PrivateModeFileOperation;

    .line 66
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f040064

    const/4 v4, 0x0

    .line 68
    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v3, 0x7f0b0145

    .line 69
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 70
    invoke-static {p1}, Lcom/samsung/android/app/music/util/UiUtils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 72
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    const v3, 0x7f130170

    .line 74
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 75
    new-instance v4, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog$1;-><init>(Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f0b008f

    .line 81
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(I)V

    const v4, 0x7f130207

    .line 83
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f0b0084

    .line 84
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f0b00cd

    .line 86
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog$2;-><init>(Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;)V

    invoke-virtual {v2, p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f0b0326

    .line 95
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog$3;

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog$3;-><init>(Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    const p1, 0x7f0b0324

    .line 104
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog$4;

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog$4;-><init>(Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 114
    new-instance p1, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog$5;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog$5;-><init>(Lcom/samsung/android/app/music/privatemode/dialog/PrivateFileRenameDialog;)V

    invoke-virtual {v2, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
