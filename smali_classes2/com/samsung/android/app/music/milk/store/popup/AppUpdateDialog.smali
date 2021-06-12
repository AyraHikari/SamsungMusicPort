.class public Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;
.super Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$AppUpdateDialogLauncher;
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/app/FragmentManager;

.field private b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;-><init>()V

    .line 35
    new-instance v0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog$1;-><init>(Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->f:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;

    const-string v0, "utm_source%3Dmilk%26utm_medium%3Ddeeplink%26utm_content%3Dmusichub%253A%252F%252Fmilkmusic.co.kr"

    .line 52
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;)Landroid/support/v4/app/FragmentManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->a:Landroid/support/v4/app/FragmentManager;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->f:Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/util/PackageLauncher;->a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->a()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->a()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->dismiss()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->b:Ljava/lang/String;

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->a:Landroid/support/v4/app/FragmentManager;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 66
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 69
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->TITLE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->d:Ljava/lang/String;

    .line 70
    sget-object v1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->MESSAGE:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$ParameterType;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->e:Ljava/lang/String;

    .line 71
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0b042d

    invoke-virtual {p1, v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0b016f

    new-instance v2, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$NegativeButtonClickAdapter;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$NegativeButtonClickAdapter;-><init>(Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;)V

    .line 72
    invoke-virtual {p1, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 74
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/popup/AppUpdateDialog;->setCancelable(Z)V

    .line 76
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 77
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 85
    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 86
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method
