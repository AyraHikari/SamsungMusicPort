.class public Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;,
        Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$Builder;,
        Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$NegativeButtonClickAdapter;,
        Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$PositiveButtonClickAdapter;
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

.field private b:Landroid/content/DialogInterface$OnClickListener;

.field private c:Landroid/content/DialogInterface$OnClickListener;

.field private d:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->b:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->a(Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->c:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->b:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method public a(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->c:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public a(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->d:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public b(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->b:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "key_alert_params"

    .line 38
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iput-object p1, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 54
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->a(Landroid/support/v7/app/AlertDialog$Builder;)V

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->r:Z

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->q:Z

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-object v0, v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->n:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->r:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->setCancelable(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 66
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->setCancelable(Z)V

    :goto_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 74
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroy()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 105
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->d:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->d:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_alert_params"

    .line 49
    iget-object v1, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1, p2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 86
    :try_start_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 87
    invoke-virtual {p1, p0, p2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 88
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 89
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-object p1, p1, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->e:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 91
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog;->a:Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;

    iget-object p2, p2, Lcom/samsung/android/app/music/dialog/milk/MilkAlertDialog$MilkAlertParams;->e:Ljava/lang/String;

    .line 92
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
