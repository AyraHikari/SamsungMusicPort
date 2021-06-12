.class public Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;
.super Lcom/samsung/android/app/music/search/AbsTabFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/search/ISearchPageSwitcher;
.implements Lcom/samsung/android/app/music/search/SearchHistoryFragment$OnHistoryUpdateListener;
.implements Lcom/samsung/android/app/music/search/SelectAllObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$EnterHandler;,
        Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchSelectAllImpl;,
        Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;
    }
.end annotation


# instance fields
.field private c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;

.field private f:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

.field private g:Ljava/lang/String;

.field private h:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$EnterHandler;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/view/View;

.field private l:Landroid/os/Handler;

.field private m:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

.field private n:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

.field private o:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/samsung/android/app/music/search/SelectAllObservable$OnSelectAllListener;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/AbsTabFragment;-><init>()V

    .line 77
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->l:Landroid/os/Handler;

    .line 83
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->o:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 86
    new-instance v0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$1;-><init>(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->p:Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->a(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/search/SearchConstants$SearchType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 265
    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 274
    :cond_0
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    return-object p1

    .line 267
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->a()Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 269
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_AUTO_COMPLETE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    return-object p1

    .line 271
    :cond_2
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->j:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/app/Activity;)V
    .locals 3

    .line 191
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 192
    instance-of v1, p1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 193
    move-object v0, p1

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    const-string v1, "InternalPickerSearchTabFragment"

    const-string v2, "init actionbar for search"

    .line 194
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->k:Landroid/view/View;

    if-nez v1, :cond_0

    .line 196
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0401e2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->k:Landroid/view/View;

    goto :goto_0

    .line 199
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->k:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->k:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 204
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p1

    .line 205
    invoke-static {p1}, Lcom/samsung/android/app/music/kotlin/extension/AppBarExtensionKt;->b(Lcom/samsung/android/app/musiclibrary/ui/AppBar;)V

    .line 207
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    .line 208
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 211
    iget-object v2, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->k:Landroid/view/View;

    invoke-virtual {p1, v2, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->a(Landroid/support/v7/app/AppCompatActivity;)V

    .line 213
    instance-of p1, v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    if-eqz p1, :cond_2

    .line 214
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->p:Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;->addOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    :cond_2
    return-void
.end method

.method private a(Landroid/support/v7/app/AppCompatActivity;)V
    .locals 2
    .param p1    # Landroid/support/v7/app/AppCompatActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 220
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a(Z)V

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->b(Z)V

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->c(Z)V

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->d(Z)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a(Landroid/content/Context;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$4;-><init>(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)V

    .line 226
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a(Landroid/content/Context;)Landroid/widget/EditText;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$5;-><init>(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 246
    new-instance p1, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;

    const v0, 0x7f140027

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;-><init>(Landroid/support/v4/app/Fragment;I)V

    iput-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->h:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$EnterHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$EnterHandler;->removeMessages(I)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->h:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$EnterHandler;

    iget-object v2, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->h:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$EnterHandler;

    invoke-virtual {v2, v1, p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$EnterHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$EnterHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;Landroid/view/View;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->a(Landroid/view/View;)V

    return-void
.end method

.method private b(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 392
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->e:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->e:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->e:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private b(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;
    .locals 2
    .param p1    # Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->f:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_HISTORY:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->d:Landroid/content/Context;

    .line 362
    invoke-static {v0}, Lcom/samsung/android/app/music/search/SearchUtils;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 363
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_GUIDE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    return-object p1

    :cond_0
    return-object p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->g()V

    return-void
.end method

.method private b(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 182
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->e:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 183
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->b(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 185
    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->d:Landroid/content/Context;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    const-string v0, "InternalPickerSearchTabFragment"

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save search keyword : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iput-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->f:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->i:Ljava/lang/String;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 472
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->o:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/search/SelectAllObservable$OnSelectAllListener;

    .line 473
    invoke-interface {v1}, Lcom/samsung/android/app/music/search/SelectAllObservable$OnSelectAllListener;->l()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 291
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->e:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 401
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->selectTab(II)V

    :cond_0
    return-void
.end method

.method public a(IZ)V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->m:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->n:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    .line 252
    iget-object p2, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->b:Lcom/samsung/android/app/music/search/SearchSlideTabController;

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-lez p1, :cond_1

    .line 256
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->b:Lcom/samsung/android/app/music/search/SearchSlideTabController;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/search/SearchSlideTabController;->a(Z)V

    goto :goto_0

    .line 258
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->b:Lcom/samsung/android/app/music/search/SearchSlideTabController;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/search/SearchSlideTabController;->a(Z)V

    :goto_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 340
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->b(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    move-result-object p1

    const-string v0, "InternalPickerSearchTabFragment"

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchPage to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getSearchType()Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->LOCAL:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 343
    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 345
    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->j:Ljava/lang/String;

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->i:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 353
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->e:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;

    if-eqz p1, :cond_2

    .line 354
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->e:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/search/SelectAllObservable$OnSelectAllListener;)V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->o:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->n:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->n:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->setViewEnabled(Z)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .line 430
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c(Ljava/lang/String;)V

    .line 431
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->m:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->n:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    return v1
.end method

.method protected b()Landroid/support/v4/view/PagerAdapter;
    .locals 2

    .line 280
    new-instance v0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;-><init>(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->e:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;

    .line 281
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->e:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;

    return-object v0
.end method

.method public b(Lcom/samsung/android/app/music/search/SelectAllObservable$OnSelectAllListener;)V
    .locals 1

    .line 453
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->o:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->b(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 423
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c(Ljava/lang/String;)V

    .line 424
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->h:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$EnterHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$EnterHandler;->removeMessages(I)V

    return v0
.end method

.method public b_(Ljava/lang/String;)V
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->b_(Ljava/lang/String;)V

    .line 301
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    .line 302
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    :cond_0
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "InternalPickerSearchTabFragment"

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()V
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->f:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->LOCAL:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->f:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne v0, v1, :cond_1

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/search/SearchUtils;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 410
    sget-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_GUIDE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    :cond_1
    const/4 v0, 0x0

    .line 413
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->e:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchTabAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 414
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->b(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 415
    instance-of v2, v1, Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    if-eqz v2, :cond_2

    .line 416
    check-cast v1, Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->s_()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public f()Z
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->n:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    if-eqz v0, :cond_0

    .line 459
    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->n:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 103
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/AbsTabFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->d:Landroid/content/Context;

    .line 106
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    iput-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->f:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    goto :goto_0

    .line 109
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->LOCAL:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    iput-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->f:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    .line 111
    :goto_0
    new-instance v0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$EnterHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$EnterHandler;-><init>(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->h:Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$EnterHandler;

    if-eqz p1, :cond_1

    const-string v0, "key_tab_tags"

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_search_keyword"

    const-string v2, ""

    .line 116
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 117
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 118
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->j:Ljava/lang/String;

    const/4 v1, 0x1

    .line 119
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->i:Ljava/lang/String;

    .line 120
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c(Ljava/lang/String;)V

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate saved info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f04008d

    const/4 v0, 0x0

    .line 131
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 382
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/AbsTabFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_tab_tags"

    const/4 v1, 0x2

    .line 383
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->j:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->i:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "key_search_keyword"

    .line 384
    iget-object v1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 370
    invoke-super {p0}, Lcom/samsung/android/app/music/search/AbsTabFragment;->onStart()V

    .line 371
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 376
    invoke-super {p0}, Lcom/samsung/android/app/music/search/AbsTabFragment;->onStop()V

    .line 377
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 136
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/AbsTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 139
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->a(Landroid/app/Activity;)V

    .line 140
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->g:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    iget-object v0, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->b_(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    .line 144
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->l:Landroid/os/Handler;

    new-instance p2, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$2;-><init>(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    :cond_1
    new-instance p1, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchSelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$PickerSearchSelectAllImpl;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->m:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    .line 152
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->m:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->d()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->n:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    .line 153
    iget-object p1, p0, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->n:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->c:Landroid/view/View;

    new-instance p2, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$3;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment$3;-><init>(Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 168
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/AbsTabFragment;->setUserVisibleHint(Z)V

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 171
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/InternalPickerSearchTabFragment;->b(Z)V

    :cond_0
    return-void
.end method
