.class public final Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;,
        Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$Companion;


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;->a:Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 41
    new-instance v0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method private final a(ILjava/lang/String;)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    const/4 p1, 0x0

    .line 93
    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :pswitch_0
    const-string p1, "Composer"

    goto :goto_0

    :pswitch_1
    const-string p1, "Folder"

    goto :goto_0

    :pswitch_2
    const-string p1, "Genre"

    goto :goto_0

    .line 72
    :pswitch_3
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    const-wide/16 v0, -0xb

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    const-string p1, "Track"

    goto :goto_0

    :cond_0
    const-string p1, "Playlist"

    goto :goto_0

    :pswitch_4
    const-string p1, "Artist"

    goto :goto_0

    :pswitch_5
    const-string p1, "Album"

    goto :goto_0

    :pswitch_6
    const-string p1, "Magazine"

    goto :goto_0

    :pswitch_7
    const-string p1, "Album"

    goto :goto_0

    :pswitch_8
    const-string p1, "Artist"

    :goto_0
    if-eqz p1, :cond_1

    .line 96
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p2

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;->getScreenId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1201"

    .line 96
    invoke-virtual {p2, v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x10002
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x10006
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;ILjava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;->a(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;->c()Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 0

    .line 147
    new-instance p1, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;

    invoke-direct {p1}, Lcom/samsung/android/app/music/list/local/query/HeartQueryArgs;-><init>()V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;
    .locals 4

    .line 128
    new-instance v0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "category_type"

    .line 129
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "favorite_name"

    .line 130
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "data2"

    .line 131
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;->a(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;

    const-string v1, "sub_category_type"

    .line 132
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;->b(Ljava/lang/String;)Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;

    const-string v1, "album_id"

    .line 133
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "cp_attrs"

    .line 134
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;->setCpAttrsCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "category_id"

    .line 135
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 136
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_0

    const v1, 0x80002

    .line 137
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$AlbumArt;->a:Landroid/net/Uri;

    const-string v3, "MediaContents.Favorites.AlbumArt.CONTENT_URI"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;->addThumbnailUri(ILandroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 139
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;->d()Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const/16 v0, 0x48

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    const-string p1, "115"

    const-string v0, "115"

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-wide/16 p1, 0x0

    .line 114
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;->a(J)V

    const p1, 0x7f100246

    .line 116
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;->h(I)Landroid/view/View;

    .line 117
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const v4, 0x7f020220

    invoke-direct {v1, v4, v3, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    move-object p2, v3

    check-cast p2, Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    const p1, 0x7f040055

    const p2, 0x7f0b02b0

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;->b(II)V

    const/4 p1, 0x0

    .line 123
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;->c(Z)V

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;->g()I

    move-result p1

    invoke-static {p0, p1, v3, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 143
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
