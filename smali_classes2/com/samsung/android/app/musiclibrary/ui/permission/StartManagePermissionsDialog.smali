.class public Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)Landroid/view/View;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$layout;->list_item_dialog_permission_manage:I

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 123
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 124
    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->permission_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 127
    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->permission_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    .line 134
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-nez v4, :cond_0

    return-object v3

    :cond_0
    const/16 v5, 0x1000

    .line 138
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p1

    .line 139
    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    .line 140
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object p1

    .line 141
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 142
    iget v5, p1, Landroid/content/pm/PermissionGroupInfo;->labelRes:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 143
    iget v6, p1, Landroid/content/pm/PermissionGroupInfo;->icon:I

    if-eqz v6, :cond_1

    .line 146
    iget p1, p1, Landroid/content/pm/PermissionGroupInfo;->icon:I

    .line 147
    invoke-virtual {p2, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 149
    sget v6, Lcom/samsung/android/app/musiclibrary/R$color;->dialog_permission_item_icon_winset:I

    .line 151
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    .line 150
    invoke-static {v4, v6, p2}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p2

    .line 149
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move-object p1, v3

    .line 158
    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :catch_0
    move-exception p1

    .line 154
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v3
.end method

.method public static a([Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;
    .locals 2

    .line 42
    sget v0, Lcom/samsung/android/app/musiclibrary/R$string;->app_name:I

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->a([Ljava/lang/String;IZ)Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;

    move-result-object p0

    return-object p0
.end method

.method public static a([Ljava/lang/String;IZ)Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;
    .locals 3

    .line 52
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;-><init>()V

    .line 53
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "required_permissions"

    .line 54
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string p0, "app_name"

    .line 55
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "args_finish_activity"

    .line 56
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->setArguments(Landroid/os/Bundle;)V

    const/4 p0, 0x0

    .line 58
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->setCancelable(Z)V

    return-object v0
.end method

.method private a()V
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "required_permissions"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 3

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 169
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "SMUSIC-"

    const-string v0, "No app can handle ACTION_APPLICATION_DETAILS_SETTINGS"

    .line 171
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;Landroid/support/v7/app/AlertDialog;)V
    .locals 8

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "required_permissions"

    .line 99
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 101
    sget v2, Lcom/samsung/android/app/musiclibrary/R$id;->dialog_main_text:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "app_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/app/musiclibrary/R$string;->request_permission_dialog_content:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    .line 105
    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 106
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 107
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 108
    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    const/16 v0, 0x21

    .line 107
    invoke-virtual {v4, v6, v5, v3, v0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 110
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->dialog_permission_manage:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 112
    array-length v0, v1

    :goto_0
    if-ge v7, v0, :cond_1

    aget-object v2, v1, v7

    .line 113
    invoke-virtual {p2}, Landroid/support/v7/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;Landroid/app/Activity;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->a(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 65
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$layout;->dialog_permission_manage:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 66
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->detail_settings:I

    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog$2;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;Landroid/app/Activity;)V

    .line 67
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->cancel:I

    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog$1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;Landroid/app/Activity;)V

    .line 76
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    .line 86
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->a(Landroid/view/View;Landroid/support/v7/app/AlertDialog;)V

    return-object p1
.end method

.method public onStart()V
    .locals 0

    .line 92
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/permission/StartManagePermissionsDialog;->a()V

    return-void
.end method
