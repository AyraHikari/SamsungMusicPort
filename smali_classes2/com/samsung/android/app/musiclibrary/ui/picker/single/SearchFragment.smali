.class public Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;-><init>()V

    .line 89
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->f()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1

    .line 75
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerSearchQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerSearchQueryArgs;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method protected f()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;
    .locals 3

    .line 62
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;

    const-string v1, "album_id"

    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->a:Landroid/net/Uri;

    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;->setThumbnailKey(Ljava/lang/String;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;

    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;->a(Z)Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;

    .line 65
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;->b(Z)Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter$Builder;->b()Lcom/samsung/android/app/musiclibrary/ui/list/adapter/SearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x100024

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onAttach(Landroid/app/Activity;)V

    const-string p1, "508"

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 44
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 47
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    sget p2, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_divider_inset_album:I

    .line 48
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->b(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object p1

    sget p2, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_divider_inset_winset:I

    .line 49
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->c(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object p1

    .line 50
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 53
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    sget p2, Lcom/samsung/android/app/musiclibrary/R$string;->no_results:I

    sget v0, Lcom/samsung/android/app/musiclibrary/R$color;->no_result_text_mmapp:I

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p0, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    const/4 p1, 0x0

    .line 56
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->c(Z)V

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->g()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->d(I)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 70
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/single/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
