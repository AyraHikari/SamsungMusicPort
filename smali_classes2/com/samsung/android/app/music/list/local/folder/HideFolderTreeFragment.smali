.class public final Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment$Companion;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->a:Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->c()Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 4
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

    .line 99
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 100
    iget-boolean p1, p0, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->b:Z

    if-eqz p1, :cond_3

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 102
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 103
    invoke-static {p2, v0}, Lkotlin/ranges/RangesKt;->b(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    check-cast v1, Ljava/util/Collection;

    .line 281
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 103
    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    :cond_1
    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 283
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;->g(I)Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->c(IZ)V

    goto :goto_1

    .line 107
    :cond_2
    iput-boolean p2, p0, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->b:Z

    :cond_3
    return-void
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2

    .line 95
    new-instance p1, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "bucket_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "arguments!!.getString(BUCKET_ID)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeQueryArgs;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;
    .locals 2

    .line 87
    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter$Builder;->d()Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x10007

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/HideFolderMenu;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderMenu;-><init>(Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 113
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method protected onCreateView()Ljava/lang/Integer;
    .locals 1

    const v0, 0x7f040183

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeAdapter;->b(Landroid/os/Bundle;)V

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 69
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->b:Z

    const p1, 0x7f100246

    .line 71
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->h(I)Landroid/view/View;

    .line 73
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v0, "activity!!"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/app/Activity;

    const v0, 0x7f0b034b

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 74
    sget p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->d:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->b_(I)V

    .line 75
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->g()I

    move-result p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 91
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/HideFolderTreeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity!!.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method
