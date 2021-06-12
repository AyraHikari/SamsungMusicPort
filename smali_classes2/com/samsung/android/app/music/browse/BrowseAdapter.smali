.class public final Lcom/samsung/android/app/music/browse/BrowseAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/BrowseAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/browse/BrowseAdapter$Companion;

.field private static final e:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/music/browse/data/BrowseData;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/support/v4/app/Fragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/browse/BrowseAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->a:Lcom/samsung/android/app/music/browse/BrowseAdapter$Companion;

    .line 139
    const-class v0, Lcom/samsung/android/app/music/browse/BrowseAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->d:Landroid/support/v4/app/Fragment;

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->b:Ljava/util/ArrayList;

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;
    .locals 3

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateViewHolder viewType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    .line 58
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type !! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 39
    :pswitch_0
    sget-object p2, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder$Companion;->a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseTipCardViewHolder;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;

    goto :goto_0

    .line 41
    :pswitch_1
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;->a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseJustForYouViewHolder;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;

    goto :goto_0

    .line 43
    :pswitch_2
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;->a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseTopChartViewHolder;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;

    goto :goto_0

    .line 45
    :pswitch_3
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder;->a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseNewReleaseViewHolder;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;

    goto :goto_0

    .line 47
    :pswitch_4
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;->a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseSpotLightViewHolder;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;

    goto :goto_0

    .line 48
    :pswitch_5
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder;->a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseThemeViewHolder;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;

    goto :goto_0

    .line 50
    :pswitch_6
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;->a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseHotArtistViewHolder;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;

    goto :goto_0

    .line 52
    :pswitch_7
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;->a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->d:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/app/music/browse/BrowseFragment;

    if-eqz v0, :cond_1

    move-object v1, p2

    check-cast v1, Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/BrowseFragment;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseGenreViewHolder;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.music.browse.BrowseFragment"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 55
    :pswitch_8
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->d:Landroid/support/v4/app/Fragment;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder;->a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseYearViewHolder;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;

    goto :goto_0

    .line 57
    :pswitch_9
    sget-object p2, Lcom/samsung/android/app/music/browse/viewholder/BrowseLegalNoticeViewHolder;->a:Lcom/samsung/android/app/music/browse/viewholder/BrowseLegalNoticeViewHolder$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->d:Landroid/support/v4/app/Fragment;

    invoke-virtual {p2, v0, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseLegalNoticeViewHolder$Companion;->a(Landroid/support/v4/app/Fragment;Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/browse/viewholder/BrowseLegalNoticeViewHolder;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;

    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 62
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;->a(Landroid/view/ViewGroup;)V

    .line 63
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->c:Ljava/util/List;

    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez p2, :cond_3

    .line 65
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    return-object p2

    :pswitch_data_0
    .packed-switch -0x3f1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a()V
    .locals 2

    .line 78
    sget-object v0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->e:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;

    .line 81
    invoke-virtual {v1}, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;->u_()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V
    .locals 5

    const-string v0, "browseData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseData;->a()I

    move-result v0

    .line 111
    sget-object v1, Lcom/samsung/android/app/music/browse/BrowseAdapter;->e:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setData viewType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 114
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 115
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "it[index]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/samsung/android/app/music/browse/data/BrowseData;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/browse/data/BrowseData;->a()I

    move-result v3

    if-ne v3, v0, :cond_0

    .line 116
    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_1
    :goto_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/music/browse/BrowseAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;I)V
    .locals 3

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindViewHolder position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 70
    check-cast v0, Lcom/samsung/android/app/music/browse/data/BrowseData;

    .line 71
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/samsung/android/app/music/browse/data/BrowseData;

    .line 74
    :cond_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;->a(Lcom/samsung/android/app/music/browse/data/BrowseData;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/music/browse/data/BrowseData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "browseDataList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->e:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setData size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public final b()V
    .locals 5

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 127
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 128
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "it[i]"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/samsung/android/app/music/browse/data/BrowseData;

    const/16 v4, -0x3e8

    .line 129
    invoke-virtual {v3}, Lcom/samsung/android/app/music/browse/data/BrowseData;->a()I

    move-result v3

    if-ne v4, v3, :cond_0

    .line 130
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 131
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/browse/BrowseAdapter;->notifyItemRemoved(I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return v0

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseAdapter;->b:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 97
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "it[position]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/app/music/browse/data/BrowseData;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/data/BrowseData;->a()I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 23
    check-cast p1, Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/BrowseAdapter;->a(Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/BrowseAdapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/browse/viewholder/BrowseViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method
