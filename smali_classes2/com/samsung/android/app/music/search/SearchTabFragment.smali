.class public Lcom/samsung/android/app/music/search/SearchTabFragment;
.super Lcom/samsung/android/app/music/search/AbsTabFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/search/ISearchPageSwitcher;
.implements Lcom/samsung/android/app/music/search/SearchHistoryFragment$OnHistoryUpdateListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/search/SearchTabFragment$EnterHandler;,
        Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;
    }
.end annotation


# instance fields
.field private c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;

.field private f:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

.field private g:Ljava/lang/String;

.field private h:Lcom/samsung/android/app/music/search/SearchTabFragment$EnterHandler;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/view/View;

.field private l:Landroid/os/Handler;

.field private m:Z

.field private n:Z

.field private o:Landroid/support/v7/widget/PopupMenu;

.field private p:Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

.field private q:Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/AbsTabFragment;-><init>()V

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->l:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->m:Z

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->n:Z

    .line 106
    new-instance v0, Lcom/samsung/android/app/music/search/SearchTabFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/search/SearchTabFragment$1;-><init>(Lcom/samsung/android/app/music/search/SearchTabFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->p:Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    .line 833
    new-instance v0, Lcom/samsung/android/app/music/search/SearchTabFragment$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/search/SearchTabFragment$10;-><init>(Lcom/samsung/android/app/music/search/SearchTabFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->q:Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    return-void
.end method

.method private a(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/search/SearchConstants$SearchType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 395
    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p1, v0, :cond_0

    .line 396
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_HISTORY:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    return-object p1

    .line 397
    :cond_0
    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p1, v0, :cond_1

    .line 398
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_POPULAR_KEYWORDS:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    return-object p1

    .line 400
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->f:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne p1, v0, :cond_2

    .line 401
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_GUIDE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    return-object p1

    .line 403
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->d:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/search/SearchUtils;->b(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 404
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_HISTORY:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    return-object p1

    .line 406
    :cond_3
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_GUIDE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/SearchTabFragment;Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/SearchTabFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/SearchTabFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->j:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 261
    instance-of v1, p1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 262
    move-object v0, p1

    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    const-string v1, "SearchTabFragment"

    const-string v2, "init actionbar for search"

    .line 263
    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->k:Landroid/view/View;

    if-nez v1, :cond_0

    .line 265
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0401e2

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->k:Landroid/view/View;

    goto :goto_0

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->k:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->k:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 273
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p1

    .line 274
    invoke-static {p1}, Lcom/samsung/android/app/music/kotlin/extension/AppBarExtensionKt;->b(Lcom/samsung/android/app/musiclibrary/ui/AppBar;)V

    .line 276
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a()Landroid/support/v7/widget/Toolbar;

    move-result-object p1

    .line 277
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 280
    iget-object v2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->k:Landroid/view/View;

    invoke-virtual {p1, v2, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 281
    invoke-direct {p0, v0, p2}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Landroid/support/v7/app/AppCompatActivity;Landroid/os/Bundle;)V

    .line 282
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->i()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 283
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->b(Z)V

    .line 285
    :cond_2
    instance-of p1, v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    if-eqz p1, :cond_3

    .line 286
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;

    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->p:Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable;->addOnKeyListener(Lcom/samsung/android/app/musiclibrary/ui/OnKeyObservable$OnKeyListener;)V

    :cond_3
    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->o:Landroid/support/v7/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->o:Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->dismiss()V

    .line 362
    :cond_0
    new-instance v0, Landroid/support/v7/widget/PopupMenu;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->o:Landroid/support/v7/widget/PopupMenu;

    .line 363
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->o:Landroid/support/v7/widget/PopupMenu;

    const p2, 0x7f140027

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/PopupMenu;->inflate(I)V

    .line 364
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->o:Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 365
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->o:Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/support/v7/widget/PopupMenu;->show()V

    const/4 p1, 0x1

    .line 366
    iput-boolean p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->n:Z

    .line 367
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->o:Landroid/support/v7/widget/PopupMenu;

    new-instance p2, Lcom/samsung/android/app/music/search/SearchTabFragment$8;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/search/SearchTabFragment$8;-><init>(Lcom/samsung/android/app/music/search/SearchTabFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 373
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->o:Landroid/support/v7/widget/PopupMenu;

    new-instance p2, Lcom/samsung/android/app/music/search/SearchTabFragment$9;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/search/SearchTabFragment$9;-><init>(Lcom/samsung/android/app/music/search/SearchTabFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/PopupMenu;->setOnDismissListener(Landroid/support/v7/widget/PopupMenu$OnDismissListener;)V

    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 254
    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 255
    invoke-virtual {p1, p2}, Landroid/support/v4/app/Fragment;->setMenuVisibility(Z)V

    :cond_0
    return-void
.end method

.method private a(Landroid/support/v7/app/AppCompatActivity;Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/support/v7/app/AppCompatActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 293
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    .line 294
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a(Z)V

    .line 295
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->b(Z)V

    .line 296
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->d(Z)V

    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a(Landroid/content/Context;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/music/search/SearchTabFragment$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/search/SearchTabFragment$3;-><init>(Lcom/samsung/android/app/music/search/SearchTabFragment;)V

    .line 298
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 310
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a(Landroid/content/Context;)Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/app/music/search/SearchTabFragment$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/search/SearchTabFragment$4;-><init>(Lcom/samsung/android/app/music/search/SearchTabFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 319
    new-instance v0, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;

    const v2, 0x7f140027

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/app/music/browse/list/menu/BrowseMenuGroup;-><init>(Landroid/support/v4/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 320
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    new-instance v2, Lcom/samsung/android/app/music/search/SearchTabFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment$5;-><init>(Lcom/samsung/android/app/music/search/SearchTabFragment;Landroid/support/v7/app/AppCompatActivity;)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_1

    const-string v0, "key_more_popup_shown"

    .line 327
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 328
    iget-object p2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->b()Landroid/view/View;

    move-result-object p2

    .line 330
    invoke-virtual {p2}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_0

    .line 333
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/search/SearchTabFragment$6;

    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment$6;-><init>(Lcom/samsung/android/app/music/search/SearchTabFragment;Landroid/view/View;Landroid/support/v7/app/AppCompatActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 342
    :goto_0
    new-instance p1, Lcom/samsung/android/app/music/search/SearchTabFragment$7;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/search/SearchTabFragment$7;-><init>(Lcom/samsung/android/app/music/search/SearchTabFragment;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->h:Lcom/samsung/android/app/music/search/SearchTabFragment$EnterHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/search/SearchTabFragment$EnterHandler;->removeMessages(I)V

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->h:Lcom/samsung/android/app/music/search/SearchTabFragment$EnterHandler;

    iget-object v2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->h:Lcom/samsung/android/app/music/search/SearchTabFragment$EnterHandler;

    invoke-virtual {v2, v1, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment$EnterHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment$EnterHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/SearchTabFragment;Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/SearchTabFragment;Landroid/support/v4/app/Fragment;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->b(Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/SearchTabFragment;Landroid/support/v4/app/Fragment;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Landroid/support/v4/app/Fragment;Z)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/SearchTabFragment;Landroid/view/View;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Landroid/view/View;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 244
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->e:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 245
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->b(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Landroid/support/v4/app/Fragment;)Z
    .locals 1

    .line 413
    instance-of v0, p1, Lcom/samsung/android/app/music/list/local/SearchGuideFragment;

    if-nez v0, :cond_1

    instance-of p1, p1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPopularKeywordFragment;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/SearchTabFragment;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->m:Z

    return p1
.end method

.method private b(I)Landroid/support/v4/app/Fragment;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 583
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->e:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->a:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->e:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->e:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/search/SearchTabFragment;)Landroid/support/v7/widget/PopupMenu;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->o:Landroid/support/v7/widget/PopupMenu;

    return-object p0
.end method

.method private b(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;
    .locals 2
    .param p1    # Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 515
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->f:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_HISTORY:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->d:Landroid/content/Context;

    .line 516
    invoke-static {v0}, Lcom/samsung/android/app/music/search/SearchUtils;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_GUIDE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    return-object p1

    :cond_0
    return-object p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/search/SearchTabFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->i:Ljava/lang/String;

    return-object p1
.end method

.method private b(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 422
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "SearchTabFragment"

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update navi up button for : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Landroid/support/v4/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 427
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->getView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->d:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/search/SearchUtils;->b(Landroid/view/View;Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 428
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->b(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    .line 430
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->b(Z)V

    :goto_0
    return-void
.end method

.method private b(Z)V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 525
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->c(Z)V

    .line 526
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a(Z)V

    .line 527
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->b(Z)V

    goto :goto_0

    .line 529
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a(Z)V

    .line 530
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->b(Z)V

    .line 531
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->c(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/search/SearchTabFragment;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->n:Z

    return p1
.end method

.method static synthetic c(Lcom/samsung/android/app/music/search/SearchTabFragment;)Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    const-string v0, "SearchTabFragment"

    .line 223
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save search keyword : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/samsung/android/app/music/search/SearchTabFragment;)Landroid/content/Context;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/search/SearchTabFragment;)Lcom/samsung/android/app/music/search/SearchConstants$SearchType;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->f:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    return-object p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/search/SearchTabFragment;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->j:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/samsung/android/app/music/search/SearchTabFragment;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/samsung/android/app/music/search/SearchTabFragment;)Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->e:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;

    return-object p0
.end method

.method private h()V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->b_(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 387
    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->j:Ljava/lang/String;

    .line 388
    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->i:Ljava/lang/String;

    .line 389
    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->LOCAL:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    .line 390
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->f:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    return-void
.end method

.method static synthetic i(Lcom/samsung/android/app/music/search/SearchTabFragment;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->h()V

    return-void
.end method

.method private i()Z
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->f:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 447
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .line 591
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->e:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 592
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->selectTab(II)V

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 496
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->b(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    move-result-object p1

    const-string v0, "SearchTabFragment"

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchPage to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getSearchType()Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->LOCAL:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 499
    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 501
    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->j:Ljava/lang/String;

    goto :goto_0

    .line 504
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 506
    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->getTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->i:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 509
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->e:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;

    if-eqz p1, :cond_2

    .line 510
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->e:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 620
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected b()Landroid/support/v4/view/PagerAdapter;
    .locals 2

    .line 436
    new-instance v0, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;-><init>(Lcom/samsung/android/app/music/search/SearchTabFragment;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->e:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;

    .line 437
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->e:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;

    return-object v0
.end method

.method public b(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->b(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 613
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->c(Ljava/lang/String;)V

    .line 614
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->h:Lcom/samsung/android/app/music/search/SearchTabFragment$EnterHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/search/SearchTabFragment$EnterHandler;->removeMessages(I)V

    return v0
.end method

.method public b_(Ljava/lang/String;)V
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->b_(Ljava/lang/String;)V

    .line 457
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    .line 458
    sget-object p1, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    :cond_0
    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "SearchTabFragment"

    return-object v0
.end method

.method public e()V
    .locals 3

    .line 598
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->f:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->LOCAL:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->f:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-ne v0, v1, :cond_1

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/search/SearchUtils;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 600
    sget-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_GUIDE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    :cond_1
    const/4 v0, 0x0

    .line 603
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->e:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 604
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->b(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 605
    instance-of v2, v1, Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    if-eqz v2, :cond_2

    .line 606
    check-cast v1, Lcom/samsung/android/app/music/search/SearchHistoryFragment;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/search/SearchHistoryFragment;->s_()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public f()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->e:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->e:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->e:Lcom/samsung/android/app/music/search/SearchTabFragment$SearchTabAdapter;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 123
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/AbsTabFragment;->onCreate(Landroid/os/Bundle;)V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->d:Landroid/content/Context;

    .line 126
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->f:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    goto :goto_1

    .line 129
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/app/music/search/SearchUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->SPOTIFY_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->LOCAL:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->f:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    .line 132
    :goto_1
    new-instance v0, Lcom/samsung/android/app/music/search/SearchTabFragment$EnterHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/search/SearchTabFragment$EnterHandler;-><init>(Lcom/samsung/android/app/music/search/SearchTabFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->h:Lcom/samsung/android/app/music/search/SearchTabFragment$EnterHandler;

    if-eqz p1, :cond_2

    const-string v0, "key_tab_tags"

    .line 136
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_search_keyword"

    const-string v2, ""

    .line 137
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_2

    .line 138
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 139
    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->j:Ljava/lang/String;

    const/4 v1, 0x1

    .line 140
    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->i:Ljava/lang/String;

    .line 141
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->c(Ljava/lang/String;)V

    .line 144
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate saved info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0401e5

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 569
    invoke-super {p0}, Lcom/samsung/android/app/music/search/AbsTabFragment;->onDestroyView()V

    .line 570
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 571
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    if-eqz v1, :cond_0

    .line 572
    check-cast v0, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;

    .line 573
    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->q:Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/BackPressedObservable;->removeOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->o:Landroid/support/v7/widget/PopupMenu;

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->o:Landroid/support/v7/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->dismiss()V

    :cond_1
    return-void
.end method

.method public onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 1

    .line 631
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->getView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->d:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/search/SearchUtils;->b(Landroid/view/View;Landroid/content/Context;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .line 558
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/AbsTabFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_tab_tags"

    const/4 v1, 0x2

    .line 559
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->j:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->i:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v0, "key_search_keyword"

    .line 560
    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_more_popup_shown"

    .line 561
    iget-boolean v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "key_has_focus_in_search_view"

    .line 562
    iget-boolean v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->m:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 563
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save info : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 538
    invoke-super {p0}, Lcom/samsung/android/app/music/search/AbsTabFragment;->onStart()V

    .line 539
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 540
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V

    .line 541
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v1, :cond_0

    .line 542
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 548
    invoke-super {p0}, Lcom/samsung/android/app/music/search/AbsTabFragment;->onStop()V

    .line 549
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 550
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->b(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V

    .line 551
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v1, :cond_0

    .line 552
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 157
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/AbsTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "key_has_focus_in_search_view"

    .line 163
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->m:Z

    .line 165
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->g:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 166
    iget-object p2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->g:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->b_(Ljava/lang/String;)V

    .line 168
    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->f:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    sget-object v1, Lcom/samsung/android/app/music/search/SearchConstants$SearchType;->MILK_STORE:Lcom/samsung/android/app/music/search/SearchConstants$SearchType;

    if-eq p2, v1, :cond_2

    .line 169
    iget-boolean p2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->m:Z

    if-eqz p2, :cond_2

    .line 170
    iget-object p2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->l:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/search/SearchTabFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/search/SearchTabFragment$2;-><init>(Lcom/samsung/android/app/music/search/SearchTabFragment;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    :cond_2
    instance-of p2, p1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    if-eqz p2, :cond_3

    .line 179
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;

    .line 180
    iget-object p2, p0, Lcom/samsung/android/app/music/search/SearchTabFragment;->q:Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseActivity;->addOnBackPressedListener(Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;)V

    .line 183
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 189
    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    goto :goto_0

    :cond_4
    const-string p2, "Search"

    :goto_0
    const/4 v1, 0x2

    .line 194
    new-array v1, v1, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    new-instance v2, Lcom/samsung/android/app/music/bixby/v1/executor/search/LaunchSearchResponseExecutor;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/music/bixby/v1/executor/search/LaunchSearchResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;)V

    aput-object v2, v1, v0

    const/4 v0, 0x1

    new-instance v2, Lcom/samsung/android/app/music/bixby/v1/executor/search/SetQueryExecutor;

    invoke-direct {v2, p1, p0, p0}, Lcom/samsung/android/app/music/bixby/v1/executor/search/SetQueryExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;Lcom/samsung/android/app/music/search/SearchTabFragment;)V

    aput-object v2, v1, v0

    invoke-interface {p1, p2, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    :cond_5
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 207
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/AbsTabFragment;->setUserVisibleHint(Z)V

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchTabFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 210
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchTabFragment;->a(Z)V

    :cond_0
    return-void
.end method
