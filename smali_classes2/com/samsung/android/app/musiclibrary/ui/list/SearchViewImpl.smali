.class public Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$DefaultNaviUpListener;,
        Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;
    }
.end annotation


# instance fields
.field private final a:Landroid/support/v7/widget/SearchView;

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

.field private final d:Landroid/support/v7/widget/SearchView$OnQueryTextListener;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    .line 35
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    .line 181
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->d:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    .line 38
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->toolbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a(Landroid/view/ViewGroup;)Landroid/support/v7/widget/SearchView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    .line 39
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/app/AppCompatActivity;)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    .line 35
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    .line 181
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->d:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    .line 43
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->toolbar:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a(Landroid/view/ViewGroup;)Landroid/support/v7/widget/SearchView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    .line 44
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a(Landroid/app/Activity;)V

    return-void
.end method

.method private a(Landroid/view/ViewGroup;)Landroid/support/v7/widget/SearchView;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_2

    .line 226
    instance-of v0, p1, Landroid/support/v7/widget/Toolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 227
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    .line 228
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContentInsetEnd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/Toolbar;->setContentInsetsRelative(II)V

    .line 230
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 231
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 232
    instance-of v2, v0, Landroid/support/v7/widget/SearchView;

    if-eqz v2, :cond_1

    .line 233
    check-cast v0, Landroid/support/v7/widget/SearchView;

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;)Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    return-object p0
.end method

.method private a(Landroid/app/Activity;)V
    .locals 7

    .line 48
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "search"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 51
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 52
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->onActionViewExpanded()V

    .line 54
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 58
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->d:Landroid/support/v7/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->setOnQueryTextListener(Landroid/support/v7/widget/SearchView$OnQueryTextListener;)V

    .line 59
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v2}, Landroid/support/v7/widget/SearchView;->getImeOptions()I

    move-result v2

    or-int/lit8 v2, v2, 0x3

    const/high16 v3, 0x2000000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->setImeOptions(I)V

    .line 61
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SearchView;->setOnCloseListener(Landroid/support/v7/widget/SearchView$OnCloseListener;)V

    .line 67
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v1}, Landroid/support/v7/widget/SearchView;->seslGetUpButton()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$DefaultNaviUpListener;

    invoke-direct {v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$DefaultNaviUpListener;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x1

    .line 68
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a(Z)V

    .line 69
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->b(Z)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a(Landroid/content/Context;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    sget v2, Lcom/samsung/android/app/musiclibrary/R$string;->max_char_reached_msg:I

    new-array v3, p1, [Ljava/lang/Object;

    const/16 v4, 0x100

    .line 74
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 73
    invoke-static {v0, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 76
    new-array p1, p1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$2;

    invoke-direct {v2, p0, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;ILandroid/widget/Toast;)V

    aput-object v2, p1, v6

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/widget/EditText;
    .locals 0

    .line 92
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    invoke-virtual {p1}, Landroid/support/v7/widget/SearchView;->seslGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->seslGetOverflowMenuButton()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView;->seslSetUpButtonVisibility(I)V

    return-void
.end method

.method public b()Landroid/view/View;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->seslGetOverflowMenuButton()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;->b(Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->c:Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl$OnQueryTextObserver;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->search_voice_btn:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 105
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public b_(Ljava/lang/String;)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 168
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    invoke-virtual {p1}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setFocusable(Z)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setFocusableInTouchMode(Z)V

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0}, Landroid/support/v7/widget/SearchView;->requestFocus()Z

    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView;->seslSetOverflowMenuButtonVisibility(I)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchViewImpl;->a:Landroid/support/v7/widget/SearchView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SearchView;->setFocusable(Z)V

    return-void
.end method
