.class public Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "UpdateApplicationDialog"


# instance fields
.field private final b:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 44
    new-instance v0, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog$1;-><init>(Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a()V
    .locals 3

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "force_update"

    const/4 v2, 0x0

    .line 166
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->b()V

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->c()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 190
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    .line 192
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string p1, "&referrer="

    .line 196
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_0
    sget-object p1, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->a:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchGooglePlay url: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p2, 0x14000000

    .line 201
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 203
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private b()V
    .locals 1

    .line 175
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->exit()V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->a()V

    return-void
.end method

.method private c()V
    .locals 3

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 181
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWiFiP2PEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f0b02bd

    const/4 v2, 0x0

    .line 185
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 183
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a()Lcom/samsung/android/app/music/update/SamsungAppsManager;

    move-result-object v1

    const-string v2, "com.sec.android.app.music"

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/music/update/SamsungAppsManager;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->a()V

    .line 161
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    .line 74
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "force_update"

    const/4 v1, 0x0

    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "show_check_box"

    .line 76
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "updatable_google_play"

    .line 77
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 79
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/music/util/AppNameUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 81
    new-array v6, v5, [Ljava/lang/Object;

    aput-object v4, v6, v1

    const v7, 0x7f0b042e

    invoke-virtual {p0, v7, v6}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_0

    const v6, 0x7f0b00ee

    .line 85
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-virtual {p0, v6, v5}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const v4, 0x7f0b02ca

    .line 87
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 89
    :goto_0
    sget-object v5, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreateDialog updatableGooglePlay: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const v7, 0x7f040061

    const/4 v8, 0x0

    .line 94
    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 95
    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f130207

    .line 96
    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 97
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    const p1, 0x7f130208

    .line 101
    invoke-virtual {v6, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 102
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const p1, 0x7f13020a

    .line 103
    invoke-virtual {v6, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v4, 0x7f13020b

    .line 104
    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 105
    iget-object v7, p0, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v7, "com.sec.android.app.samsungapps"

    .line 108
    invoke-static {v5, v7}, Lcom/samsung/android/app/music/update/AppMarketUpdateUtils;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 107
    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "com.sec.android.app.samsungapps"

    .line 110
    invoke-static {v5, p1}, Lcom/samsung/android/app/music/update/AppMarketUpdateUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f13020d

    .line 113
    invoke-virtual {v6, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const v4, 0x7f13020e

    .line 114
    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 115
    iget-object v7, p0, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v7, "com.android.vending"

    .line 118
    invoke-static {v5, v7}, Lcom/samsung/android/app/music/update/AppMarketUpdateUtils;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 117
    invoke-virtual {p1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "com.android.vending"

    .line 120
    invoke-static {v5, p1}, Lcom/samsung/android/app/music/update/AppMarketUpdateUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v2, :cond_2

    const p1, 0x7f130170

    .line 125
    invoke-virtual {v6, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 126
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 127
    new-instance v1, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog$2;-><init>(Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_2
    const p1, 0x7f0b016f

    .line 139
    new-instance v1, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog$3;-><init>(Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;)V

    invoke-virtual {v3, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-nez v0, :cond_3

    const p1, 0x7f0b042d

    .line 147
    new-instance v0, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog$4;-><init>(Lcom/samsung/android/app/music/dialog/UpdateApplicationDialog;)V

    invoke-virtual {v3, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    :cond_3
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
