.class public Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

.field private b:Landroid/content/Intent;

.field private final c:Landroid/os/Handler;

.field private d:Landroid/view/View;

.field private final e:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->c:Landroid/os/Handler;

    .line 43
    new-instance v0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity$1;-><init>(Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->e:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    return-object p0
.end method

.method private a(Z)V
    .locals 3

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "InternalPickerSearchTabFragment"

    .line 132
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    .line 134
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;

    invoke-direct {p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;-><init>()V

    .line 135
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    const-string v2, "InternalPickerSearchTabFragment"

    .line 136
    invoke-virtual {v0, v1, p1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;)Landroid/content/Intent;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->b:Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method public a(JZ)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(JZ)V

    .line 161
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->c:Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 162
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->c:Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->e:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;)V

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public a([J)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a([J)V

    return-void
.end method

.method public a(J)Z
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(J)Z

    move-result p1

    return p1
.end method

.method public a()[J
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a()[J

    move-result-object v0

    return-object v0
.end method

.method public a(I)[J
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 149
    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(I)[J

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public b()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->b()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->c()I

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 62
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x1020002

    .line 64
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->d:Landroid/view/View;

    .line 66
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->b:Landroid/content/Intent;

    .line 67
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 68
    :goto_0
    invoke-direct {p0, v2}, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->a(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const-string v2, "saved_instance_state_checked_item_ids"

    .line 73
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    const-string p1, "key_checked_ids"

    .line 76
    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v3

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 81
    array-length p1, v3

    :goto_2
    if-ge v0, p1, :cond_3

    aget-wide v4, v3, v0

    .line 82
    iget-object v2, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v2, v4, v5, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(JZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 86
    :cond_3
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "232"

    .line 87
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 127
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onDestroy()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 107
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 108
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->setIntent(Landroid/content/Intent;)V

    const-string v0, "android.intent.action.SEARCH"

    .line 110
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "InternalPickerSearchTabFragment"

    .line 112
    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 113
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v1, :cond_0

    const-string v1, "query"

    .line 114
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->b_(Ljava/lang/String;)V

    :cond_0
    const-string v0, "query"

    .line 117
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "232"

    const-string v1, "2631"

    .line 120
    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 101
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onPause()V

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->d:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/samsung/android/app/music/search/SearchUtils;->c(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "saved_instance_state_checked_item_ids"

    .line 55
    iget-object v1, p0, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->a:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 56
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a()[J

    move-result-object v1

    .line 55
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 57
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 92
    invoke-super {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onStart()V

    .line 93
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/activity/InternalPickerSearchActivity;->finish()V

    :cond_0
    return-void
.end method
