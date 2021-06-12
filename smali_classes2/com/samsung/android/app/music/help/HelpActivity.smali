.class public Lcom/samsung/android/app/music/help/HelpActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/help/HelpActivity$HelpItem;,
        Lcom/samsung/android/app/music/help/HelpActivity$HelpAdapter;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    .line 38
    new-instance v0, Lcom/samsung/android/app/music/help/HelpActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/help/HelpActivity$1;-><init>(Lcom/samsung/android/app/music/help/HelpActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/help/HelpActivity;->a:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method private a()V
    .locals 2

    const v0, 0x7f130073

    .line 89
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/help/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 90
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/help/HelpActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/app/music/help/HelpActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0b01eb

    .line 92
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/help/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 93
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    const v0, 0x7f130397

    .line 104
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/help/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 105
    new-instance v1, Lcom/samsung/android/app/music/help/HelpActivity$HelpAdapter;

    const v2, 0x7f040126

    invoke-direct {v1, p0, p0, v2}, Lcom/samsung/android/app/music/help/HelpActivity$HelpAdapter;-><init>(Lcom/samsung/android/app/music/help/HelpActivity;Landroid/content/Context;I)V

    .line 106
    new-instance v2, Lcom/samsung/android/app/music/help/HelpActivity$HelpItem;

    const/4 v3, 0x0

    const v4, 0x7f0b01f7

    invoke-direct {v2, p0, v4, v3}, Lcom/samsung/android/app/music/help/HelpActivity$HelpItem;-><init>(Lcom/samsung/android/app/music/help/HelpActivity;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/help/HelpActivity$HelpAdapter;->add(Ljava/lang/Object;)V

    .line 107
    new-instance v2, Lcom/samsung/android/app/music/help/HelpActivity$HelpItem;

    const v4, 0x7f0b01e7

    invoke-direct {v2, p0, v4, v3}, Lcom/samsung/android/app/music/help/HelpActivity$HelpItem;-><init>(Lcom/samsung/android/app/music/help/HelpActivity;ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/help/HelpActivity$HelpAdapter;->add(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 109
    new-instance p1, Lcom/samsung/android/app/music/help/HelpActivity$HelpItem;

    const v2, 0x7f0b01bc

    invoke-static {p0}, Lcom/samsung/android/app/music/service/milk/MilkServiceUtils;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, p0, v2, v3}, Lcom/samsung/android/app/music/help/HelpActivity$HelpItem;-><init>(Lcom/samsung/android/app/music/help/HelpActivity;ILjava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/help/HelpActivity$HelpAdapter;->add(Ljava/lang/Object;)V

    :cond_0
    const p1, 0x106000d

    .line 112
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSelector(I)V

    .line 113
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    iget-object p1, p0, Lcom/samsung/android/app/music/help/HelpActivity;->a:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 70
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f040125

    .line 72
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/help/HelpActivity;->setContentView(I)V

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/app/music/help/HelpActivity;->a()V

    .line 75
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    const/16 v1, 0x17

    if-lt p1, v1, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/samsung/android/app/music/help/HelpActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->b()V

    goto :goto_0

    .line 78
    :cond_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/help/HelpActivity;->a(Z)V

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/help/HelpActivity;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "Help"

    .line 83
    new-array v0, v0, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchHelpResponseExecutor;

    invoke-direct {v3, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchHelpResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V

    aput-object v3, v0, v2

    invoke-interface {p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/app/music/help/HelpActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->c()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/help/HelpActivity;->a(Z)V

    return-void
.end method
