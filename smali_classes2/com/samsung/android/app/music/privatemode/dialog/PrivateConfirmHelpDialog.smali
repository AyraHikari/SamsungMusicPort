.class public Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "PrivateConfirmHelpDialog"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a([JZZ)Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;
    .locals 3

    .line 49
    new-instance v0, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;-><init>()V

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "list_items"

    .line 51
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string p0, "is_folder"

    .line 52
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "move_to_private"

    .line 53
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 123
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "music_player_pref"

    const/4 v2, 0x0

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string p1, "confirm_popup_move_to_private"

    goto :goto_0

    :cond_0
    const-string p1, "confirm_popup_remove_from_private"

    :goto_0
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 128
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;->setStyle(II)V

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "move_to_private"

    .line 62
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 65
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "layout_inflater"

    .line 67
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 68
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x7f040064

    invoke-virtual {v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 69
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f130207

    .line 71
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const v3, 0x7f0b027a

    goto :goto_0

    :cond_0
    const v3, 0x7f0b027b

    .line 72
    :goto_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f130170

    .line 75
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/16 v2, 0x8

    .line 85
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    if-eqz p1, :cond_1

    const v2, 0x7f0b01a7

    goto :goto_1

    :cond_1
    const v2, 0x7f0b01ac

    .line 88
    :goto_1
    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b02d3

    new-instance v4, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog$3;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog$3;-><init>(Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;Z)V

    .line 90
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b00cd

    new-instance v4, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog$2;

    invoke-direct {v4, p0, v0, p1}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog$2;-><init>(Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;Landroid/widget/CheckBox;Z)V

    .line 103
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onStop()V
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/app/music/privatemode/dialog/PrivateConfirmHelpDialog;->dismissAllowingStateLoss()V

    .line 119
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStop()V

    return-void
.end method
