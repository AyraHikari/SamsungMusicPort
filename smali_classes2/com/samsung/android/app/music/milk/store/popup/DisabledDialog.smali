.class public Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;
.super Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;
.source "SourceFile"


# instance fields
.field private c:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/samsung/android/app/music/activity/PackageEnableChecker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->c:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->e:Ljava/lang/String;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->f:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->c:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->e:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->f:Ljava/lang/String;

    .line 49
    iput-object p4, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;)Lcom/samsung/android/app/music/activity/PackageEnableChecker;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->h:Lcom/samsung/android/app/music/activity/PackageEnableChecker;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->c:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/activity/PackageEnableChecker;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->h:Lcom/samsung/android/app/music/activity/PackageEnableChecker;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->dismissAllowingStateLoss()V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StringFormatMatches"
        }
    .end annotation

    .line 68
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/MilkYesNoDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 70
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->setCancelable(Z)V

    const/4 v1, 0x0

    .line 71
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 73
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->e:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/update/AppMarketUpdateUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 75
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->f:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->f()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->f()Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0b0469

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->g:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->g()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->g()Landroid/widget/TextView;

    move-result-object v3

    const v4, 0x7f0b01bd

    .line 86
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v1

    aput-object v2, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->j()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0b01f4

    .line 91
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 92
    new-instance v1, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$1;-><init>(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->h()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0b01be

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 101
    new-instance v1, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog$2;-><init>(Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
