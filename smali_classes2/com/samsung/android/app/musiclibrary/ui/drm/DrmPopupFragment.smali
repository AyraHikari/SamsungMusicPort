.class public Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/DialogInterface$OnClickListener;

.field private final b:Landroid/content/DialogInterface$OnClickListener;

.field private final c:Landroid/content/DialogInterface$OnClickListener;

.field private final d:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 173
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->b:Landroid/content/DialogInterface$OnClickListener;

    .line 229
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->c:Landroid/content/DialogInterface$OnClickListener;

    .line 252
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->d:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private a()Landroid/support/v7/app/AlertDialog;
    .locals 7

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "path"

    .line 75
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    .line 77
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const v3, 0x1040009

    const v4, 0x1040013

    const v5, 0x1080027

    packed-switch v2, :pswitch_data_0

    .line 115
    :pswitch_0
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-virtual {v2, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "text1"

    .line 117
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 118
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 95
    :pswitch_1
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 96
    invoke-virtual {v2, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const-string v2, "text1"

    .line 97
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->b:Landroid/content/DialogInterface$OnClickListener;

    .line 98
    invoke-virtual {v0, v4, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 99
    invoke-virtual {v0, v3, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 87
    :pswitch_2
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {v2, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "text1"

    .line 89
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v5}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".\n"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "text2"

    .line 90
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->c:Landroid/content/DialogInterface$OnClickListener;

    .line 91
    invoke-virtual {v0, v4, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 92
    invoke-virtual {v0, v3, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 79
    :pswitch_3
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {v2, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setIcon(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const-string v5, "text1"

    .line 81
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "count"

    .line 82
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 81
    invoke-direct {p0, v5, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {v2, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->a:Landroid/content/DialogInterface$OnClickListener;

    .line 83
    invoke-virtual {v0, v4, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->d:Landroid/content/DialogInterface$OnClickListener;

    .line 84
    invoke-virtual {v0, v3, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/os/Bundle;Landroid/content/DialogInterface$OnClickListener;)Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;
    .locals 1

    .line 51
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;-><init>()V

    .line 52
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->a(Landroid/content/DialogInterface$OnClickListener;)V

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 126
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->a(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(ILjava/lang/String;I)Ljava/lang/String;
    .locals 5

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto/16 :goto_0

    .line 165
    :pswitch_0
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->playback_failed_msg:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 162
    :pswitch_1
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->drm_sorry_license_expired:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 159
    :pswitch_2
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->drm_no_data_connectivity:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 156
    :pswitch_3
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->drm_acquiring_license:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 153
    :pswitch_4
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->drm_server_problem_msg:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 150
    :pswitch_5
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->drm_unable_access_server_msg:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 147
    :pswitch_6
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->drm_failed_acquire_license:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 142
    :pswitch_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$plurals;->drm_can_use_n_times:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    const/4 p2, 0x1

    .line 144
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, p2

    .line 143
    invoke-virtual {v0, v1, p3, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ". "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/samsung/android/app/musiclibrary/R$string;->drm_play_now_q:I

    .line 144
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 139
    :pswitch_8
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->drm_want_delete_q:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 136
    :pswitch_9
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->drm_no_longer_available:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 133
    :pswitch_a
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->drm_want_unlock_q:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x2f

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 68
    :cond_0
    sget p1, Lcom/samsung/android/app/musiclibrary/R$string;->unknown:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private a(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->a:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;Ljava/lang/String;)J
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->c(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->drm_failed_acquire_license:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 186
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 190
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 191
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 192
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_1

    const/high16 v2, 0x10000

    .line 195
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 199
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "DrmPopupFragment"

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DrmPopupFragment() - could not find a suitable activity for launching license url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Ljava/lang/String;)J
    .locals 9

    const/4 v0, 0x0

    .line 211
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    const-string v3, "_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "_data=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v5, v7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/util/ContentResolverWrapper;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_1

    .line 214
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_0

    .line 219
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v0

    :catchall_0
    move-exception v0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v8

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/drm/DrmPopupFragment;->a()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
