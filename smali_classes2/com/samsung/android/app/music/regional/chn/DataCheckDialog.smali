.class public Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "DataCheckDialog"

.field private static b:Z = true

.field private static c:Z = true


# instance fields
.field private d:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->i:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 3

    .line 172
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->i:Z

    .line 173
    sget-object v0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataCheckDialog() : networkStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", prefKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iput-object p2, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->g:Ljava/lang/String;

    const-string p2, ""

    .line 175
    iput-object p2, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->f:Ljava/lang/String;

    .line 176
    iput p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->e:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 179
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->i:Z

    .line 180
    sget-object v0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DataCheckDialog() : networkStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", keyWord="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", prefKey="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iput-object p3, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->g:Ljava/lang/String;

    .line 183
    iput-object p2, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->f:Ljava/lang/String;

    .line 184
    iput p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->e:I

    .line 185
    iput-object p4, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->h:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;)I
    .locals 1

    .line 80
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 81
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isWiFiP2PEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/utils/ConnectivityUtils;->isMobileConnected(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;)Z
    .locals 4

    .line 141
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 142
    invoke-static {v0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->c(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 143
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v3, "data_check_help_dialog"

    .line 144
    invoke-virtual {v1, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_2

    .line 145
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->a(Landroid/content/Context;)I

    move-result v0

    .line 149
    new-instance v1, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    const-string v2, "data_check_help_dlna"

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;-><init>(ILjava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string v0, "data_check_help_dialog"

    invoke-virtual {v1, p0, v0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v2

    :cond_2
    return v2
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;)Z
    .locals 5

    .line 158
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "data_check_help"

    const/4 v2, 0x0

    .line 159
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "data_check_default"

    const/4 v4, 0x1

    .line 161
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return v2

    .line 164
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->a(Landroid/content/Context;)I

    move-result v0

    .line 165
    new-instance v1, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    const-string v3, "data_check_default"

    invoke-direct {v1, v0, v3}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;-><init>(ILjava/lang/String;)V

    .line 167
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->a(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;)V

    .line 168
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string p1, "data_check_help_dialog"

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 129
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    invoke-static {v0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->a(Landroid/content/Context;)I

    move-result v0

    .line 132
    new-instance v1, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;

    const-string v2, "data_check_help_nearby_item"

    invoke-direct {v1, v0, p1, v2, p2}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const-string p1, "data_check_help_dialog"

    invoke-virtual {v1, p0, p1}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->i:Z

    return p1
.end method

.method static synthetic a(Z)Z
    .locals 0

    .line 32
    sput-boolean p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->b:Z

    return p0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 3

    .line 95
    sget-boolean v0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "data_check_help"

    .line 97
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 100
    invoke-static {p0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->a(Landroid/content/Context;)I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    const-string p0, "data_check_help_nearby_item"

    .line 103
    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->b:Z

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->i:Z

    return p0
.end method

.method static synthetic b(Z)Z
    .locals 0

    .line 32
    sput-boolean p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->c:Z

    return p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->f:Ljava/lang/String;

    return-object p0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 3

    .line 112
    sget-boolean v0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "data_check_help"

    .line 114
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 116
    invoke-static {p0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->a(Landroid/content/Context;)I

    move-result p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    const-string p0, "data_check_help_dlna"

    .line 119
    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->c:Z

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method static synthetic d(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->d:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->d:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 287
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 288
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->d:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    if-eqz p1, :cond_0

    .line 289
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->d:Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$OnDialogResultListener;->a(I)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    const/4 v0, 0x0

    .line 201
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->setStyle(II)V

    if-eqz p1, :cond_0

    const-string v1, "prefKey"

    .line 204
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->g:Ljava/lang/String;

    const-string v1, "keyWord"

    .line 205
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->f:Ljava/lang/String;

    const-string v1, "networkStatus"

    .line 206
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->e:I

    .line 209
    :cond_0
    iget p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->e:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    iget p1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->e:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :cond_2
    :goto_0
    const p1, 0x7f0b00f5

    .line 210
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v1, [Ljava/lang/Object;

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/music/util/AppNameUtils;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 210
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0b00f6

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 218
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0b00cd

    new-instance v4, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$2;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$2;-><init>(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)V

    .line 219
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0b02d3

    new-instance v4, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;

    invoke-direct {v4, p0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$1;-><init>(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)V

    .line 227
    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v3, "layout_inflater"

    .line 260
    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    const v4, 0x7f040064

    .line 261
    new-instance v5, Landroid/widget/LinearLayout;

    .line 262
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v5, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 261
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 263
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v3, 0x7f130207

    .line 265
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 266
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f130170

    .line 268
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 269
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 270
    new-instance v1, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$3;-><init>(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    new-instance v1, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog$4;-><init>(Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;)V

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 282
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "prefKey"

    .line 190
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "keyWord"

    .line 191
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "networkStatus"

    .line 192
    iget v1, p0, Lcom/samsung/android/app/music/regional/chn/DataCheckDialog;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
