.class public Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog$OnConnectListener;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "MobileDataConfirmDialog"

.field private static b:Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog$OnConnectListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a()Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;
    .locals 1

    .line 28
    new-instance v0, Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;-><init>()V

    return-object v0
.end method

.method static synthetic b()Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog$OnConnectListener;
    .locals 1

    .line 17
    sget-object v0, Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;->b:Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog$OnConnectListener;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog$OnConnectListener;)V
    .locals 0

    .line 33
    sput-object p1, Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;->b:Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog$OnConnectListener;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 40
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f040062

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v1, 0x7f130070

    .line 42
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f13020f

    .line 43
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 46
    sget-boolean v3, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v3, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0266

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b0262

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 52
    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f0b0264

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0b0263

    new-instance v2, Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog$2;-><init>(Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;)V

    invoke-virtual {p1, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0b01f4

    new-instance v2, Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog$1;-><init>(Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;)V

    .line 62
    invoke-virtual {p1, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 69
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 71
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/dialog/MobileDataConfirmDialog;->setCancelable(Z)V

    return-object p1
.end method
