.class public Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;
.super Lcom/samsung/android/app/music/activity/BaseServiceActivity;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager;
.implements Lcom/samsung/android/app/music/search/ISearchPageSwitcher;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

.field private c:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Ljava/lang/String;

.field private g:Z

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;-><init>()V

    const-string v0, "SetFavoriteSearchActivity"

    .line 51
    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->g:Z

    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "SetFavoriteSearchActivity"

    const-string v1, "init actionbar for search"

    .line 101
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f130073

    .line 102
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 103
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0401e2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 104
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    .line 106
    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 107
    invoke-virtual {p1}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 112
    :cond_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;-><init>(Landroid/support/v7/app/AppCompatActivity;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    .line 113
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    const-string v0, "3"

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->d:Ljava/lang/String;

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0b033e

    goto :goto_0

    :cond_1
    const v0, 0x7f0b0341

    .line 113
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 2

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_display_type"

    .line 71
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "key_request_code"

    .line 72
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 73
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private b(I)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->h:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/search/SearchUtils;->b(Landroid/view/View;Landroid/content/Context;)V

    .line 224
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->setResult(I)V

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->finish()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 130
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->f:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 132
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_3

    .line 134
    sget-object v2, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_AUTO_COMPLETE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    .line 136
    invoke-static {v1}, Lcom/samsung/android/app/music/search/SetFavoriteSearchAutoCompleteFragment;->b(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;

    move-result-object v1

    goto :goto_0

    .line 137
    :cond_1
    sget-object v2, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "1"

    .line 138
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;->c(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchTrackFragment;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v2, "3"

    .line 140
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchArtistFragment;->c(Ljava/lang/String;)Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchArtistFragment;

    move-result-object v1

    .line 145
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->c(Ljava/lang/String;)V

    if-nez v1, :cond_4

    const-string p1, "SetFavoriteSearchActivity"

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown or No display type is passed from caller activity! : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 149
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->b(I)V

    return-void

    .line 152
    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v2, 0x7f13014f

    .line 153
    invoke-virtual {v0, v2, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x1

    .line 154
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->g:Z

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 168
    sget-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->h:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/search/SearchUtils;->b(Landroid/view/View;Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V
    .locals 3

    const-string v0, "SetFavoriteSearchActivity"

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update search type to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V

    return-void
.end method

.method public b(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->b(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V

    return-void
.end method

.method public b_(Ljava/lang/String;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->b:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->b_(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 78
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f040242

    .line 79
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->setContentView(I)V

    .line 81
    new-instance v0, Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/network/NetworkManagerImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->c:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->c:Lcom/samsung/android/app/music/network/NetworkManagerImpl;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->addActivityLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/ActivityLifeCycleCallbacks;)V

    .line 84
    sget-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_AUTO_COMPLETE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    const-string v0, "key_fragment_tag"

    .line 86
    sget-object v2, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_AUTO_COMPLETE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    .line 87
    invoke-virtual {v2}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_display_type"

    .line 88
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->d:Ljava/lang/String;

    const-string v2, "key_request_code"

    .line 89
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->e:I

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "key_display_type"

    .line 92
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->d:Ljava/lang/String;

    const-string v2, "key_request_code"

    .line 93
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->e:I

    .line 95
    :goto_0
    invoke-direct {p0, p0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->a(Landroid/app/Activity;)V

    const p1, 0x7f130563

    .line 96
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->h:Landroid/view/View;

    .line 97
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 159
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string v0, "android.intent.action.SEARCH"

    .line 160
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "query"

    .line 161
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->b_(Ljava/lang/String;)V

    const-string v0, "query"

    .line 162
    invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 163
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "key_fragment_tag"

    .line 120
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_display_type"

    .line 121
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_request_code"

    .line 122
    iget v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/search/SetFavoriteSearchActivity;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/activity/BaseServiceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
