.class public Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    if-nez p1, :cond_0

    .line 30
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "801"

    .line 31
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    .line 34
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040062

    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f130070

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0262

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f13020f

    .line 38
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0b0267

    .line 39
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 40
    new-instance v2, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v2}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 42
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 44
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b0263

    new-instance v3, Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog$2;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog$2;-><init>(Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog;Landroid/app/Activity;)V

    .line 45
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0b00cd

    new-instance v3, Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog$1;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog$1;-><init>(Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog;Landroid/app/Activity;)V

    .line 55
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 68
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/dialog/MobileDataUsageNoticeDialog;->setCancelable(Z)V

    return-object p1
.end method
