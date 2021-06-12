.class public final Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$pagerCountCallbacks$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$pagerCountCallbacks$1;->a:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 87
    iput p1, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$pagerCountCallbacks$1;->b:I

    const/4 p1, 0x2

    .line 88
    iput p1, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$pagerCountCallbacks$1;->c:I

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 6
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

    const-string v0, "loader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    .line 110
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 111
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 112
    iget v0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$pagerCountCallbacks$1;->c:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 113
    iget v1, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$pagerCountCallbacks$1;->b:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 118
    :goto_0
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v1, "%s (%d)"

    const/4 v2, 0x2

    .line 119
    new-array v3, v2, [Ljava/lang/Object;

    .line 120
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$pagerCountCallbacks$1;->a:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0002

    invoke-virtual {v4, v5, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v3, v4

    .line 118
    array-length v0, v3

    invoke-static {v3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v1, "%s (%d)"

    .line 124
    new-array v2, v2, [Ljava/lang/Object;

    .line 125
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$pagerCountCallbacks$1;->a:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0d0001

    invoke-virtual {v3, v5, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    .line 126
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, v4

    .line 123
    array-length p2, v2

    invoke-static {v2, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$pagerCountCallbacks$1;->a:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->c(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)Landroid/support/design/widget/TabLayout;

    move-result-object v1

    .line 129
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$pagerCountCallbacks$1;->a:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->a(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "tabIds[0]"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$pagerCountCallbacks$1;->a:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->a(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "tabIds[1]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    :cond_2
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

    .line 91
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$pagerCountCallbacks$1;->a:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->d(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 92
    new-instance p1, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$AlbumArtistPagerTitleQueryArgs;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$pagerCountCallbacks$1;->a:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->e(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$AlbumArtistPagerTitleQueryArgs;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    goto :goto_0

    .line 94
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$ArtistPagerTitleQueryArgs;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$pagerCountCallbacks$1;->a:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    invoke-static {p2}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;->e(Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$ArtistPagerTitleQueryArgs;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .line 96
    :goto_0
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    .line 97
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$pagerCountCallbacks$1;->a:Lcom/samsung/android/app/music/list/local/ArtistDetailFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    .line 98
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 99
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 100
    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 101
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 102
    iget-object v6, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p2

    .line 96
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    check-cast p2, Landroid/support/v4/content/Loader;

    return-object p2
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 85
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/ArtistDetailFragment$pagerCountCallbacks$1;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "loader"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
