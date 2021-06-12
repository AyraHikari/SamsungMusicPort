.class public Lcom/samsung/android/app/music/search/SearchDetailFragment;
.super Lcom/samsung/android/app/music/search/SearchableFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter;,
        Lcom/samsung/android/app/music/search/SearchDetailFragment$ActionModeOptionsMenu;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/search/SearchableFragment<",
        "Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;-><init>()V

    .line 221
    new-instance v0, Lcom/samsung/android/app/music/search/SearchDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment$2;-><init>(Lcom/samsung/android/app/music/search/SearchDetailFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/music/search/SearchDetailFragment;
    .locals 3

    .line 69
    new-instance v0, Lcom/samsung/android/app/music/search/SearchDetailFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/search/SearchDetailFragment;-><init>()V

    .line 70
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "keyword"

    .line 71
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "display_type"

    .line 72
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/SearchDetailFragment;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->e(I)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/search/SearchDetailFragment;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->j(I)V

    return-void
.end method

.method private d()V
    .locals 4

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 190
    instance-of v1, v0, Landroid/support/v7/app/AppCompatActivity;

    if-eqz v1, :cond_3

    .line 191
    check-cast v0, Landroid/support/v7/app/AppCompatActivity;

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f130073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 193
    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    .line 194
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    const/4 v1, 0x1

    .line 195
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 196
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 197
    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 198
    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment;->d:Ljava/lang/String;

    const-string v2, ""

    const-string v3, "1"

    .line 200
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v1, 0x7f0b03c9

    .line 201
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v3, "2"

    .line 202
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v1, 0x7f0b0226

    .line 203
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v3, "3"

    .line 204
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0b0227

    .line 205
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 207
    :cond_2
    :goto_0
    invoke-virtual {v0, v2}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private e(I)V
    .locals 10

    .line 276
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->f()I

    move-result v0

    .line 278
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->e(I)I

    move-result v1

    .line 280
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;

    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 281
    new-array v3, v0, [J

    .line 283
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;->e()I

    move-result v4

    .line 284
    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v5, 0x0

    :goto_0
    add-int/lit8 v6, v5, 0x1

    .line 287
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    aput-wide v7, v3, v5

    .line 288
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    if-lt v6, v0, :cond_0

    goto :goto_1

    :cond_0
    move v5, v6

    goto :goto_0

    :cond_1
    :goto_1
    sub-int/2addr p1, v1

    .line 291
    new-instance v0, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;-><init>()V

    .line 292
    iput-object v3, v0, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;->a:[J

    .line 293
    iput p1, v0, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;->b:I

    .line 295
    iget-object v4, v0, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;->a:[J

    iget v5, v0, Lcom/samsung/android/app/music/util/MediaDbUtils$PlayerListInfo;->b:I

    const/16 v6, -0x64

    const/16 v7, -0x64

    .line 296
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->g()I

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->h()Ljava/lang/String;

    move-result-object v9

    .line 295
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/app/music/list/common/PlayUtils;->a([JIIIILjava/lang/String;)I

    return-void
.end method

.method private j(I)V
    .locals 4

    .line 300
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/search/SearchableAdapter;

    .line 302
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    .line 303
    invoke-virtual {v1, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v2

    .line 304
    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->b(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v3

    .line 305
    invoke-virtual {v1, v0, p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->a(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p1

    .line 303
    invoke-static {v0, v2, v3, p1}, Lcom/samsung/android/app/music/recommend/SeedTracker;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->c()Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;

    move-result-object v0

    return-object v0
.end method

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

    .line 79
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchableFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 81
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->a(Landroid/database/Cursor;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2

    .line 148
    new-instance p1, Lcom/samsung/android/app/music/search/SearchQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->v_()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment;->d:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/music/search/SearchQueryArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;
    .locals 2

    .line 162
    new-instance v0, Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/search/SearchDetailFragment$SearchDetailAdapter$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;

    const-string v1, "album_id"

    .line 163
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter$Builder;->b()Lcom/samsung/android/app/music/list/local/SearchFragment$SelectableSearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x100071

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 88
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "keyword"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment;->a:Ljava/lang/String;

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "display_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment;->d:Ljava/lang/String;

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 153
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object p1

    .line 154
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment;->c:Landroid/content/Context;

    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v6, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p2

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const-string v0, "1"

    .line 140
    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    const v1, 0x7f140028

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;I)V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 143
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchableFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const p3, 0x7f0401e4

    const/4 v0, 0x0

    .line 97
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 61
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 103
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchableFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 104
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 105
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->d()V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    const-string p2, "1"

    .line 107
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 108
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b034d

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    const/4 p2, 0x3

    .line 109
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->b_(I)V

    .line 110
    new-instance p2, Lcom/samsung/android/app/music/search/SearchDetailFragment$ActionModeOptionsMenu;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/app/music/search/SearchDetailFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/search/SearchDetailFragment;Lcom/samsung/android/app/music/search/SearchDetailFragment$1;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 112
    new-instance p2, Lcom/samsung/android/app/music/search/SearchCheckableListImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/search/SearchableAdapter;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/app/music/search/SearchCheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/search/SearchableAdapter;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 113
    new-instance p2, Lcom/samsung/android/app/music/list/ListDeleteableImpl;

    const v0, 0x7f0d0028

    const/4 v1, 0x1

    invoke-direct {p2, p0, v0, v1, v1}, Lcom/samsung/android/app/music/list/ListDeleteableImpl;-><init>(Landroid/support/v4/app/Fragment;IIZ)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 115
    new-instance p2, Lcom/samsung/android/app/music/list/ListPlayableImpl;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/ListPlayableImpl;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Playable;)V

    .line 116
    new-instance p2, Lcom/samsung/android/app/music/list/ListShareableImpl;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 117
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    invoke-direct {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    .line 119
    new-instance v0, Lcom/samsung/android/app/music/search/SearchDetailFragment$1;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/app/music/search/SearchDetailFragment$1;-><init>(Lcom/samsung/android/app/music/search/SearchDetailFragment;Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;)V

    .line 128
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 130
    :cond_0
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v1, 0x7f020220

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(I)V

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->H()V

    const/4 p1, 0x0

    .line 134
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->c(Z)V

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->g()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/SearchDetailFragment;->d(I)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 169
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public v_()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchDetailFragment;->a:Ljava/lang/String;

    return-object v0
.end method
