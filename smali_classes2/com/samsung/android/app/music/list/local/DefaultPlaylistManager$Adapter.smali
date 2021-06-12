.class final Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;,
        Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;"
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$Companion;


# instance fields
.field private final b:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;

.field private c:Landroid/database/Cursor;

.field private d:Z

.field private final e:Landroid/support/v4/app/Fragment;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->a:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;Z)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->e:Landroid/support/v4/app/Fragment;

    iput-boolean p2, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->f:Z

    .line 121
    new-instance p1, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->e:Landroid/support/v4/app/Fragment;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->b:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;

    const/4 p1, 0x1

    .line 124
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->d:Z

    .line 127
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method private final a(I)Landroid/database/Cursor;
    .locals 3

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->c:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 256
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->c:Landroid/database/Cursor;

    move-object v1, p1

    :cond_0
    return-object v1
.end method

.method private final a(J)V
    .locals 8

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->e:Landroid/support/v4/app/Fragment;

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/util/ListUtils;->b(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fragment.getString(ListU\u2026getListItemTextResId(id))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->e:Landroid/support/v4/app/Fragment;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 235
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "fragment.parentFragment!!"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    sget-object v1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->b:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$Companion;

    invoke-virtual {v1, p1, p2, v0}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$Companion;->a(JLjava/lang/String;)Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/support/v4/app/Fragment;

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 234
    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentManagerExtensionKt;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    const-wide/16 v0, -0xe

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    const-string p1, "1041"

    :goto_0
    move-object v2, p1

    goto :goto_1

    :cond_1
    const-wide/16 v0, -0xc

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    const-string p1, "1042"

    goto :goto_0

    :cond_2
    const-wide/16 v0, -0xd

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    const-string p1, "1043"

    goto :goto_0

    :cond_3
    const-wide/16 v0, -0xb

    cmp-long p1, p1, v0

    if-nez p1, :cond_4

    const-string p1, "1044"

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    if-eqz v2, :cond_5

    .line 247
    sget-object v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;->a:Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;

    const-string v1, "103"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;->a(Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;J)V
    .locals 0

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->a(J)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;
    .locals 4

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "view"

    .line 135
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->b:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->a(I)V

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f130139

    const/4 v2, 0x0

    const v3, 0x7f040058

    packed-switch p2, :pswitch_data_0

    .line 159
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid viewType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 151
    :pswitch_0
    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 v0, -0x1

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 153
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById<View>(R.id.thumbnail_stroke)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;->a:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;->b()I

    move-result v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->a(Landroid/view/View;I)V

    const p2, 0x7f1301fe

    .line 154
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 157
    new-instance p2, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;-><init>(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;Landroid/view/View;)V

    goto :goto_0

    .line 143
    :pswitch_1
    invoke-virtual {v0, v3, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 144
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "findViewById<View>(R.id.thumbnail_stroke)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;->a:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;->b()I

    move-result v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->a(Landroid/view/View;I)V

    .line 147
    new-instance p2, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;-><init>(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;Landroid/view/View;)V

    :goto_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->c:Landroid/database/Cursor;

    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;I)V
    .locals 9

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManagerKt;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->e:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "view"

    .line 166
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->b:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfoManager;->a(I)V

    .line 169
    :cond_0
    iget-object v0, p1, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f130139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "holder.itemView.findView\u2026w>(R.id.thumbnail_stroke)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    sget-object v1, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;->a:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$LayoutInfo;->b()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->a(Landroid/view/View;I)V

    .line 173
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->a(I)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 174
    iget-object v1, p1, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 175
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->getItemId(I)J

    move-result-wide v2

    const-string p2, "album_id"

    .line 420
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-string p2, "cp_attrs"

    .line 421
    invoke-interface {v0, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    const-string v6, "number_of_tracks"

    .line 422
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 180
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;->c()Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/util/ListUtils;->b(J)I

    move-result v2

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    .line 181
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;->d()Landroid/widget/TextView;

    move-result-object v2

    if-lez v0, :cond_2

    const v3, 0x7f0d0004

    const/4 v6, 0x1

    .line 182
    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v1, v3, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    const v0, 0x7f0b02c4

    .line 184
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 181
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f100086

    .line 187
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v0

    .line 188
    invoke-static {p2}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {v0, p2, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p2

    .line 189
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;->b()Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->c:I

    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    .line 192
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;->a()Landroid/view/View;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;->c()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;->d()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;->a()Landroid/view/View;

    move-result-object p1

    iget-boolean p2, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->d:Z

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->f:Z

    return-void
.end method

.method public getItemCount()I
    .locals 3

    .line 199
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 203
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    move v1, v0

    :cond_1
    :goto_0
    return v1
.end method

.method public getItemId(I)J
    .locals 2

    .line 209
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->a(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "_id"

    .line 423
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 213
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->f:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 117
    check-cast p1, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->a(Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter$DefaultPlaylistViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public setViewEnabled(Z)V
    .locals 1

    .line 221
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->d:Z

    if-eq v0, p1, :cond_0

    .line 222
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->d:Z

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager$Adapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
