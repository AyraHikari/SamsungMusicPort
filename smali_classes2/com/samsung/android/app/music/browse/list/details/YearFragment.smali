.class public Lcom/samsung/android/app/music/browse/list/details/YearFragment;
.super Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/YearBaseModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->a:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->b:Ljava/util/List;

    return-void
.end method

.method public static a(Landroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/details/YearFragment;
    .locals 1

    .line 43
    new-instance v0, Lcom/samsung/android/app/music/browse/list/details/YearFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/details/YearFragment;-><init>()V

    .line 44
    invoke-virtual {v0, p0}, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private static a(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/model/base/YearBaseModel;",
            ">;"
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    .line 154
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "source_id"

    .line 156
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    .line 157
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 158
    new-instance v3, Lcom/samsung/android/app/music/model/base/YearBaseModel;

    invoke-direct {v3, v1, v2}, Lcom/samsung/android/app/music/model/base/YearBaseModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/details/YearFragment;)Ljava/util/List;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/details/YearFragment;)Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->a:Ljava/lang/String;

    return-object p0
.end method

.method private e()I
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->b:Ljava/util/List;

    new-instance v2, Lcom/samsung/android/app/music/browse/list/details/YearFragment$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/browse/list/details/YearFragment$2;-><init>(Lcom/samsung/android/app/music/browse/list/details/YearFragment;)V

    .line 168
    invoke-static {v0, v2}, Lcom/samsung/android/app/music/util/CollectionsUtils;->a(Ljava/util/Collection;Lcom/samsung/android/app/music/util/CollectionsUtils$Condition;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method


# virtual methods
.method protected a(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader<",
            "*>;"
        }
    .end annotation

    .line 65
    new-instance p1, Lcom/samsung/android/app/music/browse/list/data/YearDataLoader;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/browse/list/data/YearDataLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method protected a()Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;
    .locals 1

    .line 70
    new-instance v0, Lcom/samsung/android/app/music/browse/list/details/YearFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/details/YearFragment$1;-><init>(Lcom/samsung/android/app/music/browse/list/details/YearFragment;)V

    return-object v0
.end method

.method protected a(I)V
    .locals 5

    const-string v0, "YearFragment"

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTabSelected. pos - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", name - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->b:Ljava/util/List;

    .line 92
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/model/base/YearBaseModel;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/model/base/YearBaseModel;->getYearName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/model/base/YearBaseModel;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/model/base/YearBaseModel;->getYearId()Ljava/lang/String;

    move-result-object p1

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "extra_id"

    .line 95
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    const/16 v1, 0x33

    .line 99
    invoke-static {v1, v0}, Lcom/samsung/android/app/music/browse/list/details/BrowseFragmentFactory;->a(ILandroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->a:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 102
    invoke-static {v0, v2, v1, v3}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V

    .line 106
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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

    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->b:Ljava/util/List;

    invoke-static {p2}, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->e()I

    move-result v0

    .line 137
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    const-string p1, "YearFragment"

    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadFinished. selected year - "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newPos - "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz v0, :cond_0

    .line 141
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->d()Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->a(I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "extra_id"

    .line 56
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "key_saved_selected_year_id"

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->a:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 127
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_saved_selected_year_id"

    .line 128
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 111
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 113
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    const v0, 0x7f0b00c6

    .line 115
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    :cond_0
    const-string p1, "decades"

    .line 119
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->a(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->a(Z)V

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/YearFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    return-void
.end method
