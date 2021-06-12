.class public Lcom/samsung/android/app/music/util/PackageLauncher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "PackageLauncher"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 125
    :try_start_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    goto :goto_0

    .line 128
    :cond_0
    sget-object p2, Lcom/samsung/android/app/music/util/PackageLauncher;->a:Ljava/lang/String;

    const-string v1, "launch : context is null!"

    invoke-static {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    sget-object p2, Lcom/samsung/android/app/music/util/PackageLauncher;->a:Ljava/lang/String;

    const-string v1, "launch : ActivityNotFoundException occurred"

    invoke-static {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 138
    :try_start_1
    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 141
    iget-boolean p2, p2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez p2, :cond_1

    .line 143
    instance-of p2, p0, Landroid/support/v4/app/FragmentActivity;

    if-eqz p2, :cond_2

    .line 144
    check-cast p0, Landroid/support/v4/app/FragmentActivity;

    .line 145
    new-instance p2, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2, p3}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->a(Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;)V

    .line 148
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Lcom/samsung/android/app/music/milk/store/popup/DisabledDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 149
    sget-object p0, Lcom/samsung/android/app/music/util/PackageLauncher;->a:Ljava/lang/String;

    const-string p1, "launch : The package is disabled."

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_1
    sget-object p0, Lcom/samsung/android/app/music/util/PackageLauncher;->a:Ljava/lang/String;

    const-string p1, "launch : No activity but package is enabled."

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 157
    :catch_1
    sget-object p0, Lcom/samsung/android/app/music/util/PackageLauncher;->a:Ljava/lang/String;

    const-string p1, "launch : The package does not exist "

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;)Z
    .locals 3

    .line 39
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sec.android.app.samsungapps"

    const-string v2, "com.sec.android.app.samsungapps.Main"

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "directcall"

    const/4 v2, 0x1

    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "GUID"

    .line 43
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x14000020

    .line 44
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p1, "com.sec.android.app.samsungapps"

    .line 46
    invoke-static {p0, p1, v0, p2}, Lcom/samsung/android/app/music/util/PackageLauncher;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Lcom/samsung/android/app/music/milk/store/popup/MilkBaseDialog$OnDialogStateListener;)Z

    move-result p0

    return p0
.end method
