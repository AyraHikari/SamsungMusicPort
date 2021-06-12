.class public Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;
.super Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;
.source "SourceFile"


# instance fields
.field private b:Landroid/view/View;

.field private c:Lcom/samsung/android/app/music/search/SelectAllObservable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;)Landroid/view/View;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;->b:Landroid/view/View;

    return-object p0
.end method

.method private h(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 82
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;->b:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/search/adapter/StoreSearchAutoCompleteAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;->b:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 58
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 59
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;->h(Z)V

    :cond_0
    return-void
.end method

.method protected a(Z)V
    .locals 3

    .line 73
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->a(Z)V

    const-string v0, "StoreSearchPickerAutoCompleteFragment"

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show loading : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 76
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;->h(Z)V

    :cond_0
    return-void
.end method

.method protected j()V
    .locals 1

    const/4 v0, 0x1

    .line 69
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;->h(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0400c5

    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 33
    new-instance v0, Lcom/samsung/android/app/music/search/SubTextEmptyViewCreator;

    .line 34
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b0221

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/search/SubTextEmptyViewCreator;-><init>(Landroid/content/Context;I)V

    .line 35
    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/SubTextEmptyViewCreator;->a()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;->b:Landroid/view/View;

    const v0, 0x7f13013e

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 37
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/search/SelectAllObservable;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;->c:Lcom/samsung/android/app/music/search/SelectAllObservable;

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;->c:Lcom/samsung/android/app/music/search/SelectAllObservable;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/search/SelectAllObservable;->a(Z)V

    .line 52
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchAutoCompleteFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerAutoCompleteFragment;->c:Lcom/samsung/android/app/music/search/SelectAllObservable;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/search/SelectAllObservable;->a(Z)V

    :cond_0
    return-void
.end method
