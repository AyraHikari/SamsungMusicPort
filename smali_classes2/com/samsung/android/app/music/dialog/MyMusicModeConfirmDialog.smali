.class public Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "MyMusicModeConfirmDialog"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a()Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog;
    .locals 1

    .line 27
    new-instance v0, Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 35
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040063

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f130070

    .line 37
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f13020f

    .line 38
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0b029d

    .line 41
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0b02a1

    .line 42
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f130170

    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 46
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog$2;

    invoke-direct {v3, p0, v2, p1}, Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog$2;-><init>(Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog;Landroid/widget/CheckBox;Landroid/app/Activity;)V

    const v4, 0x7f0b041d

    invoke-virtual {v1, v4, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog$1;

    invoke-direct {v3, p0, v2, p1}, Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog$1;-><init>(Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog;Landroid/widget/CheckBox;Landroid/app/Activity;)V

    const p1, 0x7f0b00cd

    .line 57
    invoke-virtual {v1, p1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 70
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 72
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 73
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/dialog/MyMusicModeConfirmDialog;->setCancelable(Z)V

    return-object p1
.end method
