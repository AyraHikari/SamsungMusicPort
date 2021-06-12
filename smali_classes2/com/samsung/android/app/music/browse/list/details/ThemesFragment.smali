.class public Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;
.super Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemeTagLayoutManager;,
        Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemesDataLoader;,
        Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter;,
        Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagItemSpacingDecoration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment<",
        "Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I
    .annotation build Landroid/support/annotation/IntRange;
        from = 0x0L
    .end annotation
.end field

.field private c:Landroid/view/View;

.field private d:Landroid/view/ViewGroup;

.field private e:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->b:I

    .line 72
    new-instance v0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$1;-><init>(Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->b:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->a:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-static {p0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fragment_tag_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->c()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected a(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader<",
            "Lcom/samsung/android/app/music/model/base/TagModel;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance p1, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemesDataLoader;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemesDataLoader;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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

    .line 197
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    if-eqz p2, :cond_0

    .line 198
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    const-string p1, "ThemesFragment"

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLoadFinished. tag index - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->b:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    instance-of p1, p1, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter;

    if-eqz p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter;

    iget p2, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->b:I

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter;->a(I)V

    :cond_0
    return-void
.end method

.method protected c()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;
    .locals 2

    .line 139
    new-instance v0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    new-instance v1, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$2;-><init>(Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;)V

    .line 140
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;->a(Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$OnTagSelectedListener;)Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;

    move-result-object v0

    const v1, 0x7f04001e

    .line 172
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagAdapter$Builder;->a(I)Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    move-result-object v0

    const-string v1, "tag_name"

    .line 173
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter$Builder;->b()Lcom/samsung/android/app/music/browse/list/BrowseCursorAdapter;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "saved_key_selected_pos"

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->b:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const p2, 0x7f040018

    const/4 p3, 0x0

    .line 94
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 55
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 185
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "saved_key_selected_pos"

    .line 186
    iget v1, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->b:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 99
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 101
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p2

    const v0, 0x7f0b00c1

    .line 102
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    const p2, 0x7f13013e

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->d:Landroid/view/ViewGroup;

    .line 106
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->d:Landroid/view/ViewGroup;

    instance-of p2, p2, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    if-eqz p2, :cond_0

    .line 107
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->d:Landroid/view/ViewGroup;

    check-cast p2, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    const/4 v1, 0x3

    .line 108
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0f003a

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 107
    invoke-interface {p2, v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;->a(ILjava/lang/Integer;)V

    :cond_0
    const-string p2, "themes"

    .line 111
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->b(Ljava/lang/String;)V

    const p2, 0x7f130372

    .line 113
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->c:Landroid/view/View;

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    const/4 p2, 0x0

    .line 115
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setGoToTopEnabled(Z)V

    .line 116
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setFastScrollEnabled(Z)V

    .line 117
    new-instance v1, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagItemSpacingDecoration;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$TagItemSpacingDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 118
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setHasFixedSize(Z)V

    .line 120
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->d()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->a(IZ)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 179
    new-instance v0, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemeTagLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/util/UiUtils;->h(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/util/UiUtils;->i(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/list/details/ThemesFragment$ThemeTagLayoutManager;-><init>(I)V

    return-object v0
.end method
