.class public final Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;,
        Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<",
        "Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    .line 27
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$Builder;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez p3, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 41
    :pswitch_0
    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0400fb

    .line 42
    invoke-virtual {p3, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    .line 39
    :pswitch_1
    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0400fc

    .line 40
    invoke-virtual {p3, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    goto :goto_0

    .line 43
    :cond_0
    check-cast v0, Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0400d8

    .line 44
    invoke-virtual {p3, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 47
    :cond_1
    :goto_0
    new-instance p1, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;

    if-nez p3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-direct {p1, p0, p3, p2}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;Landroid/view/View;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;I)V
    .locals 11

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    invoke-super {p0, v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    .line 52
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 53
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->c()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 80
    :pswitch_0
    iget-object p2, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0b0100

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->f()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 81
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->b()Landroid/widget/TextView;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->b()Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object p2, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->context:Landroid/content/Context;

    const v1, 0x7f0b03f4

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 55
    :pswitch_1
    iget-object v1, p1, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->text2Index:I

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :cond_0
    iget-object v1, p1, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 57
    iget-object v2, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->context:Landroid/content/Context;

    .line 58
    iget-object v4, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->a:Ljava/lang/String;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-static {v2, v4}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->getHeaderViewCount()I

    move-result v1

    sub-int/2addr p2, v1

    if-nez p2, :cond_2

    .line 62
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->a()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->a()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :cond_3
    iget-object v4, p1, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-string p2, "holder.itemView"

    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    iget-object p2, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f10034d

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xd

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->b(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 68
    :cond_4
    :goto_0
    iget p2, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->thumbnailIdIndex:I

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 69
    iget-boolean p2, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->isRemoteTrack:Z

    if-eqz p2, :cond_5

    .line 70
    sget-object p2, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a:Landroid/net/Uri;

    goto :goto_1

    .line 72
    :cond_5
    sget-object p2, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->b:Landroid/net/Uri;

    :goto_1
    const v2, 0x7f100086

    .line 74
    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v2

    .line 75
    invoke-virtual {v2, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p2

    .line 76
    iget-object p1, p1, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    sget v0, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->c:I

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    goto :goto_2

    :cond_6
    const-string p2, ""

    .line 87
    iget v1, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->text3Index:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_7

    .line 89
    div-int/lit16 v0, v0, 0x3e8

    .line 90
    iget-object p2, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->context:Landroid/content/Context;

    int-to-long v1, v0

    invoke-static {p2, v1, v2}, Lcom/samsung/android/app/music/util/UiUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p2

    const-string v1, "UiUtils.makeTimeString(context, duration.toLong())"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    :cond_7
    iget-object v1, p1, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    if-nez v1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_8
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object p1, p1, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;->textView3:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->context:Landroid/content/Context;

    invoke-static {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/util/TalkBackUtils;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch -0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->a(Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 102
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x64

    .line 104
    :try_start_0
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, -0x270f

    if-eq v0, v1, :cond_2

    const/16 v1, -0x64

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/16 p1, -0x3e8

    return p1

    :cond_2
    const/16 p1, -0x3e9

    return p1

    .line 110
    :catch_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemViewType(I)I

    move-result p1

    return p1

    .line 114
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->a(Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .line 22
    check-cast p1, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->a(Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter;->a(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/common/adapter/AlbumDetailAdapter$ViewHolder;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    return-object p1
.end method
