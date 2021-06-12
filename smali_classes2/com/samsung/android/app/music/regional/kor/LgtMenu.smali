.class public Lcom/samsung/android/app/music/regional/kor/LgtMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# instance fields
.field private final a:Landroid/support/v4/app/Fragment;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/kor/LgtMenu;->a:Landroid/support/v4/app/Fragment;

    .line 32
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/regional/kor/LgtMenu;->b:Landroid/content/Context;

    return-void
.end method

.method private a()V
    .locals 7

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/kor/LgtMenu;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 78
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    .line 79
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 80
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.lgu"

    .line 81
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const/high16 v3, 0x10000000

    if-nez v2, :cond_4

    :try_start_0
    const-string v2, "com.lguplus.appstore"

    .line 90
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 91
    new-instance v1, Landroid/content/Intent;

    const-string v2, "ozstore.external.linked"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v2, 0x4e20

    .line 94
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v2, v0, :cond_3

    const-string v0, "ozstore://STORE/PID=QA6010054881"

    .line 95
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_2

    :cond_3
    const-string v0, "onestore://common/product/0000685984"

    .line 97
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 99
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/kor/LgtMenu;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    .line 101
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.lgu"

    const-string v2, "com.lgu.page.LoadingPage"

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "payload"

    const-string v2, "PID=0000685984"

    .line 104
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/kor/LgtMenu;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 112
    :goto_3
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_5

    :goto_4
    const-string v1, "MusicMenu"

    const-string v2, "Activity Not found!!!"

    .line 108
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/kor/LgtMenu;->b:Landroid/content/Context;

    const-string v1, "Target Activity Not Found"

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_5
    return-void
.end method

.method private a(Landroid/view/Menu;I)V
    .locals 1

    .line 59
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/regional/kor/LgtMenu;->a:Landroid/support/v4/app/Fragment;

    instance-of p2, p2, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    if-eqz p2, :cond_1

    .line 64
    iget-object p2, p0, Lcom/samsung/android/app/music/regional/kor/LgtMenu;->a:Landroid/support/v4/app/Fragment;

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->g()I

    move-result p2

    const v0, 0x110001

    if-ne p2, v0, :cond_1

    .line 65
    iget-object p2, p0, Lcom/samsung/android/app/music/regional/kor/LgtMenu;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isKnoxModeOn(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 66
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 1

    const v0, 0x7f1305de

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/regional/kor/LgtMenu;->a(Landroid/view/Menu;I)V

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    .line 47
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f1305de

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 49
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/kor/LgtMenu;->a()V

    const/4 p1, 0x1

    :goto_0
    return p1
.end method
