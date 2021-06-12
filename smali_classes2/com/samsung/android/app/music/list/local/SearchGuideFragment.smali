.class public Lcom/samsung/android/app/music/list/local/SearchGuideFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

.field private b:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 1

    .line 104
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchGuideFragment;->b:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    sget-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    const/4 p1, 0x1

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 98
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchGuideFragment;->b:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    sget-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->LOCAL_RESULT:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchGuideFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    .line 38
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 39
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchGuideFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    .line 41
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    if-eqz v0, :cond_1

    .line 42
    check-cast p1, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchGuideFragment;->b:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f040102

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 1

    .line 85
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStart()V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchGuideFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchGuideFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->a(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 93
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .line 54
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/SearchGuideFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    .line 57
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Landroid/text/SpannableString;

    const v1, 0x7f0b04bf

    .line 59
    invoke-virtual {p2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 60
    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const v1, 0x7f1301e0

    .line 61
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchGuideFragment;->c:Landroid/widget/TextView;

    .line 62
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchGuideFragment;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchGuideFragment;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/app/music/list/local/SearchGuideFragment$1;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/app/music/list/local/SearchGuideFragment$1;-><init>(Lcom/samsung/android/app/music/list/local/SearchGuideFragment;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const p2, 0x7f13032d

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    const p2, 0x7f1302e7

    .line 72
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/list/local/SearchGuideFragment$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/local/SearchGuideFragment$2;-><init>(Lcom/samsung/android/app/music/list/local/SearchGuideFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
