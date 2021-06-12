.class public final Lcom/samsung/android/app/music/activity/ArtistDetailActivity$pagerCountCallbacks$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/activity/ArtistDetailActivity;-><init>()V
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
.field final synthetic a:Lcom/samsung/android/app/music/activity/ArtistDetailActivity;

.field private final b:I

.field private final c:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/activity/ArtistDetailActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$pagerCountCallbacks$1;->a:Lcom/samsung/android/app/music/activity/ArtistDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 84
    iput p1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$pagerCountCallbacks$1;->b:I

    const/4 p1, 0x2

    .line 85
    iput p1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$pagerCountCallbacks$1;->c:I

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

    .line 104
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$pagerCountCallbacks$1;->a:Lcom/samsung/android/app/music/activity/ArtistDetailActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 107
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 108
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 109
    iget v1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$pagerCountCallbacks$1;->c:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 110
    iget v2, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$pagerCountCallbacks$1;->b:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 115
    :goto_0
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v2, "%s (%d)"

    const/4 v3, 0x2

    .line 116
    new-array v4, v3, [Ljava/lang/Object;

    const v5, 0x7f0d0002

    .line 117
    invoke-virtual {p1, v5, v1}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    .line 115
    array-length v1, v4

    invoke-static {v4, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "java.lang.String.format(format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->a:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v2, "%s (%d)"

    .line 121
    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f0d0001

    .line 122
    invoke-virtual {p1, v4, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    .line 123
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v5

    .line 120
    array-length p1, v3

    invoke-static {v3, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "java.lang.String.format(format, *args)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iget-object p2, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$pagerCountCallbacks$1;->a:Lcom/samsung/android/app/music/activity/ArtistDetailActivity;

    invoke-static {p2}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->d(Lcom/samsung/android/app/music/activity/ArtistDetailActivity;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    check-cast v1, Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$pagerCountCallbacks$1;->a:Lcom/samsung/android/app/music/activity/ArtistDetailActivity;

    invoke-static {v2}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->a(Lcom/samsung/android/app/music/activity/ArtistDetailActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "tabIds!![0]"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a(Ljava/lang/CharSequence;I)V

    .line 126
    iget-object p2, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$pagerCountCallbacks$1;->a:Lcom/samsung/android/app/music/activity/ArtistDetailActivity;

    invoke-static {p2}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->d(Lcom/samsung/android/app/music/activity/ArtistDetailActivity;)Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;

    move-result-object p2

    if-nez p2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    check-cast p1, Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$pagerCountCallbacks$1;->a:Lcom/samsung/android/app/music/activity/ArtistDetailActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->a(Lcom/samsung/android/app/music/activity/ArtistDetailActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "tabIds!![1]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/SlidingTabLayout;->a(Ljava/lang/CharSequence;I)V

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

    .line 88
    iget-object p1, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$pagerCountCallbacks$1;->a:Lcom/samsung/android/app/music/activity/ArtistDetailActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->b(Lcom/samsung/android/app/music/activity/ArtistDetailActivity;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 89
    new-instance p1, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$AlbumArtistPagerTitleQueryArgs;

    iget-object p2, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$pagerCountCallbacks$1;->a:Lcom/samsung/android/app/music/activity/ArtistDetailActivity;

    invoke-static {p2}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->c(Lcom/samsung/android/app/music/activity/ArtistDetailActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$AlbumArtistPagerTitleQueryArgs;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    goto :goto_0

    .line 91
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistPagerTitleQueryArgs;

    iget-object p2, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$pagerCountCallbacks$1;->a:Lcom/samsung/android/app/music/activity/ArtistDetailActivity;

    invoke-static {p2}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->c(Lcom/samsung/android/app/music/activity/ArtistDetailActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$ArtistPagerTitleQueryArgs;-><init>(Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .line 93
    :goto_0
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$pagerCountCallbacks$1;->a:Lcom/samsung/android/app/music/activity/ArtistDetailActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "applicationContext"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 96
    iget-object v3, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    .line 97
    iget-object v4, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    .line 98
    iget-object v5, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    .line 99
    iget-object v6, p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p2

    .line 93
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/ui/contents/MusicCursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    check-cast p2, Landroid/support/v4/content/Loader;

    return-object p2
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 82
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/activity/ArtistDetailActivity$pagerCountCallbacks$1;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

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
