.class public final Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddToShortcutAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;)V
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;)V

    .line 161
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->a:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter$Builder;->b()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->b:Ljava/lang/String;

    const/4 p1, -0x1

    .line 163
    iput p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->c:I

    .line 164
    iput p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->d:I

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/String;
    .locals 5

    .line 211
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 212
    iget v1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->text2Index:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    .line 213
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v4, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->text2Index:I

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    const v4, 0x10004

    if-eq v0, v4, :cond_4

    const v4, 0x10007

    if-eq v0, v4, :cond_2

    .line 231
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->context:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 224
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->c:I

    if-eq v0, v3, :cond_6

    .line 226
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->context:Landroid/content/Context;

    .line 227
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    iget v2, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->c:I

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 225
    :cond_3
    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 218
    :cond_4
    iget v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->keywordIndex:I

    if-eq v0, v3, :cond_6

    .line 219
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_5
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 220
    invoke-static {v2, v3}, Lcom/samsung/android/app/music/util/ListUtils;->a(J)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 221
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/util/ListUtils;->b(J)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_6
    :goto_1
    return-object v1
.end method

.method public final b(I)I
    .locals 3

    .line 236
    iget v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 237
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    move v2, p1

    :cond_2
    return v2
.end method

.method protected initColIndex(Landroid/database/Cursor;)V
    .locals 1

    const-string v0, "newCursor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->initColIndex(Landroid/database/Cursor;)V

    .line 168
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->c:I

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->d:I

    :cond_1
    return-void
.end method

.method protected onBindViewHolderTextView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget v0, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->text2Index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->textView1:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->a(I)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onBindViewHolderThumbnailView(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 5

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->getCursorOrThrow(I)Landroid/database/Cursor;

    move-result-object v0

    .line 190
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_7

    .line 191
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->getText1(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/16 v1, 0x54

    if-nez p2, :cond_1

    goto :goto_1

    .line 193
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_2

    goto :goto_3

    :cond_2
    :goto_1
    const/16 v1, 0x55

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    const/16 v1, 0x66

    if-nez p2, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v1, :cond_6

    :goto_3
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Favorites$AlbumArt;->a:Landroid/net/Uri;

    goto :goto_5

    .line 194
    :cond_6
    :goto_4
    iget p2, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->cpAttrsColIndex:I

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object p2

    goto :goto_5

    .line 197
    :cond_7
    iget p2, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->cpAttrsColIndex:I

    invoke-interface {v0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->a(I)Landroid/net/Uri;

    move-result-object p2

    .line 200
    :goto_5
    iget v1, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->thumbnailIdIndex:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 201
    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerImageViewPublisher;

    .line 202
    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;->thumbnailView:Landroid/widget/ImageView;

    .line 203
    sget v3, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MDefaultArtworkUtils;->a:I

    const/4 v4, 0x0

    .line 201
    invoke-direct {v2, p1, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerImageViewPublisher;-><init>(Landroid/widget/ImageView;IZ)V

    const p1, 0x7f100086

    .line 206
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object p1

    invoke-virtual {p1, p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Landroid/net/Uri;J)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p1

    .line 207
    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    move-object p3, p0

    check-cast p3, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;

    .line 178
    iget-object p3, p0, Lcom/samsung/android/app/music/list/local/AddToShortcutHeartFragment$AddToShortcutAdapter;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0400d6

    const/4 v1, 0x0

    .line 179
    invoke-virtual {p3, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 181
    :goto_0
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    const-string v1, "rootView"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0, p3, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    return-object p1
.end method
